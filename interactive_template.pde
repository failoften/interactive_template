import processing.video.*;
import oscP5.*;
import netP5.*;


OscP5 oscP5;
NetAddress myRemoteLocation;

Capture cam;


void setup() {
  size(1280, 720);
  frameRate(30);

  /* start oscP5, listening for incoming messages at port 12000 */
  oscP5 = new OscP5(this, 12000);

  /* create NetAddress, listen on same port */
  myRemoteLocation = new NetAddress("127.0.0.1", 12000);

  initializeCamera(0);
}


void draw() {
  startCamera(0);
}