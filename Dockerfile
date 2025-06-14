# Base Python image
FROM python:3.10

# Set working directory
WORKDIR /app

# Copy requirements & install them
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code
COPY . .

# Expose Streamlit port
EXPOSE 8501

# Run the app
CMD ["streamlit", "run", "LLM.py", "--server.port=8501", "--server.address=0.0.0.0"]
