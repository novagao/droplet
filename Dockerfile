FROM ubuntu:latest

SHELL ["/bin/bash", "-c"]
WORKDIR /root/.ollama
WORKDIR /root/droplet

# 安装依赖
RUN apt-get update && apt-get install -y vim curl git

# 安装ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# 使用NodeSource的脚本安装Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs

# 安装yarn
RUN npm install --global yarn

# 从我的个人git空间克隆前端仓库
RUN git clone https://github.com/novagao/ChatGPT-Next-Web.git

WORKDIR /root/droplet/ChatGPT-Next-Web
CMD [ "/bin/bash", "/root/droplet/ChatGPT-Next-Web/run.sh" ]
