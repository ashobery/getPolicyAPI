# Use the updated Playwright image that matches the newer library
FROM mcr.microsoft.com/playwright/python:v1.51.0-jammy

WORKDIR /app

# Ensure we have the latest pip
RUN pip install --upgrade pip

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# We don't need to run 'playwright install' because
# the 'mcr.microsoft.com' image already has them.

EXPOSE 10000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "10000"]