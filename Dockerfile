# Base image with Python 3.12
FROM python:3.12

# Working directory
WORKDIR /app

# Install dependencies
RUN pip install -U pip wheel
RUN pip install anl>=0.1.8

# # Install Java 17
# RUN apt-get update && apt-get install -y openjdk-17-jdk
#
# # Set JAVA_HOME environment variable
# ENV JAVA_HOME /usr/lib/jvm/java-17-openjdk-amd64
#
# RUN negmas genius-setup
#
# Copy remaining project files
COPY . .

# expose anlv port
EXPOSE 8501


