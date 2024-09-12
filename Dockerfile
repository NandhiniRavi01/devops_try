FROM python:3.9-slim

WORKDIR /python-flask

COPY sample1/requirements.txt .
RUN apt-get update && apt-get install -y curl && \
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python get-pip.py && \
    pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "app.py"]
