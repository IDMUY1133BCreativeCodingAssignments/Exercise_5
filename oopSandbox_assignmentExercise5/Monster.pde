class Monster {

  //declare variables or data types
  color skin, wart;    // no accessible outside the class. Only internally.
  float xLoc;  // accessible outside the class, using the dot syntax
  float yLoc;
  float d;
  int w = width;

  // this is the class constructor. this is called
  // with the "new" line in the main code
  Monster() {  

    d = random(50, 250);
    xLoc = random(-400, 400);
    yLoc = random(-400, 400);

    // here, we are exchanging the values passed in for their local names
    // this ensures better use and control of variables - ie, what can
    // change a variable and what can't at any given time
  }

  //all methods go below constructor
  void monsterBody(int wide, int tall) {

    smooth();

    skin = color(random(255), random(255), random(255));
    wart = color(random(255), random(255), random(255));

    frameRate(0);

    curve(w/2 - 100 + xLoc, w/2-100 + yLoc, w/2 - 50 + xLoc, w/2-200 + yLoc, w/2 + 10 + xLoc, w/2 -100 + yLoc, w/2 -20 + xLoc, w/2 + 20 + yLoc); //left antenna
    curve(w/2 + 120 + xLoc, w/2-80 + yLoc, w/2 + 50 + xLoc, w/2-200 + yLoc, w/2 - 10 + xLoc, w/2 - 100 + yLoc, w/2 -20 + xLoc, w/2 + 40 + yLoc); //right antenna
    fill(skin); //darker green
    ellipse(w/2 + xLoc, w/2 + yLoc-100, wide, tall); //body  120, 160
    fill(wart); // purple
    noStroke(); 
    ellipse(w/2  + xLoc, w/2 - 30 + yLoc-65, wide/2, tall/2);  //wart
  }

  //this will allow user to move monsters with the mouse
  void update() {
    if ((dist(xLoc, yLoc, mouseX, mouseY) < d/2) && mousePressed) {
      xLoc= xLoc + (mouseX - pmouseX);
      yLoc = yLoc + (mouseY - pmouseY);
    }
  }


}