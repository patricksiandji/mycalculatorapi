FROM python:3.9

WORKDIR ~/my_app

COPY ./requirements.txt ./my_app/requirements.txt
COPY app.py ./my_app/app.py

RUN pip3 install --upgrade -r ./my_app/requirements.txt


CMD ["uvicorn", "my_app.app:app", "--host", "0.0.0.0", "--port", "80"]




