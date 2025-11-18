Spaceship ship;
Star[] stars;
int numStars = 100;

void setup() {
  size(800, 600);
  ship = new Spaceship();

  // Initialize stars
  stars = new Star[numStars];
  for (int i = 0; i < numStars; i++) {
    stars[i] = new Star();
  }
}

void draw() {
  background(0);

 
  for (int i = 0; i < numStars; i++) {
    stars[i].show();
  }

  
  ship.move();
  ship.show();
}

void keyPressed() {
  // moves left
  if (key == 'a' || key == 'A') {
    ship.myXspeed -= 0.3;
  }

  // moves right
  if (key == 'd' || key == 'D') {
    ship.myXspeed += 0.3;
  }

  // moves up
  if (key == 'w' || key == 'W') {
    ship.myYspeed -= 0.3;
  }

  // moves down
  if (key == 's' || key == 'S') {
    ship.myYspeed += 0.3;
  }

  // "hyperspace"
  if (keyCode == SHIFT) {
    ship.hyperspace();
  }

  // stops the ship
  if (key == 'q' || key == 'Q') {
    ship.myXspeed = 0;
    ship.myYspeed = 0;
  }
}
