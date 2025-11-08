FROM python:3.12-slim
#specifies base image to use for the docker image

WORKDIR /application
#sets the working directory for subsequent commands in the docker file



COPY . . 

CMD ["python","app.py"]
#specifies the command to run when the docker container starts

EXPOSE 80 