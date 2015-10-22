Monster joey;
Monster kim;
Monster jen;
Monster isabel;
Monster rach;

void setup(){
  background(255);
  size(1000,1000);
}

void draw(){
  
 // 1st monster
 pushMatrix();
 joey = new Monster();
 joey.monsterBody(200,80);
 joey.head(40,100);
 popMatrix();
 
 // 2nd monster
 kim = new Monster();
 kim.monsterBody(300,120);
 kim.head(25,70);
 
 //3rd monster
 jen= new Monster();
 jen.monsterBody(175,50);
 jen.head(60,60);
 
 //4th monster
 isabel = new Monster();
 isabel.monsterBody(250,200);
 isabel.head(30,85);
 
 // 5th monster
 rach = new Monster();
 rach.monsterBody(400,150);
 rach.head(50,100);
 
 
}