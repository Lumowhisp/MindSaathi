"""
Script to pair NHATS Clock Drawing Images (.tif) with official clinical metadata (.dta).
Generates standardized, ML-ready labeled CSV files for each round and a master longitudinal dataset.
"""

import os
import pandas as pd

BASE_DIR = os.path.dirname(os.path.abspath(__file__))

ROUNDS = [
    ('Round1', 1, 'NHATS_Round_1_SP_File.dta'),
    ('Round2', 2, 'NHATS_Round_2_SP_File_v2.dta'),
    ('Round3', 3, 'NHATS_Round_3_SP_File.dta'),
    ('Round4', 4, 'NHATS_Round_4_SP_File.dta'),
]

all_round_dfs = []

for r_name, r_num, filename in ROUNDS:
    r_dir = os.path.join(BASE_DIR, r_name)
    img_dir = os.path.join(r_dir, 'ClockDrawings')
    stata_dir = os.path.join(r_dir, 'Metadata_STATA')
    dta_path = os.path.join(stata_dir, filename)
    
    if not os.path.exists(dta_path) or not os.path.exists(img_dir):
        print(f"Skipping {r_name}: files not found.")
        continue

    print(f"\nProcessing {r_name} from {filename}...")
    
    # Identify variables for this round
    clk_var = f'cg{r_num}dclkdraw'
    clk_clarity_var = f'cg{r_num}dclkimgcl'
    dementia_var = f'hc{r_num}disescn9'
    age_var = f'r{r_num}d2intvrage'
    word_imm_var = f'cg{r_num}dwrdimmrc'
    word_dly_var = f'cg{r_num}dwrddlyrc'
    
    # Gender variable varies slightly
    gender_var = 'r1dgender' if r_num in [1, 3, 4] else 'hh2spgender'
    
    req_cols = ['spid', clk_var, clk_clarity_var, dementia_var, age_var, gender_var, word_imm_var, word_dly_var]
    
    # Read Stata file
    df = pd.read_stata(dta_path, columns=req_cols)
    
    # Ensure SPID is integer
    df['spid'] = df['spid'].astype(int)
    
    # Check image existence
    disk_images = set(os.listdir(img_dir))
    df['image_filename'] = df['spid'].astype(str) + '.tif'
    df['image_path'] = df['image_filename'].apply(lambda fn: os.path.join(img_dir, fn))
    df['has_image'] = df['image_filename'].isin(disk_images)
    
    # Standardize column names
    standard_df = pd.DataFrame({
        'round': r_num,
        'spid': df['spid'],
        'image_filename': df['image_filename'],
        'image_path': df['image_path'],
        'has_image': df['has_image'],
        'clock_score_raw': df[clk_var],
        'clock_clarity': df[clk_clarity_var],
        'dementia_dx': df[dementia_var],
        'age_bracket': df[age_var],
        'gender': df[gender_var],
        'immediate_word_recall': df[word_imm_var],
        'delayed_word_recall': df[word_dly_var],
    })
    
    # Keep only rows where image is physically present on disk
    labeled_with_img = standard_df[standard_df['has_image']].copy()
    
    out_csv = os.path.join(r_dir, f'labeled_clock_drawings_{r_name.lower()}.csv')
    labeled_with_img.to_csv(out_csv, index=False)
    print(f"✅ {r_name}: {len(labeled_with_img)} labeled images saved to {os.path.basename(out_csv)}")
    
    all_round_dfs.append(labeled_with_img)

# Combine into master longitudinal dataset
if all_round_dfs:
    master_df = pd.concat(all_round_dfs, ignore_index=True)
    master_csv = os.path.join(BASE_DIR, 'master_longitudinal_clock_dataset.csv')
    master_df.to_csv(master_csv, index=False)
    print(f"\n🎉 Master Longitudinal Dataset created: {len(master_df)} total labeled records across Rounds 1-4!")
    print(f"Saved to: {master_csv}")
