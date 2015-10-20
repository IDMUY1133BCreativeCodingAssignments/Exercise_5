class Thing {

  private int red, green, blue;
  int gridX, gridY;

  Thing(int maxred, int maxgreen, int maxblue) {

    red = maxred;
    green = maxgreen;
    blue = maxblue;
  }

  void strokeColor(color strk) {
    stroke(strk);
  }

  void subject(int x, int y, int spaceX, int spaceY, int ranX, int ranY) {

    for (gridX = x; gridX <= width-x; gridX += spaceX) {
      for (gridY = y; gridY <= height-y; gridY += spaceY) {
        fill(random(red), random(green), random(blue));
        ellipse(gridX, gridY, random(ranX), random(ranY));
      }
    }
  }
}