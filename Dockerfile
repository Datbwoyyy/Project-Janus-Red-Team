# Use an official lightweight Python image.
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the local directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
# (Even if empty, this is good practice)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Command to run on container start
CMD ["python", "main.py"]
