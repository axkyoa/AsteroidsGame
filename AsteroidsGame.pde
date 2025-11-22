Spaceship ship;
Star[] stars;
int numStars = 100;
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();

void setup() {
  size(800, 600);
  ship = new Spaceship();


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

  
  if (key == 'a' || key == 'A') {
    ship.setMyXspeed(ship.getMyXspeed() - 0.3);
  }

  
  if (key == 'd' || key == 'D') {
    ship.setMyXspeed(ship.getMyXspeed() + 0.3);
  }

  
  if (key == 'w' || key == 'W') {
    ship.setMyYspeed(ship.getMyYspeed() - 0.5);
  }

  
  if (key == 's' || key == 'S') {
    ship.setMyYspeed(ship.getMyYspeed() + 0.3);
  }


  if (keyCode == SHIFT) {
    ship.hyperspace();
  }

  
  if (key == 'q' || key == 'Q') {
    ship.setMyXspeed(0);
    ship.setMyYspeed(0);
  }
}
