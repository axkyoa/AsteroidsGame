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

    noStroke();
    fill(255, 0, 0);

    
    int s = 5; 
    int[][] heart = {
      {0,0,1,0,1,0,0},
      {0,1,1,1,1,1,0},
      {1,1,1,1,1,1,1},
      {1,1,1,1,1,1,1},
      {0,1,1,1,1,1,0},
      {0,0,1,1,1,0,0},
      {0,0,0,1,0,0,0}
    };

    for (int y = 0; y < heart.length; y++) {
      for (int x = 0; x < heart[y].length; x++) {
        if (heart[y][x] == 1) {
          rect((x - 3) * s, (y - 3) * s, s, s);
        }
      }
    }
    popMatrix();
  }
  PVector getFirePosition() {
    float s = 5;
    float fx = getMyCenterX();
    float fy = getMyCenterY() - 3 * s;
    return new PVector(fx, fy);
  }
}
