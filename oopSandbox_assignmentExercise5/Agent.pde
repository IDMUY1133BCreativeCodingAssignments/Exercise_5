class Agent {
  float xLoc, yLoc;
  private float speed;
  int w, h;

  Agent(float _x, float _y, int wid, int hei) {
    xLoc = _x;
    yLoc = _y;
    w = wid;
    h = hei;
  } 
  void autoMove(float m) {
    xLoc = xLoc + m;
    if (xLoc > 300) {
      xLoc = -200;  /* -200 isn't arbitrary. It's around the value
       when the shape falls off the screen, which
       is based on it's coordinates & graphics
       */
    }
  }
  void display() {
    noFill();
    ellipse(xLoc, yLoc, w, h);
  }
  void interact(float num) {
  }
}