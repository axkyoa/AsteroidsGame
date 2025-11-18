class Star {
  float x, y;

  Star() {
    x = random(width);
    y = random(height);
  }

  void show() {
    stroke(255);
    point(x, y);
  }
}
