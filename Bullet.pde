
class Bullet extends Floater {

  Bullet(float startX, float startY) {
    setMyCenterX(startX);
    setMyCenterY(startY);

    setMyXspeed(0);
    setMyYspeed(-10);
  }
  void show() {
    pushMatrix();
    translate(getMyCenterX(), getMyCenterY());
    stroke(255);
    strokeWeight(3);
    line(0, -5, 0, 5);
    popMatrix();
  }
  void move() {
    super.move();
  }
}
