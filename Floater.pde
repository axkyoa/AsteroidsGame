class Floater {
 
  private float myCenterX, myCenterY;
  private float myXspeed, myYspeed;

 
  public float getMyCenterX() { return myCenterX; }
  public void setMyCenterX(float x) { myCenterX = x; }

  public float getMyCenterY() { return myCenterY; }
  public void setMyCenterY(float y) { myCenterY = y; }

  public float getMyXspeed() { return myXspeed; }
  public void setMyXspeed(float xs) { myXspeed = xs; }

  public float getMyYspeed() { return myYspeed; }
  public void setMyYspeed(float ys) { myYspeed = ys; }

  
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
