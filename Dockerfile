# Use an official lightweight Python image.
# https://hub.docker.com/_/python
FROM python:3.9-slim

# Set the working directory in the container.
WORKDIR /app

# Copy the requirements file.
COPY requirements.txt .

# Install the dependencies.
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code.
COPY . .

# Make port 5000 available to the world outside this container.
EXPOSE 5000

# Define environment variable.
ENV FLASK_APP app.py

# Run app.py when the container launches.
CMD ["flask", "run", "--host=0.0.0.0"]