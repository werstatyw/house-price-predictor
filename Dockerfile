FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements file
COPY src/api/ .

# Install dependencies
RUN pip install -r requirements.txt

# Copy models directory
COPY models/ ./models/

# Expose port
EXPOSE 8000

# Launch command
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]