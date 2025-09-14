FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements file
COPY src/api/requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy application files
COPY src/api/main.py .
COPY src/api/schemas.py .
COPY src/api/inference.py .

# Copy models directory
COPY src/models/ ./models/

# Expose port
EXPOSE 8000

# Launch command
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]