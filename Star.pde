class Star {
  private float x, y;

  Star() {
    x = random(width);
    y = random(height);
  }

  public float getX() { 
    return x; 
  }

  public float getY() { 
    return y; 
  }

  public void setX(float x) { 
    this.x = x; 
  }

  public void setY(float y) { 
    this.y = y; 
  }

  void show() {
    stroke(255);
    point(x, y);
  }
}
