# Use official Python image
FROM python:3.9

# Set working directory inside the container
WORKDIR /app

# Copy all files to the container
COPY . .

# Install TensorFlow, Keras, and required libraries
RUN pip install --upgrade pip
RUN pip install fastapi uvicorn tensorflow==2.18.0 keras==3.8.0 numpy pillow opencv-python python-multipart

# Expose port 8000 for FastAPI
EXPOSE 8000

# Run FastAPI server
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
