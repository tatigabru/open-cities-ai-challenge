python -m src.predict_tif \
    --configs $(ls configs/stage3*) \
    --src_path ../data/processed/test/001.tif \    
    --dst_dir data/predictions/one_file/ \
    --batch_size 4 \
    --tta False\
    --gpu '0'