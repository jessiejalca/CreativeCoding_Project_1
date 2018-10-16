class TreeTrunk {
  float x, y;
  
  TreeTrunk(float x_, float y_) {
    x = x_;
    y = y_;
  }
  
  void display() {
    pushMatrix();
      translate(x, y);
      scale(2.5);
      // stump
      noStroke();
      fill(130, 90, 44);
      quad(-30, -20, 30, -20, 50, 20, -50, 20);
      
      // top
      fill(161, 120, 32);
      ellipse(0, -20, 60, 20);
      
      //swirls
      strokeWeight(1);
      stroke(130, 90, 44);
      noFill();
      ellipse(0, -20, 45, 15);
      ellipse(0, -20, 35, 7);
    popMatrix();
  }
}
