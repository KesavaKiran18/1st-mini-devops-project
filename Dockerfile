# Use official Python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy dependency list and install
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy app code
COPY . .

# Run the app
CMD ["python", "app.py"]
