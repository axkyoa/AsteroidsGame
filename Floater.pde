class Floater {
  float myCenterX, myCenterY;
  float myXspeed, myYspeed;

  void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;

    
    if (myCenterX > width)  myCenterX = 0;
    if (myCenterX < 0)      myCenterX = width;
    if (myCenterY > height) myCenterY = 0;
    if (myCenterY < 0)      myCenterY = height;
  }

  void show() {
    
  }
}
