FROM python:3.9-slim
WORKDIR /app
COPY sample/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY sample/ .
CMD ["python", "app.py"]
