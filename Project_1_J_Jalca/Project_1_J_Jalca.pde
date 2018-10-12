void setup() {
  // put setup code here
  size(600, 600);
  background(255);
}

void draw() {
  // DRAWING NINJA
  int x = width/2;
  int y = height/2;

  pushMatrix();
    translate(x, y);
    // FACE
    noStroke();
    fill(240, 184, 160);
    ellipse(0, 0, 200, 200);

    // HAIR
    stroke(0);
    fill(0);
    beginShape();
      vertex(50, -25);
      bezierVertex(50, -50, -95, -20, -110, 10);
      //bezierVertex(50, -100, -95, -80, 50, -25);      
    endShape();

    // MASK
    noStroke();
    fill(0);

  popMatrix();
}
