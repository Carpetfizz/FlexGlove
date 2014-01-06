import processing.serial.*;
import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.InputEvent;

Serial myPort;
String val;
Robot mouseBot;

void setup(){
  String portName=Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
  try {
    mouseBot = new Robot();
  }
  catch(AWTException e) {
    e.printStackTrace();
  }
}

void draw() {
  rectMode(CENTER);
  rect(0,0,750,750);
  fill(255,0,0);
    
  if(myPort.available()>0)
  {
      if(myPort.read()==1)
        {
          mouseBot.mousePress(InputEvent.BUTTON1_MASK);
          mouseBot.mouseRelease(InputEvent.BUTTON1_MASK);
          fill(0,255,0);
          println("Click");
        }
  }
}
