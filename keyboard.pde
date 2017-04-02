void keyPressed() {

  println("pressed key:" + int(key) + " keyCode:" + keyCode);

  if (key == 'q') {
    exit();
  }
}


void keyTyped() {
  println("typed key:" + int(key) + " keyCode:" + keyCode);
}


void keyReleased() {
  println("released key:" + int(key) + " keyCode: " + keyCode);
}