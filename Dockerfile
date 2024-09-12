# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /python-flask

# Install curl (if not already available) and download get-pip.py
RUN apt-get update && \
    apt-get install -y curl && \
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python get-pip.py 

# Copy the requirements file into the container at /python-flask
COPY sample1/requirements.txt .

# Install the dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Specify the command to run the application
CMD ["python", "./app.py"]

# Expose port 5000 for the application
EXPOSE 5000
