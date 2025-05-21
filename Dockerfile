FROM python:3.11-slim

WORKDIR /usr/src/app

# Copy dependencies and install
COPY requirements.txt .
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

# Copy app and tests
COPY apps/ ./apps
COPY tests/ ./tests

# Run tests during build
RUN python -m unittest discover -s tests

# Start the application
CMD ["python", "-u", "apps/main.py"]
