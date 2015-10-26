class Monster {
  
   //declare variables or data types
  private color skin1, skin2, blink, wort;    // no accessible outside the class. Only internally.
  float x, y, wanderX, wanderY, percentScale;  // accessible outside the class, using the dot syntax
  boolean button;
  
  // this is the class constructor. this is called
  // with the "new" line in the main code
  Monster(float tempX, float tempY, color sk1, color sk2, color wort_) {
    println("we made a monster"); 
    // here, we are exchanging the values passed in for their local names
    // this ensures better use and control of variables - ie, what can
    // change a variable and what can't at any given time
    
    skin1 = sk1;
    skin2 = sk2;
    blink = sk1;
    wort = wort_;
    x = tempX;
    y = tempY;
    
  }
  void move(int move, int move2){
    
   x = move;
   y = move2;
  }
  // all the methods go below the constructor
  void monsterBody(int wide, int tall) {
    smooth();

    curve(width/2 - 100 + x, width/2-100 + y, width/2 - 50 + x, width/2-200 + y, width/2 + 10 + x, width/2 -100 + y, width/2 -20 + x, width/2 + 20 + y); //left antenna
    curve(width/2 + 120 + x, width/2-80 + y, width/2 + 50 + x, width/2-200 + y, width/2 - 10 + x, width/2 - 100 + y, width/2 -20 + x, width/2 + 40 + y); //right antenna
    fill(skin1); //darker green
    ellipse(width/2 + x, width/2 + y, wide, tall); //body  120, 160
    fill(wort); // purple
    noStroke(); 
    ellipse(width/2 - 20 + x, width/2 + 30 + y, 20, 10);  //wart
    
    fill(59, 220, 64); // lighter green head 
  stroke(0); 
  ellipse(width/2 + x, width/2 - 120 + y, 100, 80); //head
  fill(skin2);
  rect(width/2 - 25 + x, width/2 - 105 + y, 60, 1); //mouth
  fill(255);
  triangle(width/2 + 15 + x, width/2 - 90 + y, width/2 + x, width/2-105 + y, width/2 + 30 + x, width - 105 ); //tooth
 fill(wort); //greenish yellow
  ellipse(width/2 - 15 + x, width/2 - 120 + y, 15, 15); //left eye
  ellipse(width/2 + 25 + x, width/2 - 120 + y, 15, 15); //right eye
  fill(0);
  ellipse(width/2 - 15 + 0 + x, width/2 - 120 + 0 + y, 5, 5); //left pupil
  ellipse(width/2 + 25 + 0 + x, width/2 - 120 + 0 + y, 5, 5); //right pupil
  noFill();
    
    
  }
  
  
}