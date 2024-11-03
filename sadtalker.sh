#!/bin/bash
source /Users/frank/miniforge3/bin/activate sadtalker
cd /Users/frank/forbuild/SadTalker

# 判断是否有参数
if [ $# -eq 0 ]; then
    echo "Usage: $0 <audio_file> <image_file> <result_file>"
    exit 1
fi

# 判断参数个数
if [ $# -ne 3 ]; then
    echo "Usage: $0 <audio_file> <image_file> <result_file>"
    exit 1
fi

export AUDUIO_FILE=$1
export IMAGE_FILE=$2
export RESULT_FILE=$3
export KMP_DUPLICATE_LIB_OK=TRUE
export PYTORCH_ENABLE_MPS_FALLBACK=1

# export AUDUIO_FILE=/Users/frank/forbuild/SadTalker/examples/driven_audio/chinese_news.wav
# export IMAGE_FILE=/Users/frank/forbuild/SadTalker/examples/source_image/art_0.png
# export RESULT_FILE=/Users/frank/forbuild/SadTalker/examples/test.mp4

python inference.py --driven_audio $AUDUIO_FILE \
                    --source_image $IMAGE_FILE \
                    --result_dir $RESULT_FILE \
                    --still \
                    --preprocess full \
                    --enhancer gfpgan 