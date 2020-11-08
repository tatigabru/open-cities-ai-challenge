DATA_DIR=../../data/openai/interim
PROCESSED_DATA_DIR=../../data/openai/processed
MOSAIC = data/processed

mkdir -p $PROCESSED_DATA_DIR

# stitch test small images into big tif files
echo "Stitching test files..."
python -m src.data.stitch_test \
    --df_path=$MOSAIC/test_mosaic.csv \
    --path_pattern=$DATA_DIR/test/*/*.tif \
    --dst_dir=$PROCESSED_DATA_DIR/test