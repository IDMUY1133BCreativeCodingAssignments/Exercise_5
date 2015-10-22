class Monster {

  //declare variables or data types
  private color skin, wart;    // no accessible outside the class. Only internally.
  float tempX, tempY, wanderX, wanderY;  // accessible outside the class, using the dot syntax
  int w = width;

  // this is the class constructor. this is called
  // with the "new" line in the main code
  Monster(float tempX, float tempY) {  

    // here, we are exchanging the values passed in for their local names
    // this ensures better use and control of variables - ie, what can
    // change a variable and what can't at any given time

    skin = color(random(255), random(255), random(255));
    wart = color(random(255), random(255), random(255));

    frameRate(0);
  }

  //all methods go below constructor
  void monsterBody(float x, float y, int wide, int tall) {

    smooth();

    curve(w/2 - 100 + x, w/2-100 + y, w/2 - 50 + x, w/2-200 + y, w/2 + 10 + x, w/2 -100 + y, w/2 -20 + x, w/2 + 20 + y); //left antenna
    curve(w/2 + 120 + x, w/2-80 + y, w/2 + 50 + x, w/2-200 + y, w/2 - 10 + x, w/2 - 100 + y, w/2 -20 + x, w/2 + 40 + y); //right antenna
    fill(skin); //darker green
    ellipse(w/2 + x, w/2 + y-100, wide, tall); //body  120, 160
    fill(wart); // purple
    noStroke(); 
    ellipse(w/2  + x, w/2 - 30 + y-65, wide/2, tall/2);  //wart
  }

  void display(int t){
    frameRate(10);
    pushMatrix();
    translate(tempX + t, tempY + t*2);
    popMatrix();
  }
  
  void autoMove(float m) {
    frameRate(10);
    tempX = tempX + m;
    if (tempX > -400) {
      tempX = 400;  /* -200 isn't arbitrary. It's around the value
       when the shape falls off the screen, which
       is based on it's coordinates & graphics
       */
    }
  }

  void interact(float z) {
    if (keyPressed) {
      if (key == '1') {
        tempX = tempX -z;
      }
      if (key == '2') {
        tempX = tempX + z;
      }
    }
  }
}