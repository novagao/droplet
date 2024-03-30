#!/bin/bash
#拉取ollama项目
git clone git@github.com:ollama/ollama.git ollama
cd ollama
git submodule init
git submodule update llm/llama.cpp

#安装python依赖
python3 -m venv llm/llama.cpp/.venv
source llm/llama.cpp/.venv/bin/activate
pip install -r llm/llama.cpp/requirements.txt

#编译量化工具
make -C llm/llama.cpp quantize

#拉取模型（以gemma为例）
git lfs install
git clone https://huggingface.co/google/gemma-2b-it model

#模型量化&转成ollama格式
python llm/llama.cpp/convert.py ./model --outtype f16 --outfile converted.bin
llm/llama.cpp/quantize converted.bin quantized.bin q4_0

#vim修改文件内容如下：
#FROM quantized.bin
#TEMPLATE "[INST] {{ .Prompt }} [/INST]"
touch Modelfile

ollama create gemma:2b -f Modelfile




