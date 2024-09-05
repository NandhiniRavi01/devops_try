FROM python:3.9-slim
WORKDIR /app
COPY sample/requirements.txt ./
RUN pip install -r requirements.txt
COPY sample/ .  # Make sure this matches the actual directory name
CMD ["python", "app.py"]
