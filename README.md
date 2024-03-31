# 制作动机
Droplet AI ChatBot
在当今信息爆炸的时代，获取知识变得既简单又复杂。受到ChatGPT创新技术的启发，我决定创作了一款名为“Droplet AI Chatbot”的AI聊天机器人。我的目标是通过这个项目，让我们的学习和生活变得更加轻松有趣。
“Droplet AI Chatbot”虽然没有ChatGPT那样强大的处理能力，所以我给它起了个“小水滴（Droplet）”的名字。但它依然是一个功能丰富的知识小助手。它不仅能够帮助我们撰写文章，进行文字翻译，还能陪我们聊天，讲笑话，陪我们学英语，甚至还能帮助我们编写简单的代码。遇到任何问题，你都可以问它！
我将这个AI聊天机器人部署在了阿里云上，这样任何人都可以随时随地访问它，获取所需的帮助和信息。通过这个项目，我希望能够激发同龄人对科技和编程的兴趣，同时也为我自己和我的同学学习和日常生活提供一个新的、互动的辅助工具。这不仅是对我个人技能的挑战，也是我对未来科技世界的一份小小贡献。

# 使用（for用户）
* 第一步：打开页面：http://120.26.129.9:3000/#/chat
<img width="1281" alt="image" src="https://github.com/novagao/droplet/assets/165377322/1d525a32-4169-46d7-8065-667878bf8530">
* 第二步：更改配置（模型）
<img width="1250" alt="image" src="https://github.com/novagao/droplet/assets/165377322/c93eafdf-b076-4318-a816-4c36f9132aac">
* 发起聊天
<img width="1233" alt="image" src="https://github.com/novagao/droplet/assets/165377322/0d9d6e0c-fd39-47d9-8776-66d498b0b629">
* 开始聊天
<img width="1215" alt="image" src="https://github.com/novagao/droplet/assets/165377322/d8ebc2d2-47da-42ed-af75-c5d8882eb170">

# 开发（for开发者）
* 第一步：下载项目仓库：`git clone https://github.com/novagao/droplet.git`
* 第二步：构建镜像：`bash step1_build_image.sh`
* 第三步：构建容器：`bash step2_make_container.sh`
* 第四步：等待一段时间后（模型下载及部署），在浏览器打开"http://localhost:3000"，即可看到AI助手，使用方法详见上文。

