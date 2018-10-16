// characters & character variables
float xDude;
float xNinja;
float yLoc;
float saveX, saveY;
float speed = 5;
boolean bush, trunk, squat;
Ninja donnie;
Dude guy;

// hiding spots
Bush b1;
Bush b2;
TreeTrunk t;

void setup() {
  // put setup code here
  size(600, 600, P3D);
  xDude = width/2;
  yLoc = height/2;
  xNinja = xDude - 150;
  
  donnie = new Ninja(xNinja, yLoc);
  guy = new Dude(xDude, yLoc);
  b1 = new Bush(width/3, height/3 - 15, color(102, 185, 52));
  b2 = new Bush(width/5, height/3, color(66, 120, 34));
  t = new TreeTrunk(width/2 + 150, height/2 + 150);
}

void draw() {
  background(255);
  // hiding spots
  b1.display();
  b2.display();
  t.display();
  
  // Ninja
  donnie.move(speed);
  if (!mousePressed) { // Ninja isn't hiding
    xNinja = saveX;
    yLoc = saveY;
    donnie.display();
  } else { // Ninja hides in specific place
    hideNinja();
  }
  
  //Dude
  guy.move(speed);
  guy.turnDude();
  guy.display();
}

void hideNinja() {    
  if (bush) {
    // ninja hides in bushes
    b1.display();
    donnie.hide2(width/3, height/3 - 15);
    b2.display();
  } else if (trunk) {
    // ninja hides behind tree trunk
    donnie.hide2(width/2 + 70, height/2 +150);
    t.display();
  } else if (squat) {
    // ninja squats
    donnie.hide1();
  }
}

void mousePressed() {
  float chance = random(3);
  if (chance < 1) {
    bush = true;
    trunk = false;
    squat = false;
  } else if (chance < 2) {
    bush = false;
    trunk = true;
    squat = false;
  } else if (chance < 3) {
    bush = false;
    trunk = false;
    squat = true;
  }
}
