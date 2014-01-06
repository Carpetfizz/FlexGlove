int flexSensorPin = A0;

void setup(){
  Serial.begin(9600);
}

void loop(){
 int flexSensorReading = analogRead(flexSensorPin);
 int flexMapped=map(flexSensorReading, 290, 130, 0, 100);
 Serial.println(flexMapped);
 if(flexMapped >=80) {
 Serial.write(1);
 }
 delay(200);
}
