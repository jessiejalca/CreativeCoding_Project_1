class Ninja {
  float x, y;
  
  Ninja(float x_, float y_) {
    x = x_;
    y = y_;
  }
  
  void display(float little) {
    // DRAWING NINJA
    if (mousePressed) {
      hide(little);
    } else {
      pushMatrix();
        translate(x, y);
        scale(little);
        // FACE
        noStroke();
        fill(0);
        ellipse(0, 0, 200, 200);
        
        // EYES
        noStroke();
        fill(240, 184, 160);
        ellipse(0, -20, 150, 50);
        // right
        stroke(0);
        strokeWeight(4);
        noFill();
        line(-20, -20, -50, -20);
        noStroke();
        fill(0);
        arc(-35, -20, 20, 20, 0, PI);
        // left
        stroke(0);
        strokeWeight(4);
        noFill();
        line( 20, -20,  50, -20);
        noStroke();
        fill(0);
        arc(35, -20, 20, 20, 0, PI);
      popMatrix();
    }
  }
  
  void hide(float little) {
    pushMatrix();
      translate(x, y);
      scale(little);
      
      noStroke();
      fill(0);
      rectMode(CENTER);
      rect(0, 90, 200, 20, 10);
    popMatrix();
  }
}
