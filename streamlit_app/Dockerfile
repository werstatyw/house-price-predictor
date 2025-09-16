FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy everything from streamlit_app directory
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Expose port
EXPOSE 8501

# Launch command
CMD ["streamlit", "run", "app.py", "--server.address=0.0.0.0"]