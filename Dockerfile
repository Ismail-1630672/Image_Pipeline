FROM python:3.12-slim
#specifies base image to use for the docker image

WORKDIR /application
#sets the working directory for subsequent commands in the docker file

RUN pip install -r requirements.txt
#runs a command inside the container during the build process

COPY requirements.txt requirements.txt
#copies files from the local directory to the docker image

COPY . . 

CMD ["python","app.py"]
#specifies the command to run when the docker container starts

EXPOSE 80 