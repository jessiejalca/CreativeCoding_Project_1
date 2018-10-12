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
    
    // EYES
    // right
    stroke(0);
    strokeWeight(4);
    noFill();
    line(-20, -40, -50, -40);
    noStroke();
    fill(0);
    arc(-35, -40, 20, 20, 0, PI);
    // left
    stroke(0);
    strokeWeight(4);
    noFill();
    line( 20, -40,  50, -40);
    noStroke();
    fill(0);
    arc(35, -40, 20, 20, 0, PI);

    // MASK
    stroke(0, 0, 128);
    fill(0, 0, 128);
    arc(0,   0, 200, 200,  0, PI  );
    arc(0,   0, 200,  30, PI, PI*2);
    arc(0, -15,  80,  20, PI, PI*2);
    //arc(0, -20,  60,  10, PI, PI*2);

  popMatrix();
}
