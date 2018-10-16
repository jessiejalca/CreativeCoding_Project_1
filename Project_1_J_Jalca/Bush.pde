class Bush {
  float x, y;
  color bColor;
  
  Bush(float x_, float y_, color bColor_) {
    x = x_;
    y = y_;
    bColor = bColor_;
  }
  
  void display() {
    pushMatrix();
      translate(x, y);
      scale(0.75);
      noStroke();
      fill(bColor);
      rectMode(CENTER);
      rect(0, 0, 150, 100);
      arc(-75,   0, 100, 100,     PI/2, PI * 3/2);
      arc( 75,   0, 100, 100, PI * 3/2, PI * 5/2);
      arc(  0, -50, 150, 150,       PI,   PI * 2);
    popMatrix();
  }
}
