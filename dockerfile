FROM python:3.9

# Install SSH Client
RUN apt-get update && apt-get install -y openssh-client

# Set environment variables
ENV PYTHONUNBUFFERED 1

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt /app/requirements.txt

# Install dependencies
RUN pip install -r requirements.txt

# Copy the application to the working directory
COPY . /app

# Run the application
CMD python manage.py runserver 0.0.0.0:8000