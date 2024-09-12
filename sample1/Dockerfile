FROM python:3.9-slim
WORKDIR /python-flask
WORKDIR /python-flask
COPY sample/requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD ["python", "./app.py"]
