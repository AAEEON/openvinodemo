#!/bin/bash

/opt/intel/openvino/bin/setupvars.sh && \
	        python3 /opt/intel/openvino/deployment_tools/tools/model_downloader/downloader.py \
		        --name mobilenet-v1-1.0-224

/opt/intel/openvino/bin/setupvars.sh &&python3 /opt/intel/openvino/deployment_tools/tools/model_downloader/converter.py --
name mobilenet-v1-1.0-224

/opt/intel/openvino/bin/setupvars.sh &&python3 /opt/intel/openvino/deployment_tools/tools/benchmark_tool/benchmark_app.py
-m /content/public/mobilenet-v1-1.0-224/FP32/mobilenet-v1-1.0-224.xml
