FROM python:3.9-slim
WORKDIR /python-flask

# Install Flask directly
RUN pip install Flask

COPY . .
CMD ["python", "./app.py"]
