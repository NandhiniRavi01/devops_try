# Use a more feature-complete base image if possible
FROM python:3.9-alpine

# Install necessary packages
RUN apk add --no-cache \
    curl \
    bash

# Install pip (if not already available)
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.py

# Install Flask
RUN pip install Flask==2.0.3

# Add your application code
COPY . /app
WORKDIR /app

# Command to run the application
CMD ["python3", "app.py"]

