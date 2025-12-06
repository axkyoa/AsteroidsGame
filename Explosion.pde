class Explosion {
  
  ArrayList<Particle> parts = new ArrayList<Particle>();
  boolean finished = false;
  Explosion(float x, float y, color c) {
    for (int i = 0; i < 30; i++) {
      parts.add(new Particle(x, y, c));
    }
  }
  void update() {
    finished = true;
    for (Particle p : parts) {
      p.update();
      p.show();
      if (!p.done) finished = false;
    }
  }
}
