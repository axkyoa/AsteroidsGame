Spaceship ship;
Star[] stars;
int numStars = 250;
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
ArrayList<Explosion> explosions = new ArrayList<Explosion>();

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
  for (Star s : stars) s.show();

  for (int i = asteroids.size() - 1; i >= 0; i--) {
    Asteroid a = asteroids.get(i);
    boolean destroyed = false;

    for (int j = bullets.size() - 1; j >= 0; j--) {
      Bullet b = bullets.get(j);

      float d = dist(a.getX(), a.getY(), b.getMyCenterX(), b.getMyCenterY());

      if (d < 20) {
        explosions.add(new Explosion(a.getX(), a.getY(), a.asteroidColor));
        asteroids.remove(i);
        bullets.remove(j);
        destroyed = true;
        break;
      }
    }

    if (!destroyed) {
      a.move();
      a.show();
    }
  }
  for (int i = bullets.size() - 1; i >= 0; i--) {
    Bullet b = bullets.get(i);
    b.move();
    b.show();

    if (b.getMyCenterX() < 0 || b.getMyCenterX() > width ||
        b.getMyCenterY() < 0 || b.getMyCenterY() > height) {
      bullets.remove(i);
    }
  }

  for (int i = explosions.size() - 1; i >= 0; i--) {
    Explosion e = explosions.get(i);
    e.update();

    if (e.finished) explosions.remove(i);
  }

  ship.move();
  ship.show();

  for (Asteroid a : asteroids) {
    float d = dist(a.getX(), a.getY(), ship.getMyCenterX(), ship.getMyCenterY());
    if (d < 20) { // adjust collision radius if needed
      explosions.add(new Explosion(ship.getMyCenterX(), ship.getMyCenterY(), color(255, 0, 0)));
      gameOver();
      break;
    }
  }
}

void keyPressed() {

  if (key == 'a' || key == 'A') ship.setMyXspeed(ship.getMyXspeed() - 0.2);

  if (key == 'd' || key == 'D') ship.setMyXspeed(ship.getMyXspeed() + 0.2);

  if (key == 'w' || key == 'W') ship.setMyYspeed(ship.getMyYspeed() - 0.2);

  if (key == 's' || key == 'S') ship.setMyYspeed(ship.getMyYspeed() + 0.2);

  if (keyCode == SHIFT) ship.hyperspace();

  if (key == 'q' || key == 'Q') {
    ship.setMyXspeed(0);
    ship.setMyYspeed(0);
  }

  if (key == ' ') {
    bullets.add(new Bullet(ship.getMyCenterX(), ship.getMyCenterY()));
  }
}
void gameOver() {
  noLoop(); 
  fill(255, 0, 0);
  textSize(64);
  textAlign(CENTER, CENTER);
  text("YOU DIED", width / 2, height / 2);
}
