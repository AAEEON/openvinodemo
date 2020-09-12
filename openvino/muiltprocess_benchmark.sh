#!/bin/bash

date
for i in `seq 1 5`
do
{ 
python3 /opt/intel/openvino/deployment_tools/tools/benchmark_tool/benchmark_app.py -m /home/ubuntu/intel/human-pose-estimation-0001/FP32/human-pose-estimation-0001.xml
} &
done
wait
date

