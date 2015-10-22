Creature akshay;
Creature nikhil;
Creature bing;
Creature alivia;
Creature mo;


void setup(){
  size(1000,1000);
  
} // end of setup

void draw(){
  background(255);
  
  // 1st green creature left top row
  akshay = new Creature(10,50,124,213,48,60,156,222,223,156,222);
  akshay.monsterBody(70,200);
  akshay.monsterBodyEye();
  
  
  //2nd orange creature left bottom row
  nikhil = new Creature(110,340,235,129,56,61,235,127,58,79,235);
  nikhil.monsterBody(120,80);
  nikhil.monsterBodyEye();
  
  //3rd purple creature aka middle top row
  bing = new Creature(310,8,93,40,138,235,119,140,235,231,115);
  bing.monsterBody(250,160);
  bing.monsterBodyEye();
 
  //4th red creature right top row
  alivia = new Creature(600,55,212,60,30,199,51,78,95,181,37);
  alivia.monsterBody(20,280);
  alivia.monsterBodyEye();

  //5th pink creature right bottom row
  mo = new Creature(600,365,242,18,242,242,133,53,126,242,181);
  mo.monsterBody(33,130);
  mo.monsterBodyEye();
  
  
  
} // end of draw