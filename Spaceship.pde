class Spaceship extends Floater {

  Spaceship() {
    myCenterX = width / 2;
    myCenterY = height / 2;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }

  public void hyperspace() {
    myCenterX = random(width);
    myCenterY = random(height);
    myPointDirection = random(360);
    myXspeed = 0;
    myYspeed = 0;
  }

  public void show() {
    pushMatrix();
    translate(myCenterX, myCenterY);
    rotate(radians(myPointDirection));

    // Outer ring
    stroke(220);
    strokeWeight(2);
    noFill();
    ellipse(0, 0, 100, 100);

    // 12 panels around circle
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

    // Center
    fill(200);
    ellipse(0, 0, 22, 22);

    popMatrix();
  }
}
