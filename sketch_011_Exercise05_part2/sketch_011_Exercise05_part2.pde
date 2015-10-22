/* This assignment is to recreate 5 different monsters
  each one should be a different color and shape
  */
 //int body1 = random(255), random(255), random(255);
 //int body2 = random(255), random(255), random(255);
 
 Monster red, blue, yellow, green, purple;
  
void setup(){
  
  size(1000, 1000);
  
  purple = new Monster(0, 0, 100, 50, 200, 230, 189, 250);
  red = new Monster(0, 0, 186, 42, 53,184, 134, 130);
  blue = new Monster(0, 0, 83, 98, 186, 108, 171, 184);
  yellow = new Monster(0, 0, 254, 232, 47, 254, 232, 200);
  green = new Monster(0, 0, 200, 220, 64, 59, 220, 64);
  
  
} //end setup


void draw(){
  
  background(255);
  
  pushMatrix();
    translate(-50, -100);
    red.monsterBody(5, 70);
    red.monsterHead(100, -10);
  popMatrix();
  
  pushMatrix();
    translate(-100, 250);
    purple.monsterBody(50, 10);
    purple.monsterHead(20, -50);
  popMatrix();
  
  pushMatrix();
    translate(200, 530);
    blue.monsterBody(55, 5);
    blue.monsterHead(10, 30);
  popMatrix();
  
  pushMatrix();
    translate(550, -140);
    green.monsterBody(5, 10);
    green.monsterHead(0, 0);
  popMatrix();
  
  pushMatrix();
    translate(600, 250);
    yellow.monsterBody(5, 10);
    yellow.monsterHead(50, -10);
  popMatrix();
  
} //end draw