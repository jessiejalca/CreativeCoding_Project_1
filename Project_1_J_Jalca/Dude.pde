class Dude {
 float x, y;
 boolean turn = false;
  
  Dude(float x_, float y_) {
    x = x_;
    y = y_;
  }
  
  // BEGIN DRAWING DUDE --------------------------------------------
  void display() {
    pushMatrix();
      translate(x, y);
      // turning to see who's behind him
      if (turn) {
        rotateY(radians(180));
      }
      // drawing dude
      head();
      eye();
      hair();      
      hat();
    popMatrix();
  }
  // Methods to draw dude
  void head() { // drawing dude's head
    noStroke();
    fill(240, 184, 160);
    ellipse(0, 0, 100, 100);
  }
  void eye() { // drawing dude's eye
    noStroke();
    fill(0);
    ellipse( 27.5, -5, 10, 10);
  }
  void hair() {
    fill(108, 60, 27);
    arc(0, 0, 100, 100, PI, PI * 14/8, OPEN);
  }
  void hat() {
    noStroke();
    fill(0, 0, 128);
    arc(0, -20, 90, 75, PI, PI*2);
    rectMode(CORNERS);
    rect(-80, -30, -40, -20, 80, 0, 0, 0);
  }
  // END DRAWING DUDE --------------------------------------------
  
  void turnDude() {
    // Dude turns around to see what's behind him
    if (mousePressed) {
      turn = true;
    } else {
      turn = false;
    }
  }
  
  void move(float speed) {
    // Move dude with ASWD keys
    if (keyPressed) {
      if (key == 'w' || key == 'W') { // up
        y -= speed;
      } else if (key == 's' || key == 'S') { // down
        y += speed;
      } else if (key == 'd' || key == 'D') { // right
        x += speed;
      } else if (key == 'a' || key == 'A') { // left
        x -= speed;
      }
    }
    // Restrict movement to window
    if (y < -100) {
      y = height + 100;
    }
    if (y > height + 100) {
      y = -100;
    }
    if (x > width + 100) {
      x = -100;
    }
    if (x < -100) {
      x = width + 100;
    }
  }
}
