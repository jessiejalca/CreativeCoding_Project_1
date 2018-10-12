class Dude {
 float x, y;
 boolean turn = false;
  
  Dude(float x_, float y_) {
    x = x_;
    y = y_;
  }
  
  void display(float little) {
    // DRAWING DUDE
    pushMatrix();
      translate(x, y);
      scale(little);
      if (turn) {
        rotateY(radians(180));
      }
      
      // FACE
      noStroke();
      fill(240, 184, 160);
      ellipse(0, 0, 200, 200);
      
      // EYES
      // left
      noStroke();
      fill(0);
      ellipse( 55, -10, 20, 20);
      
      // HAIR
      fill(108, 60, 27);
      arc(0, 0, 200, 200, PI, PI * 14/8, OPEN);
      
      // HAT
      noStroke();
      fill(0, 0, 128);
      arc(0, -40, 180, 150, PI, PI*2);
      rectMode(CORNERS);
      rect(-160, -60, -80, -40, 80, 0, 0, 0);
    popMatrix();
  }
  
  void turnDude() {
    if (mousePressed) {
      turn = true;
    }
  }
}
