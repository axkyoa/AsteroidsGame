class Star {
  float x, y, size;

  Star() {
    x = random(width);
    y = random(height);
    size = random(1, 3);
  }

  void show() {
    noStroke();
    fill(255);
    ellipse(x, y, size, size);
  }
}
