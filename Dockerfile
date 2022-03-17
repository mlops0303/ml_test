FROM jimilee/mlops-local:torch1.10-cuda11.3-python3.8

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN apt update \
    && apt-get install python3-pip
RUN pip install -r reauirements.txt

COPY . .

EXPOSE 80
CMD ["python", "app.py"]



