class Monster {
  //private color skin1, skin2, wort;
  public int col1x,col1y,col1z,col2x,col2y,col2z,col3x,col3y,col3z;
  public int x, y,a;
  int w;
  // this is a class constructor, this is called with the "new" line in the main code
  Monster(int tempX, int tempY,int ax, int ay, int az,int bx,int by,int bz, int cx, int cy, int cz) {
    col1x = ax;
    col1y = ay;
    col1z = az;
    col2x = bx;
    col2y = by;
    col2z = bz;
    col3x = cx;
    col3y = cy;
    col3z = cz;
    x = tempX;
    y = tempY;
    //skin1 = color(random(255), random(255), random(255));
    //skin2 = color(random(255), random(255), random(255));
    //wort = color(random(255), random(255), random(255));
  } // end of constructor
  
  // all methods go under the constructor
  void monsterBody(int wide, int tall) {
    smooth();
    curve(w/2 - 100 + x, w/2-100 + y, w/2 - 50 + x, w/2-200 + y, w/2 + 10 + x, w/2 -100 + y, w/2 -20 + x, w/2 + 20 + y); //left antenna
    curve(w/2 + 120 + x, w/2-80 + y, w/2 + 50 + x, w/2-200 + y, w/2 - 10 + x, w/2 - 100 + y, w/2 -20 + x, w/2 + 40 + y); //right antenna
    fill(col1x,col1y,col1z);
    //ellipse(900,a,10,10);
    ellipse(w/2 + x, w/2 + y, wide, tall); //body 120, 160
    fill(col2x,col2y,col2z); 
    noStroke(); 
    ellipse(w/2 - 20 + x, w/2 + 30 + y, 20, 10);  //wart
  } // end of monster body

  void head(int wid, int hei) {
    fill(col3x,col3y,col3z); // lighter green
    stroke(0); 
    ellipse(w/2 + x, w/2 - 120 + y, wid, hei); //head 100, 80
    fill(0);
    rect(w/2 - 25 + x, w/2 - 105 + y, 60, 1); //mouth
    fill(255);
    triangle(w/2 + 15 + x, w/2 - 90 + y, w/2 + x, w/2-105 + y, w/2 + 30 + x, w/2 - 105 + y); //tooth
    eye();
    fill(60,189,64); //lighter green
    ellipse(w/2 - 50 + x, w/2 - 200 + y, 20, 20); // left antenna point
    ellipse(w/2 + 50 + x, w/2 - 200 + y, 20, 20); // right antenna point
    noFill();
  } // end of head

  void eye() {
    fill(193, 255, 64); //greenish yellow
    ellipse(w/2 - 15 + x, w/2 - 120 + y, 15, 15); //left eye
    ellipse(w/2 + 25 + x, w/2 - 120 + y, 15, 15); //right eye
    fill(0);
    ellipse(w/2 - 15  + x, w/2 - 120  + y, 5, 5); //left pupil
    ellipse(w/2 + 25  + x, w/2 - 120 + y, 5, 5); //right pupil
    noFill();
  } // end of eye

} // end of class