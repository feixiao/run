#!/bin/bash
source /Users/frank/miniforge3/bin/activate sadtalker
cd /Users/frank/forbuild/SadTalker


export AUDUIO_FILE=/Users/frank/forbuild/SadTalker/examples/driven_audio/chinese_news.wav
export IMAGE_FILE=/Users/frank/forbuild/SadTalker/examples/source_image/art_0.png
export RESULT_FILE=/Users/frank/forbuild/SadTalker/examples/test.mp4

python inference.py --driven_audio $AUDUIO_FILE \
                    --source_image $IMAGE_FILE \
                    --result_dir $RESULT_FILE \
                    --still \
                    --preprocess full \
                    --enhancer gfpgan 