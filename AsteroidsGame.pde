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

  for (int j = 0; j < 5; j++) {
    asteroids.add(new Asteroid());
  }
}
void draw() {
  background(0);
  for (int i = 0; i < numStars; i++) {
    stars[i].show();
  }

  for (int i = asteroids.size() - 1; i >= 0; i--) {
    Asteroid a = asteroids.get(i);

    float d = dist(a.getX(), a.getY(),
     ship.getMyCenterX(), ship.getMyCenterY());

    if (d < 20) {
      asteroids.remove(i);
    } else {
      a.move();
      a.show();
    }
  }

  ship.move();
  ship.show();
}

void keyPressed() {

  if (key == 'a' || key == 'A') {
    ship.setMyXspeed(ship.getMyXspeed() - 0.2);
  }

  if (key == 'd' || key == 'D') {
    ship.setMyXspeed(ship.getMyXspeed() + 0.2);
  }

  if (key == 'w' || key == 'W') {
    ship.setMyYspeed(ship.getMyYspeed() - 0.2);
  }

  if (key == 's' || key == 'S') {
    ship.setMyYspeed(ship.getMyYspeed() + 0.1);
  }

  if (keyCode == SHIFT) {
    ship.hyperspace();
  }

  if (key == 'q' || key == 'Q') {
    ship.setMyXspeed(0);
    ship.setMyYspeed(0);
  }
}
