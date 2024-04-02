# 使用官方Python运行时作为父镜像
FROM python:3.10-slim

# 设置工作目录为/app
WORKDIR /app

# 将当前目录内容复制到位于/app中的容器中
COPY . /app

# 安装requirements.txt中指定的任何所需包
RUN pip install -r requirements.txt

# 使得5000端口可用于外界
EXPOSE 8501

# 定义环境变量
ENV NAME World

# 在容器启动时运行app.py
CMD ["streamlit", "run", "az_deploy.py"]
