
# Download files and unzip in your favorite directory.
scoring_data=MY_PATH/version_2022
tractogram=MY_TRACTOGRAM
ref=$scoring_data/t1.nii.gz
out_dir=MY_OUTPUT_RESULTS_PATH

# ------------- SEGMENTATION ------------
config_file_segmentation=$scoring_data/config_file_segmentation.json
scil_score_tractogram.py -f -v $tractogram $config_file_segmentation $out_dir \
    --gt_dir $scoring_data --reference $ref --json_prefix tmp_ --no_empty

# ------------- MERGING SUB-BUNDLES ------------

# Merging CC sub-bundles (if they exist)
CC_files=$(ls $out_dir/segmented_VB/CC* 2> /dev/null)
if [ "$CC_files" != '' ]
then
  scil_streamlines_math.py -f lazy_concatenate $CC_files \
      $out_dir/segmented_VB/CC_VS.trk;
fi

# Merging ICP left sub-bundles  (if they exist)
ICP_left_files=$(ls $out_dir/segmented_VB/ICP_left* 2> /dev/null)
if [ "$ICP_left_files" != '' ]
then
    scil_streamlines_math.py -f lazy_concatenate $ICP_left_files \
        $out_dir/segmented_VB/ICP_left_VS.trk;
fi

# Merging ICP right sub-bundles (if they exist)
ICP_right_files=$(ls $out_dir/segmented_VB/ICP_right* 2> /dev/null)
if [ "$ICP_right_files" != '' ]
then
    scil_streamlines_math.py -f lazy_concatenate $ICP_right_files  \
        $out_dir/segmented_VB/ICP_right_VS.trk;
fi

# ------------- FINAL SCORING ------------
config_file_tractometry=$scoring_data/config_file_tractometry.json
scil_score_bundles.py -f -v $config_file_tractometry $out_dir \
      --gt_dir $scoring_data --reference $ref --bbox_check False;

