#!/bin/bash

if [ -d kernel/xiaomi/sm8350 ]; then
    if [ -d kernel/xiaomi/sm8350/KernelSU-Next ]; then
        if [ ! -d kernel/xiaomi/sm8350/KernelSU-Next/kernel ]; then
            cd kernel/xiaomi/sm8350
            git submodule init
            git submodule update --recursive
            rm -rf KernelSU-Next/userspace
            cd ../../..
        fi
    fi
fi