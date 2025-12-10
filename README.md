# Wild_Life_Animal_Image_Processing
Analysis of approximately 2.5 million camera-trap images from the Meadowbank site revealed an extremely low level of wildlife presence during the 2024 monitoring period. Both manual validation and automated model assessments reached the same conclusion: wildlife occurrences were rare to nonexistent across the dataset. 

While manual validation suggests wildlife occurrence <1%, a small number of images do include animals such as: 

Small mammals (ex. Rabbits)  

Mid - Large mammals (Wolves, Foxes, Moose, Deer, Cattle, Caribou, Coyotes...) 

Birds 

Environmental and Landscape conditions: 

The 2024 dataset consists of 2.5 million camera trap images captured across multiple cameras at the Meadowbank site. A review of the overall environmental conditions indicates that the cameras operated under consistent Arctic/sub-Arctic weather patterns, with image characteristics typical of northern prairies and tundra landscapes. 

Most images were captured under cold-weather conditions, consistent with the Meadowbank climate. Common environmental and lanscape characteristics include: 

Snow-covered ground during large portions of the dataset 

Low contrast in dawn and dusk periods due to diffuse Arctic light 

Sun glare or snow glare, often creating bright reflections 

Wind-driven motion, especially visible in grasses, flags, and loose materials 

Exposed rock formations (stones, gravel, boulders) 

Sparse vegetation, including grass patches and shrubs 

Flags or survey markers placed near camera sites 

These conditions contribute significantly to camera false-trigger events and increase false positives for AI detection models. 

 

 

Model reliability 

Model  

Recall  

Precision  

Suitability for Meadowbank  

Notes   

MDv5a  

High  

Medium 

Pre-filter / initial flagging  

Over-detects shadows & snow artifacts   

YOLOv10-MDv6  

Medium  

Medium High  

Secondary validation  

More reliable but still affected by environmental noise   

Combined Output  

Very High  

Medium To Medium High 

Balanced approach  

Minimizes missed wildlife events   

 

The Meadowbank 2024 dataset presented a series of environmental and operational challenges that directly impact automated wildlife detection. The two primary models applied—MegaDetector v5a and YOLOv10-MDv6 (YOLO9c-based)—were evaluated for their reliability under the specific conditions of this project. 

1. MegaDetector v5a (MDv5a) 

Purpose: Animal/Vehicle/Human detection with bounding boxes 

Strengths: 

High sensitivity to potential animal shapes 

Robust general-purpose wildlife detector trained on large global datasets 

Good at flagging any content that might contain an animal (high recall) 

Produces structured detection outputs (class, confidence, bounding boxes) 

Limitations Observed in This Project: 

High false-positive rate in snowy and low-contrast images 

Sensitive to shadows, rocks, grass movement, and flagging tape 

Sometimes identifies camera artifacts as animal silhouettes 

Reliability Assessment: 

High recall, but only medium precision in Meadowbank conditions 

Very effective as a supporting step because of high recall (tends to capture more images) 

2. YOLOv10-MDv6 (YOLOv9c Classifier + MDv6-tuned) 

Purpose: Animal/Vehicle/Human detection with bounding boxes 
Strengths: 

Higher precision than MDv5a because more hyperparameters were used to train the model 

Better at rejecting false positives caused by snow glare 

More stable performance across daytime, dawn, and night IR images 

Produces structured detection outputs (class, confidence, bounding boxes) 

Limitations Observed: 

Still susceptible to wind-driven vegetation and snow reflections 

False positives remain possible when no true wildlife is present in the environment 

Infrared nighttime images have slightly reduced reliability 

Reliability Assessment: 

Moderate-to-high precision, medium recall 

Best used to validate or invalidate along with MDv5a detections 
