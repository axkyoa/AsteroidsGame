class Star {
  float x, y;
  float brightness;
  float changeRate;
  float size;

  Star() {
    x = random(width);
    y = random(height);
    brightness = random(150, 255);
    changeRate = random(0.5, 2);
    size = random(2, 5);
  }
  void show() {
    brightness += changeRate;
    if (brightness > 255) { brightness = 255; changeRate *= -1; }
    if (brightness < 150) { brightness = 150; changeRate *= -1; }
    noStroke();
    fill(brightness);
    ellipse(x, y, size, size);
  }
}
