class Monster {
  int w = 800;
  int ang = 45;
  float wanderX = 0;
  float wanderY = 0;
  float x, y;
  color s1 = color(60, 189, 64); //greenish yellow
  color s2 = color(59, 220, 64); //lighter green
  color blink = s1;
  color wort = color(181, 35, 203); // purple wart
  color s3 = color(59, 275, 64); //darker green
  int fat = 120; //body width
  int tall = 160; //body height
  int wartfat = 20; //wart width
  int warttall = 10; //wart height
  float wartX = w/2 - 20 + x; //not used
  float wartY = w/2 + 30 + y; //not used
  int headfat = 30; //head width
  int headtall = 80; //head height
  int antennafat = 20; //antenna end width
  int antennatall = 20; //antenna end height
  color s4 = color(0); //pupil
  color s5 = color(0); //pupil outline
  color s6 = color(0); //mouth color
  color s7 = color(59, 220, 64); //antenna end color
  int antennamove = antennatall - 1;
  int antennaweightloss = antennafat - 1;
  int fatweightloss = fat - 3;

  void recolor() {
    s1 = color(100, 100, 100);
    s2 = color(0, 0, 255);
    s3 = color(150, 30, 255);
    fat = 75;
    tall = 150;
    wartfat = 10;
    warttall = 10;
    headfat = 90;
    headtall = 50;
    antennatall = antennatall + 1;
    if(antennatall > 30){
      antennatall = antennamove;
    }
    if(antennatall < 10){
      antennatall = antennatall + 1;
    }
      antennafat = antennafat + 1;
    if(antennafat > 30){
      antennafat = antennaweightloss;
    }
    if(antennafat < 10){
      antennafat = antennafat + 1;
    }
  }
  
    void colordude() {
    s1 = color(255, 255, 255);
    s2 = color(0, 0, 0);
    s3 = color(0, 0, 0);
    s4 = color(255);
    s5 = color(0);
    s6 = color(255);
    fat = 100;
    tall = 140;
    wartfat = 20;
    warttall = 20;
    headfat = 55;
    headtall = 160;
    wort = 0;
    antennafat = 10;
    antennatall = 10;
    if(wartfat < 30){
      s4 = color(random(0, 255));
      s7 = color(random(0, 255), random(0, 255), random(0, 255));
    }
  }
  void colorinstuff(){
    s1 = color(115, 36, 8);
    s2 = color(32, 43, 115);
    s3 = color(32, 43, 115);
    s4 = color(255, 0, 0);
    s5 = color(0);
    s7 = color(255, 0, 0);
    fat = 160;
    tall = 160;
    wartfat = 20;
    warttall = 20;
    headfat = 70;
    headtall = 70;
    wort = 255;
    antennafat = 30;
    antennatall = 10;
    fill(255);
    ellipse(555, 730, 20, 20);
    if(fat > 0){
    s7 = color(random(0, 255));
    }
  }
  void colorreddit(){
    s1 = color(255, 0, 0);
    s2 = color(255);
    s3 = color(255);
    s4 = color(255, 0, 0);
    s5 = color(0);
    s7 = color(255);
    fat = 100;
    tall = 160;
    wartfat = 20;
    warttall = 20;
    headfat = 110;
    headtall = 80;
    wort = color(255);
    antennafat = 20;
    antennatall = 20;
    fill(255);
    ellipse(260, 690, 70, 30);
    ellipse(340, 690, 70, 30);
    ellipse(370, 590, 30, 90);
    ellipse(230, 590, 30, 90);
  }
  void colormeimpressed(){
    s1 = color(10, 183, 165);
    s2 = color(232, 215, 89);
    s3 = color(232, 215, 89);
    s4 = color(255);
    s5 = color(255);
    s7 = color(10, 183, 165);
    //fat = 40;
    tall = 40;
    wartfat = 20;
    warttall = 20;
    headfat = 110;
    headtall = 110;
    wort = color(10, 183, 165);
    antennafat = 35;
    antennatall = 35;
    fill(232, 215, 89);
    ellipse(200, 250, 55, 55);
      fat = fat + 3;
    if(fat > 170){
      fat = fatweightloss;
    }
    if(fat < 70){
      fat = fat + 3;
    }
  }

  Monster(float tempX, float tempY, color sk1, color sk2, color wort_) {
    println("we made a monster");
    blink = sk1;
    wort = wort_;
    x = tempX;   
    y = tempY;
  }


  void update() {
    monsterBody(fat, tall);
    head(headfat, headtall);
    wanderX = map(mouseX, 0, width, -5, 5);
    println("wanderX is");
    println(wanderX);
    wanderY = map(mouseX, 0, height, -5, 5);
  }

  void monsterBody(int wide, int tall) {
    smooth();

    curve(w/2 - 100 + x, w/2-100 + y, w/2 - 50 + x, w/2-200 + y, w/2 + 10 + x, w/2 -100 + y, w/2 -20 + x, w/2 + 20 + y); //left antenna
    curve(w/2 + 120 + x, w/2-80 + y, w/2 + 50 + x, w/2-200 + y, w/2 - 10 + x, w/2 - 100 + y, w/2 -20 + x, w/2 + 40 + y); //right antenna
    fill(s3); //darker green
    ellipse(w/2 + x, w/2 + y, wide, tall); //body 120, 160
    fill(wort); // purple
    noStroke(); 
    ellipse(w/2 - 20 + x, w/2 + 30 + y, wartfat, warttall);  //wart
  }

  void head(int wid, int hei) {
    fill(s2); // lighter green
    stroke(0); 
    ellipse(w/2 + x, w/2 - 120 + y, wid, hei); //head 100, 80
    fill(s6);
    rect(w/2 - 25 + x, w/2 - 105 + y, 60, 1); //mouth
    fill(255);
    triangle(w/2 + 15 + x, w/2 - 90 + y, w/2 + x, w/2-105 + y, w/2 + 30 + x, w/2 - 105 + y); //tooth
    eyes(wanderX, wanderY);
    stroke(0);
    fill(s7); //lighter green
    ellipse(w/2 - 50 + x, w/2 - 200 + y, antennafat, antennatall); // left antenna point
    ellipse(w/2 + 50 + x, w/2 - 200 + y, antennafat, antennatall); // right antenna point
    noFill();
  }
  void eyes(float wX, float wY) {
    //eye
    fill(s1); //greenish yellow
    ellipse(w/2 - 15 + x, w/2 - 120 + y, 15, 15); //left eye
    ellipse(w/2 + 25 + x, w/2 - 120 + y, 15, 15); //right eye
    fill(s4);
    stroke(s5);
    ellipse(w/2 - 15 + wX + x, w/2 - 120 + wY + y, 5, 5); //left pupil
    ellipse(w/2 + 25 + wX + x, w/2 - 120 + wY + y, 5, 5); //right pupil
    noFill();
  }
}