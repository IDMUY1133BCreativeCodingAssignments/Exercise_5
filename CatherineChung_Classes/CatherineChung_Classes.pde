//class variables
Monster fred;
Monster george;
Monster bob;
Monster harold; 
Monster sharkeisha; 

int w = 800;
int ang = 45;
float wanderX = 0;
float wanderY = 0;
float x, y;
//color s1 = color(60, 189, 64); //greenish yellow
//color s2 = color(59, 220, 64); //lighter green
//color blink = s1;
//color wort = color(181, 35, 203); // purple wart

void setup(){
  background(255);
  size(800,800);

}

void draw(){
  //light blue head monster 
fred = new Monster(400,300,color(12,162,232),color(43,124,42), color(181,32,53));
fred.monsterBody(220,160);
fred.head(30,80);
//dark brown long head monster 
george = new Monster(-200,100,color(54,32,12), color(232,69.12), color(13,255,190));
george.monsterBody(200,100);
george.head(90,234);
//small blue head monster (farthest left)
bob = new Monster(-300,200, color(25,13,255), color(76,34,93), color(43,89,9));
bob.monsterBody(200,210);
bob.head(40,40);
//upper right light brown head monster 
harold = new Monster(200,-220, color(98,74,31), color(10,23,83),color(31,49,39));
harold.monsterBody(300,150);
harold.head(120,70);
//dark blue head monster 
sharkeisha = new Monster(-80,200, color(23,19,89), color(130,12,242),color(40,39,90));
sharkeisha.monsterBody(210,150);
sharkeisha.head(50,100);



}