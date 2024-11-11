# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install any dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose the port that the Flask app runs on
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
