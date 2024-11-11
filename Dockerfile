# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install dependencies
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Set environment variables
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Expose the port that the Flask app runs on
EXPOSE 5000

# Set up a non-root user for better security
RUN adduser --disabled-password myuser
USER myuser

# Run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]
