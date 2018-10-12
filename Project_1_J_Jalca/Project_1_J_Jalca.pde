void setup() {
  // put setup code here
  size(600, 600, P3D);
}

void draw() {
  background(255);
  
  // Ninja
  Ninja donnie = new Ninja(mouseX - 150, mouseY);
  donnie.display(0.5);
  
  // Dude
  Dude guy = new Dude(mouseX, mouseY);
  guy.turnDude();
  guy.display(0.5);
}
