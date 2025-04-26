# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . /app

# Expose port
EXPOSE 8080

# Command to run app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]
