//Tab for the Monster class
//used some code from GitHub 

class Monster {
  /*everything in here is what will encompass the Monster
   this is the class constructor. this is called with the 
   "new" line in the main code*/
   
  private color skin1, skin2, blink, wort;    // no accessible outside the class. Only internally.
  float x, y, wanderX, wanderY, percentScale;  // accessible outside the class, using the dot syntax
  boolean button;
  
  Monster(float tempX, float tempY, color sk1, color sk2, color wort_) { //these are the parameters as variables
    color skin1 = sk1;
    color skin2 = sk2;
    float x = tempX;
    float y = tempY;
    color wort = wort_;
    
    //Why do we have to rename these variables?
  }

  /* all the methods go below the constructor */
  void monsterBody(int wide, int tall) { //calling local variables
    smooth();
    curve(width/2 - 100 + x, width/2-100 + y, width/2 - 50 + x, width/2-200 + y, width/2 + 10 + x, width/2 -100 + y, width/2 -20 + x, width/2 + 20 + y); //left antenna
    curve(width/2 + 120 + x, width/2-80 + y, width/2 + 50 + x, width/2-200 + y, width/2 - 10 + x, width/2 - 100 + y, width/2 -20 + x, width/2 + 40 + y); //right antenna
    fill(59, 275, 64); //darker green
    ellipse(width/2 + x, width/2 + y, wide, tall); //body 120, 160
    fill(wort); // purple
    noStroke(); 
    ellipse(width/2 - 20 + x, width/2 + 30 + y, 20, 10);  //wart
  }

  void head(int wid, int hei) {
    fill(59, 220, 64); // lighter green
    stroke(0); 
    ellipse(width/2 + x, width/2 - 120 + y, wid, hei); //head 100, 80
    fill(0);
    rect(width/2 - 25 + x, width/2 - 105 + y, 60, 1); //mouth
    fill(255);
    triangle(width/2 + 15 + x, width/2 - 90 + y, width/2 + x, width/2-105 + y, width/2 + 30 + x, width/2 - 105 + y); //tooth
    eyes(wanderX, wanderY); //pass anything as parameters, only restricted to number of how many
    fill(60, 189, 64); //lighter green
    ellipse(width/2 - 50 + x, width/2 - 200 + y, 20, 20); // left antenna point
    ellipse(width/2 + 50 + x, width/2 - 200 + y, 20, 20); // right antenna point
    noFill();
  }

  void eyes(float wX, float wY) {
    fill(193, 255, 64); //greenish yellow
    ellipse(width/2 - 15 + x, width/2 - 120 + y, 15, 15); //left eye
    ellipse(width/2 + 25 + x, width/2 - 120 + y, 15, 15); //right eye
    fill(0);
    ellipse(width/2 - 15 + wX + x, width/2 - 120 + wY + y, 5, 5); //left pupil
    ellipse(width/2 + 25 + wX + x, width/2 - 120 + wY + y, 5, 5); //right pupil
    noFill();
  }
}