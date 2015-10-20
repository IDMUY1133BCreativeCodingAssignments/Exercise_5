class Monster {
  float x;
  float y;
  color s1;
  color s2;
  color wo;
  float wi;
  float ta;
  int w;
  int h;
  Monster(float tempX,float tempY,color sk1,color sk2,color wort,float wide,float tall,int wid,int hei) {
    x=tempX;
    y=tempY;
    s1=sk1;
    s2=sk2;
    wo=wort;
    wi=wide;
    ta=tall;
    w=wid;
    h=hei;
  }
  void monsterBody() {
    smooth();

    curve(width/2 - 100 + x, width/2-100 + y, width/2 - 50 + x, width/2-200 + y, width/2 + 10 + x, width/2 -100 +y, width/2 -20 + x, width/2 + 20 + y); //left antenna
    curve(width/2 + 120 + x, width/2-80 + y, width/2 + 50 + x, width/2-200 + y, width/2 - 10 + x, width/2 - 100 + y, width/2 -20 + x, width/2 + 40 + y); //right antenna
    fill(s1); //darker green
    ellipse(width/2 + x, width/2 + y, wi, ta); //body
    fill(wo); // purple
    noStroke(); 
    ellipse(width/2 - 20 + x, width/2 + 30 + y, 20, 10);  //wart
  }
  void monsterHead() {
    fill(s2); // lighter green
    stroke(0); 
    ellipse(width/2 + x, width/2 - 120 + y, w, h); //head
    fill(0);
    rect(width/2 - 25 + x, width/2 - 105 + y, 60, 1); //mouth
    fill(255);
    triangle(width/2 + 15 + x, width/2 - 90 + y, width/2 + x, width/2-105 + y, width/2 + 30 + x, width/2 - 105 + y); //tooth
    monsterEye(wanderX, wanderY);
    fill(60, 189, 64); //lighter green
    ellipse(width/2 - 50 + x, width/2 - 200 + y, 20, 20); // left antenna point
    ellipse(width/2 + 50 + x, width/2 - 200 + y, 20, 20); // right antenna point
    noFill();
  }
  void monsterEye(float wX, float wY) {
    fill(193, 255, 64); //greenish yellow
    ellipse(width/2 - 15 + x, width/2 - 120 + y, 15, 15); //left eye
    ellipse(width/2 + 25 + x, width/2 - 120 + y, 15, 15); //right eye
    fill(0);
    ellipse(width/2 - 15 + wX + x, width/2 - 120 + wY + y, 5, 5); //left pupil
    ellipse(width/2 + 25 + wX + x, width/2 - 120 + wY + y, 5, 5); //right pupil
    noFill();
  }
}