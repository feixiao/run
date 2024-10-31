#!/bin/bash
source /Users/frank/miniforge3/bin/activate torch-gpuprivate

export COMFYUI_HOME=/Users/frank/forbuild/ComfyUI-0.2.4
cd $COMFYUI_HOME
nohup python main.py > /tmp/comfyui.log 2>&1 &