public class Spaceship extends Floater {

  public Spaceship() {
    corners = 0;
    xCorners = new float[0];
    yCorners = new float[0];

    myCenterX = width/2;
    myCenterY = height/2;
    myXspeed = 0;
    myYspeed = 0;

    
    myPointDirection = 0;
  }

  public void hyperspace() {
    myCenterX = (float)(Math.random() * width);
    myCenterY = (float)(Math.random() * height);
    myPointDirection = (float)(Math.random() * 360);
    myXspeed = 0;
    myYspeed = 0;
  }

  
  public void show() {
    pushMatrix();
    translate(myCenterX, myCenterY);
    rotate(radians(myPointDirection));

    stroke(220);
    strokeWeight(2);

    
    noFill();
    ellipse(0, 0, 100, 100);

    
    fill(180);
    noStroke();
    for (int i = 0; i < 12; i++) {
      float angle = radians(i * 30);  
      float px = cos(angle) * 50;    
      float py = sin(angle) * 50;

      pushMatrix();
      translate(px, py);
      rotate(angle + HALF_PI);
      rectMode(CENTER);
      rect(0, 0, 18, 8);              
      popMatrix();
    }

   
    fill(200);
    noStroke();
    ellipse(0, 0, 22, 22);

    popMatrix();
  }
}
