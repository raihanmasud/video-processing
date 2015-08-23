import processing.video.*;
Movie myMovie;

void setup() {
  size(400, 400);
  myMovie = new Movie(this, "original_Apr3.mov");
  //myMovie.loop();
  
}

void draw() {
  //tint(255, 20);
  //image(myMovie, mouseX, mouseY);
}

// Called every time a new frame is available to read
void movieEvent(Movie m) {
  m.read();
  saveFrame();
}
