class Asteroid extends Floater {

  float rotationSpeed;
  float angle;
  color asteroidColor;

  Asteroid() {
    
    setMyCenterX(random(width));

    setMyCenterY(random(height));

    setMyXspeed(random(-5, 5));

    setMyYspeed(random(-5, 5));

    rotationSpeed = random(-5, 3);

    angle = 0;
    asteroidColor = color(
      random(150, 255),
      random(100, 255),
      random(150, 255)
    );
  }

  void move() {
    super.move();
    angle += rotationSpeed;
  }

  void show() {
    pushMatrix();
    translate(getMyCenterX(), getMyCenterY());
    rotate(radians(angle));
    stroke(asteroidColor, 120);
    strokeWeight(4);
    noFill();
    beginShape();
    vertex(-20, -10);
    vertex(-10, -25);
    vertex(15, -20);
    vertex(25, -5);
    vertex(15, 15);
    vertex(-10, 25);
    vertex(-25, 5);
    endShape(CLOSE);
    fill(asteroidColor);
    noStroke();
    beginShape();
    vertex(-20, -10);
    vertex(-10, -25);
    vertex(15, -20);
    vertex(25, -5);
    vertex(15, 15);
    vertex(-10, 25);
    vertex(-25, 5);
    endShape(CLOSE);
    popMatrix();
  }

  float getX() { return getMyCenterX(); }
  float getY() { return getMyCenterY(); }
}
