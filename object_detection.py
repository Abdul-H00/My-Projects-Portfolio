import cv2
from ultralytics import YOLO

# Load YOLO model
model = YOLO('yolov8n.pt')

# Start webcam
cap = cv2.VideoCapture(0)

print("Object Detection Started! Press 'Q' to quit.")

while True:
    ret, frame = cap.read()
    if not ret:
        break

    # Run detection
    results = model(frame, stream=True)

    # Draw results
    for r in results:
        boxes = r.boxes
        for box in boxes:
            # Coordinates
            x1, y1, x2, y2 = map(int, box.xyxy[0])
            # Confidence
            conf = float(box.conf[0])
            # Class name
            cls = int(box.cls[0])
            label = f"{model.names[cls]} {conf:.2f}"

            # Draw box
            cv2.rectangle(frame, (x1, y1), (x2, y2), (0, 255, 0), 2)
            cv2.putText(frame, label, (x1, y1 - 10),
                       cv2.FONT_HERSHEY_SIMPLEX, 0.6,
                       (0, 255, 0), 2)

    cv2.imshow("Object Detection - Press Q to Quit", frame)

    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

cap.release()
cv2.destroyAllWindows()