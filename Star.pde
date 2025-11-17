public class Floater {
  protected int corners;   
  protected float[] xCorners, yCorners;   
  protected float myCenterX, myCenterY, myXspeed, myYspeed, myPointDirection;  
  protected float myDirectionX, myDirectionY;

  public void accelerate (float amount) {
    myXspeed += amount * Math.cos(myPointDirection*(Math.PI/180));   
    myYspeed += amount * Math.sin(myPointDirection*(Math.PI/180));   
  }

  public void turn (float degrees) {
    myPointDirection += degrees;   
  }

  public void move () {
    myCenterX += myXspeed;   
    myCenterY += myYspeed;

    if (myCenterX > width)
      myCenterX = 0;
    else if (myCenterX < 0)
      myCenterX = width;

    if (myCenterY > height)
      myCenterY = 0;
    else if (myCenterY < 0)
      myCenterY = height;
  }

  public void show () {
    fill(255);   
    stroke(255);   

    double theta = myPointDirection * (Math.PI/180);

    beginShape();   
    for (int i = 0; i < corners; i++) {
      float x = xCorners[i] * (float)Math.cos(theta) - yCorners[i] * (float)Math.sin(theta) + myCenterX;      
      float y = xCorners[i] * (float)Math.sin(theta) + yCorners[i] * (float)Math.cos(theta) + myCenterY;      
      vertex(x,y);   
    }   
    endShape(CLOSE);   
  }
}
