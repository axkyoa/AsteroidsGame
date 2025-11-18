class Spaceship extends Floater {

  Spaceship() {
    myCenterX = width / 2;
    myCenterY = height / 2;
    myXspeed = 0;
    myYspeed = 0;
    
  }

  void hyperspace() {
    myCenterX = random(width);
    myCenterY = random(height);
    myXspeed = 0;
    myYspeed = 0;
  }

  void show() {
    pushMatrix();
    translate(myCenterX, myCenterY);

    
    stroke(220);
    strokeWeight(3);
    noFill();
    ellipse(0, 0, 120, 120);

    
    stroke(180);
    strokeWeight(2);
    noFill();
    ellipse(0, 0, 80, 80);

   
    fill(180);
    noStroke();
    for (int i = 0; i < 12; i++) {
      pushMatrix();
      rotate(radians(i * 30));
      rectMode(CENTER);
      rect(0, -60, 18, 10, 3); 
      popMatrix();
    }

    fill(255);
    noStroke();
    ellipse(0, 0, 22, 22);
    popMatrix();
  }
}
