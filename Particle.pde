class Particle {
  float x, y;
  float xs, ys;
  float size;
  float life;
  boolean done = false;
  color c;

  Particle(float startX, float startY, color asteroidColor) {
    x = startX;
    y = startY;
    xs = random(-4, 4);
    ys = random(-4, 4);
    size = random(4, 8);
    life = 255;
    c = asteroidColor;
  }
  void update() {
    x += xs;
    y += ys;
    xs *= 0.95;
    ys *= 0.95;

    life -= 6;
    if (life <= 0) done = true;
  }
  void show() {
    noStroke();
    fill(red(c), green(c), blue(c), life);
    ellipse(x, y, size, size);
  }
}
