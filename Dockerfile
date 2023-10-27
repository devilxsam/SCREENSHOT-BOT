# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable for Pyrogram
ENV PYROGRAM_API_ID "12637827"
ENV PYROGRAM_API_HASH "bd6f6b7a42292b9f165ae75c55bdf11f"
ENV PYROGRAM_BOT_TOKEN "6540714930:AAFN6PTzsQBX2lSxbdwKS_d0hbJw1QLT6hk"

# Run app.py when the container launches
CMD ["python", "app.py"]
