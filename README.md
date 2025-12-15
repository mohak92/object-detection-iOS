# Object Detection iOS

A native iOS application built with SwiftUI that performs real-time object detection using Core ML and the YOLO11x model. The app allows users to select images from their photo library and automatically detects objects with bounding boxes and confidence scores.

## Features

- 📸 **Image Selection**: Select images from your photo library using PhotosPicker
- 🔍 **Object Detection**: Automatically detects objects in selected images using YOLO11x model
- 📦 **Bounding Boxes**: Visual overlay showing detected objects with bounding boxes
- 🏷️ **Labels & Confidence**: Displays object labels and confidence scores
- 🎨 **Modern UI**: Clean and intuitive SwiftUI interface
- ⚡ **Real-time Processing**: Fast object detection powered by Core ML

## Requirements

- iOS 16.0 or later
- Xcode 15.0 or later
- Swift 5.9 or later
- macOS 13.0 or later (for development)

## Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/object-detection-iOS.git
cd object-detection-iOS
```

2. Open the project in Xcode:
```bash
open ObjectDetection.xcodeproj
```

3. Build and run the project:
   - Select your target device or simulator
   - Press `Cmd + R` to build and run

## Usage

1. Launch the app on your iOS device or simulator
2. Tap the "Select Photo" button
3. Choose an image from your photo library
4. The app will automatically process the image and display:
   - The selected image
   - Bounding boxes around detected objects
   - Object labels with confidence scores below the image

## Technical Details

### Architecture

The app is built using SwiftUI and follows a modular architecture:

- **ContentView**: Main view that handles image selection and model inference
- **ImageDisplayView**: Displays the selected image
- **ObjectOverlayView**: Renders bounding boxes and labels on detected objects
- **DetectedObject**: Data model for storing detection results
- **Helpers**: Utility extensions for formatting

### Machine Learning Model

- **Model**: YOLO11x (You Only Look Once version 11x)
- **Framework**: Core ML with Vision framework
- **Input**: CGImage
- **Output**: VNRecognizedObjectObservation with bounding boxes, labels, and confidence scores

### Key Technologies

- **SwiftUI**: Modern declarative UI framework
- **Core ML**: Machine learning framework for on-device inference
- **Vision**: Computer vision framework for image analysis
- **PhotosUI**: Framework for photo library access

## Project Structure

```
ObjectDetection/
├── ObjectDetectionApp.swift      # App entry point
├── ContentView.swift              # Main view with detection logic
├── ImageDisplayView.swift         # Image display component
├── ObjectOverlayView.swift        # Bounding box overlay view
├── NoImageSelectedView.swift      # Empty state view
├── Classes/
│   ├── DetectedObject.swift       # Detection data model
│   └── Helpers.swift              # Utility extensions
└── Models/
    └── yolo11x.mlpackage/         # Core ML model package
```

## How It Works

1. **Image Selection**: User selects an image using PhotosPicker
2. **Image Conversion**: Selected image is converted to CGImage format
3. **Model Loading**: YOLO11x Core ML model is loaded
4. **Inference**: Vision framework performs object detection
5. **Result Processing**: Detected objects are extracted with bounding boxes, labels, and confidence scores
6. **Visualization**: Bounding boxes and labels are overlaid on the image

## Model Information

The app uses the YOLO11x model, which is a state-of-the-art object detection model capable of detecting a wide variety of objects in images. The model is packaged as a Core ML model (`.mlpackage`) for efficient on-device inference.

## Permissions

The app requires photo library access to select images. The permission is requested automatically when you tap "Select Photo" for the first time.

## Future Enhancements

- [ ] Real-time camera detection
- [ ] Export detection results
- [ ] Filter detections by confidence threshold
- [ ] Support for video detection
- [ ] Multiple model selection
- [ ] Detection history

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the MIT License.

## Author

Created by Mohak Tamhane

## Acknowledgments

- YOLO model architecture by Ultralytics
- Apple's Core ML and Vision frameworks

