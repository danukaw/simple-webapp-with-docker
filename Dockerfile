FROM ubuntu:18.04

run apt-get update

run apt-get install -y python

run apt-get install -y python-pip

run apt-get install -y git

run mkdir docker-image

run pip install flask

run pip install flask-mysql


#run git clone https://github.com/mmumshad/simple-webapp.git

COPY  /app.py /opt/simple-webapp/

ENTRYPOINT FLASK_APP=/opt/simple-webapp/app.py flask run --host=0.0.0.0


