#!/bin/bash

# Start Xpra server with HTML5 support and launch DeepLabCut GUI
source /opt/conda/etc/profile.d/conda.sh
conda activate dlc

# Run PyTorch script to display GPU information
python3 - << EOF
import torch

if torch.cuda.is_available():
    gpu_name = torch.cuda.get_device_name(0)
    gpu_memory_total = torch.cuda.get_device_properties(0).total_memory / 1024**2  # MiB
    gpu_memory_allocated = torch.cuda.memory_allocated(0) / 1024**2  # MiB
    gpu_memory_cached = torch.cuda.memory_reserved(0) / 1024**2  # MiB
    gpu_memory_free = gpu_memory_total - gpu_memory_allocated
    print(f"GPU Model: {gpu_name}")
    print(f"Total Memory: {gpu_memory_total:.2f} MiB")
    print(f"Allocated Memory: {gpu_memory_allocated:.2f} MiB")
    print(f"Free Memory: {gpu_memory_free:.2f} MiB")
else:
    print("No GPU detected.")
EOF

sleep 10

xpra start :100 \
    --bind-tcp=0.0.0.0:10000 \
    --html=on \
    --daemon=no \
    --exit-with-children \
    --start-child="python3 -m deeplabcut"

# Keep the script running
tail -f /dev/null
