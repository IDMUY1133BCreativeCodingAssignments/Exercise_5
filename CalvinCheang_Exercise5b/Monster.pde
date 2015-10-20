class Monster {

  int w = 800;
  int ang = 45;
  float wanderX = 0;
  float wanderY = 0;
  float x, y;
 // color s1 = color(60, 189, 64); //greenish yellow
 // color s2 = color(59, 220, 64); //lighter green
  color k1, k2;
  color wort;// = color(181, 35, 203); // purple wart

  //this is the class constructor. this is called
  //with the "new" line in the main code
  Monster(float tempX, float tempY, color sk1, color sk2, color wort_) {
    x = tempX;
    y = tempY;
    wort = wort_;
    k1 = sk1;
    k2 = sk2;
    
  }
  //all the methods go below the constructor

  void update() {
    wanderX = map(mouseX, 0, width, -5,5);
    print("wanderX is ");
    println(wanderX);
    wanderY = map(mouseY, 0, height, 0, 0);
  }

  void monsterBody(int wide, int tall) {
    smooth();

    curve(w/2 - 100 + x, w/2-100 + y, w/2 - 50 + x, w/2-200 + y, w/2 + 10 + x, w/2 -100 + y, w/2 -20 + x, w/2 + 20 + y); //left antenna
    curve(w/2 + 120 + x, w/2-80 + y, w/2 + 50 + x, w/2-200 + y, w/2 - 10 + x, w/2 - 100 + y, w/2 -20 + x, w/2 + 40 + y); //right antenna
    fill(k2); //darker green
    ellipse(w/2 + x, w/2 + y, wide, tall); //body 120, 160
    fill(wort); // purple
    noStroke(); 
    ellipse(w/2 - 20 + x, w/2 + 30 + y, 20, 10);  //wart
  }

  void head(int wid, int hei) {
    fill(k2); // lighter green
    stroke(0); 
    ellipse(w/2 + x, w/2 - 120 + y, wid, hei); //head 100,80
    fill(0);
    rect(w/2 - 25 + x, w/2 - 105 + y, 60, 1); //mouth
    fill(255);
    triangle(w/2 + 15 + x, w/2 - 90 + y, w/2 + x, w/2-105 + y, w/2 + 30 + x, w/2 - 105 + y); //tooth
    eye(wanderX, wanderY);
    fill(k1); //lighter green
    ellipse(w/2 - 50 + x, w/2 - 200 + y, 20, 20); // left antenna point
    ellipse(w/2 + 50 + x, w/2 - 200 + y, 20, 20); // right antenna point
    noFill();
  }

  void eye(float wX, float wY) {
    fill(k1); //greenish yellow
    ellipse(w/2 - 15 + x, w/2 - 120 + y, 15, 15); //left eye
    ellipse(w/2 + 25 + x, w/2 - 120 + y, 15, 15); //right eye
    fill(0);
    ellipse(w/2 - 15 + wX + x, w/2 - 120 + wX + y, 5, 5); //left pupil
    ellipse(w/2 + 25 + wX + x, w/2 - 120 + wX + y, 5, 5); //right pupil
    noFill();
  }
}