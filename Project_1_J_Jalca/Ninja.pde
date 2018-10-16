class Ninja {
  float x;
  float y;
  
  Ninja(float x_, float y_) {
    x = x_;
    y = y_;
  }
  
  void display() {
    // BEGIN DRAWING NINJA -------------------------------------------
    pushMatrix();
      translate(x, y);
      head();
      eyes();
    popMatrix();
  }
  // Methods to draw ninja
  void head() { // drawing ninja's head
    noStroke();
    fill(0);
    ellipse(0, 0, 100, 100);
  }
  void eyes() { // drawing ninja's eyes
    // hole in mask to see eyes
    noStroke();
    fill(240, 184, 160);
    ellipse(0, -10, 75, 25);
    
    // right
    noStroke();
    fill(0);
    arc(-17.5, -10, 10, 10, 0, PI);
    
    // left
    noStroke();
    fill(0);
    arc(17.5, -10, 10, 10, 0, PI);
  }
  // END DRAWING NINJA ---------------------------------------------
  
  // BEGIN HIDING NINJA --------------------------------------------
  // Ninja squats
  void hide1() {
    pushMatrix();
      translate(x, y);
      noStroke();
      fill(0);
      rectMode(CENTER);
      rect(0, 45, 100, 10, 10);
    popMatrix();
  }
  // Ninja hides in specific place
  void hide2(float hideX, float hideY) {
    pushMatrix();
      translate(hideX, hideY);
      head();
      eyes();
    popMatrix();
  }
  // END HIDING NINJA ---------------------------------------------
  
  void move(float speed) {
    // Move ninja witD keys
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
