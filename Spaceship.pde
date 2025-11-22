class Spaceship extends Floater {

  Spaceship() {
    setMyCenterX(width / 2);
    setMyCenterY(height / 2);
    setMyXspeed(0);
    setMyYspeed(0);
  }

  void hyperspace() {
    setMyCenterX(random(width));
    setMyCenterY(random(height));
    setMyXspeed(0);
    setMyYspeed(0);
  }

  void show() {
    pushMatrix();
    translate(getMyCenterX(), getMyCenterY());

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
