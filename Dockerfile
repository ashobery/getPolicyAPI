# Use the official Microsoft Playwright image
FROM mcr.microsoft.com/playwright/python:v1.40.0-jammy

# Set the working directory
WORKDIR /app

# Copy your code
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Start the API
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "10000"]