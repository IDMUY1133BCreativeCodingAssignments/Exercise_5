class Monster {
  private color skin1,skin2,wort;
  float x,y,wanderX, wanderY;
  int w;
  // this is a class constructor, this is called with the "new" line in the main code
  Monster(float tempX, float tempY, color sk1, color sk2, color wort) {
    float x = tempX;
    float y = tempY;
    color skin1 =sk1;
    color skin2 = sk2;
    color wort= wort;
  }
  // all methods go under the constructor
  void monsterBody(int wide, int tall) {
    smooth();

    curve(w/2 - 100 + x, w/2-100 + y, w/2 - 50 + x, w/2-200 + y, w/2 + 10 + x, w/2 -100 + y, w/2 -20 + x, w/2 + 20 + y); //left antenna
    curve(w/2 + 120 + x, w/2-80 + y, w/2 + 50 + x, w/2-200 + y, w/2 - 10 + x, w/2 - 100 + y, w/2 -20 + x, w/2 + 40 + y); //right antenna
    fill(skin1); //darker green
    ellipse(w/2 + x, w/2 + y, wide, tall); //body 120, 160
    fill(wort); // purple
    noStroke(); 
    ellipse(w/2 - 20 + x, w/2 + 30 + y, 20, 10);  //wart
  } // end of monster body

  void head(int wid, int hei) {
    fill(59, 220, 64); // lighter green
    stroke(0); 
    ellipse(w/2 + x, w/2 - 120 + y, wid, hei); //head 100, 80
    fill(0);
    rect(w/2 - 25 + x, w/2 - 105 + y, 60, 1); //mouth
    fill(255);
    triangle(w/2 + 15 + x, w/2 - 90 + y, w/2 + x, w/2-105 + y, w/2 + 30 + x, w/2 - 105 + y); //tooth
    eye(wanderX, wanderY);
    fill(skin2); //lighter green
    ellipse(w/2 - 50 + x, w/2 - 200 + y, 20, 20); // left antenna point
    ellipse(w/2 + 50 + x, w/2 - 200 + y, 20, 20); // right antenna point
    noFill();
  } // end of head

  void eye(float wX, float wY) {
    fill(193, 255, 64); //greenish yellow
    ellipse(w/2 - 15 + x, w/2 - 120 + y, 15, 15); //left eye
    ellipse(w/2 + 25 + x, w/2 - 120 + y, 15, 15); //right eye
    fill(0);
    ellipse(w/2 - 15 + wX + x, w/2 - 120 + wY + y, 5, 5); //left pupil
    ellipse(w/2 + 25 + wX + x, w/2 - 120 + wY + y, 5, 5); //right pupil
    noFill();
  } // end of eye
} // end of class