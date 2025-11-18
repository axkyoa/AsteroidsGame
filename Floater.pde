class Floater {
  protected float myCenterX, myCenterY;
  protected float myXspeed, myYspeed;
  protected float myPointDirection;

  public void accelerate(float amount) {
    float radians = myPointDirection * (PI / 180);
    myXspeed += amount * cos(radians);
    myYspeed += amount * sin(radians);
  }

  public void turn(float degrees) {
    myPointDirection += degrees;
  }

  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;

    // Screen wrapping
    if (myCenterX > width) myCenterX = 0;
    if (myCenterX < 0) myCenterX = width;
    if (myCenterY > height) myCenterY = 0;
    if (myCenterY < 0) myCenterY = height;
  }
}
