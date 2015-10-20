class Monster {

  //declare variables or data types
  private color skin1, skin2, skin3, blink, wort;    // no accessible outside the class. Only internally.
  float x, y, wanderX, wanderY, percentScale;  // accessible outside the class, using the dot syntax
  boolean button;
  int w;

  // this is the class constructor. this is called
  // with the "new" line in the main code
  Monster(float tempX, float tempY, color sk1, color sk2, color sk3, color wort_) {
    println("we made a monster"); 
    // here, we are exchanging the values passed in for their local names
    // this ensures better use and control of variables - ie, what can
    // change a variable and what can't at any given time

    skin1 = sk1;
    skin2 = sk2;
    skin3 = sk3;
    blink = sk1;
    wort = wort_;
    x = tempX;
    y = tempY;
    w = width;
  }

  // all the methods go below the constructor

  void update() {

    wanderX = map(mouseX, 0, width, -5, 5);
    //print("wanderX is  ");
    //println(wanderX);
    wanderY = map(mouseX, 0, width, -1, 1);
  }


  void monsterBody(int wide, int tall) {

    smooth();

    curve(w/2 - 100 + x, w/2-100 + y, w/2 - 50 + x, w/2-200 + y, w/2 + 10 + x, w/2 -100 + y, w/2 -20 + x, w/2 + 20 + y); //left antenna

    curve(w/2 + 120 + x, w/2-80 + y, w/2 + 50 + x, w/2-200 + y, w/2 - 10 + x, w/2 - 100 + y, w/2 -20 + x, w/2 + 40 + y); //right antenna

    fill(skin1); //darker green

    ellipse(w/2 + x, w/2 + y, wide, tall); //body  120, 160

    fill(wort); // purple

    noStroke(); 

    ellipse(w/2 - 20 + x, w/2 + 30 + y, 20, 10);  //wart
  }

  void head(int wid, int hei) {
    fill(skin2); // lighter green
    stroke(0); 
    ellipse(w/2 + x, w/2 - 120 + y, wid, hei); //head  // 100, 80
    fill(0);
    rect(w/2 - 25 + x, w/2 - 105 + y, 60, 1); //mouth
    fill(255);
    triangle(w/2 + 15 + x, w/2 - 90 + y, w/2 + x, w/2-105 + y, w/2 + 30 + x, w/2 - 105 + y); //tooth
    eye(wanderX, wanderY);
    fill(skin3); //lighter green
    ellipse(w/2 - 50 + x, w/2 - 200 + y, 20, 20); // left antenna point
    ellipse(w/2 + 50 + x, w/2 - 200 + y, 20, 20); // right antenna point
    noFill();
  }


  void eye(float wX, float wY) {
    //eye
    if (mousePressed == true) {
      fill(blink);
      ellipse(w/2 - 15 + x, w/2 - 120 + y, 15, 15); //left eye
      ellipse(w/2 + 25 + x, w/2 - 120 + y, 15, 15); //right eye
      
    } else {
      fill(193, 255, 64); //greenish yellow
      ellipse(w/2 - 15 + x, w/2 - 120 + y, 15, 15); //left eye
      ellipse(w/2 + 25 + x, w/2 - 120 + y, 15, 15); //right eye
      fill(0);
      ellipse(w/2 - 15 + wX + x, w/2 - 120 + wY + y, 5, 5); //left pupil
      ellipse(w/2 + 25 + wX + x, w/2 - 120 + wY + y, 5, 5); //right pupil
      noFill();
    }}
  }