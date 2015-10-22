class Monster {

  //declare variables or data types
  private color skin1, skin2, blink, wort;    // no accessible outside the class. Only internally.
  float x, y, wanderX, wanderY, percentScale;  // accessible outside the class, using the dot syntax
  //boolean button;
  int w;

  // this is the class constructor. this is called
  // with the "new" line in the main code
  Monster(float tempX, float tempY, color sk1, color sk2, color wort_) { 
    // here, we are exchanging the values passed in for their local names
    // this ensures better use and control of variables - ie, what can
    // change a variable and what can't at any given time

    skin1 = sk1;
    skin2 = sk2;
    blink = sk1;
    wort = wort_;
    x = tempX;
    y = tempY;
    w = 800;
  }

  // all the methods go below the constructor
  void monsterBody(int wide, int tall) {
    fill(skin1); //parameter 3
    ellipse(w/2 + x, w/2 + y, wide/2, tall/2); 
    fill(wort); // parameter 5
    stroke(1); 
    ellipse(w/2 - 20 + x, w/2 + 30 + y, 20, 10);  //wart
  }

  void head(int wid, int hei) {
    fill(skin2); // lighter green
    stroke(0); 
    rect(w/2 + x, w/2 - 120 + y, wid, hei); 
    fill(0);
    ellipse(w/2 +50+ x, w/2 - 105 + y, 60, 30); 
    fill(255, 0, 0);
    triangle(w/2 + 50 + x, w/2 - 90 + y, w/2 + x+50, w/2-105 + y, w/2 + 30 + x+50, w/2 - 105 + y); //tooth
    eyes(wanderX, wanderY); //pass anything as parameters, only restricted to number of how many
    fill(60, 189, 64); //lighter green
    //ellipse(w/2 - 50 + x, w/2 - 200 + y, 20, 20); // left antenna point
    //ellipse(w/2 + 50 + x, w/2 - 200 + y, 20, 20); // right antenna point
    noFill();
  }

  void eyes(float wX, float wY) {
    fill(193, 255, 64); //greenish yellow
    ellipse(w/2 +35 + x, w/2 - 120 + y, 15, 15); //left eye
    ellipse(w/2 + 75 + x, w/2 - 120 + y, 15, 15); //right eye
    fill(0);
    ellipse(w/2 +35 + wX + x, w/2 - 120 + wY + y, 5, 5); //left pupil
    ellipse(w/2 + 75 + wX + x, w/2 - 120 + wY + y, 5, 5); //right pupil
    noFill();
  }
}