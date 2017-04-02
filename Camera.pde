
// start camera
void startCamera(int on) {

  //start camera 1
  if (cam.available() == true && on == 1) {
    cam.read();
    image(cam, 0, 0);
  } 

  // start camera 2
  else if (cam.available() == true && on == 0) {
    background(0);
  }
}




void initializeCamera(int use) {
  String[] cameras = Capture.list();

  if (cameras == null) {
    println("Failed to retrieve the list of available cameras, will try the default...");
    cam = new Capture(this, 1280, 720);
  } 
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }

    // Initialize camera
    cam = new Capture(this, cameras[use]);

    // Start capturing the images from the camera
    cam.start();
  }
}