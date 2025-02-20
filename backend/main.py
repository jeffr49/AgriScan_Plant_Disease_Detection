from fastapi import FastAPI, File, UploadFile
import tensorflow as tf
import numpy as np
from PIL import Image
import io

app = FastAPI()

# Load the .h5 Model
MODEL_PATH = "plant_disease_detection_5.keras"
model = tf.keras.models.load_model(MODEL_PATH,compile=False)

# Labels for diseases (must match model output classes)
LABELS = [
    "Apple___Apple_scab",
    "Apple___Black_rot",
    "Apple___Cedar_apple_rust",
    "Apple___healthy",
    "Blueberry___healthy",
    "Cherry_(including_sour)_Powdery_mildew",
    "Cherry_(including_sour)_healthy",
    "Corn_(maize)_Cercospora_leaf_spot Gray_leaf_spot",
    "Corn_(maize)Common_rust",
    "Corn_(maize)_Northern_Leaf_Blight",
    "Corn_(maize)_healthy",
    "Grape___Black_rot",
    "Grape__Esca(Black_Measles)",
    "Grape__Leaf_blight(Isariopsis_Leaf_Spot)",
    "Grape___healthy",
    "Orange__Haunglongbing(Citrus_greening)",
    "Peach___Bacterial_spot",
    "Peach___healthy",
    "Pepper,bell__Bacterial_spot",
    "Pepper,bell__healthy",
    "Potato___Early_blight",
    "Potato___Late_blight",
    "Potato___healthy",
    "Raspberry___healthy",
    "Soybean___healthy",
    "Squash___Powdery_mildew",
    "Strawberry___Leaf_scorch",
    "Strawberry___healthy",
    "Tomato___Bacterial_spot",
    "Tomato___Early_blight",
    "Tomato___Late_blight",
    "Tomato___Leaf_Mold",
    "Tomato___Septoria_leaf_spot",
    "Tomato___Spider_mites Two-spotted_spider_mite",
    "Tomato___Target_Spot",
    "Tomato___Tomato_Yellow_Leaf_Curl_Virus",
    "Tomato___Tomato_mosaic_virus",
    "Tomato___healthy"
]

def preprocess_image(image: Image.Image):
    """Preprocess image for model prediction."""
    image = image.resize((224, 224))  # Resize based on model input size
    image = np.array(image, dtype=np.float32) / 255.0  # Normalize
    image = np.expand_dims(image, axis=0)  # Add batch dimension
    return image

@app.post("/classify")
async def classify(file: UploadFile = File(...)):
    """Classify the uploaded image and return disease prediction."""
    image = Image.open(io.BytesIO(await file.read()))
    input_data = preprocess_image(image)

    # Run model inference
    predictions = model.predict(input_data)
    predicted_class = np.argmax(predictions)
    predicted_label = LABELS[predicted_class]

    return {"disease": predicted_label}
