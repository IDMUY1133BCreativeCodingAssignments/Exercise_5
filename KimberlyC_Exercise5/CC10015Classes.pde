Monster fred; 
Monster ryan;
Monster lindsey;
Monster lilith;
Monster hayley;
/* make a class called Monster
 a "class" is a datatype that has data and functionality
 think of a class as a "blueprint" for objects"
 !your classes should begin with a capital letter! */

float wanderX;
float wanderY;

void setup() {
  background(200, 200, 255);
  size(800, 800);
}

void draw() {
  wanderX = map(mouseX, 0, width, /*states the values that mouseX can be*/ -5, 5 /*remaps the mouseX between 0-width to -5 & 5*/); 
  //print("wanderX is ");
  //println(wanderX);
  wanderY = map(mouseY, 0, height, -5, 5);
  fred = new Monster(100, 200, color(10, 100, 10), color(220, 180, 200), color(100, 200, 100)); //new instance of 'Monster' named 'fred'
  fred.monsterBody(200, 80);
  fred.head(200, 200);
  fred.eyes(wanderX, wanderY);

  ryan = new Monster (-269, 170, color(69, 42, 200), color(42, 100, 69), color(13, 3, 7));
  ryan.monsterBody(180, 180);
  ryan.head(69, 100);
  ryan.eyes(wanderX, wanderY);

  lindsey = new Monster (0, -100, color(100, 200, 200), color(255, 127, 0), color(255, 255, 69));
  lindsey.monsterBody(80, 142);
  lindsey.head(300, 200);
  lindsey.eyes(wanderX, wanderY);

  lilith = new Monster (-200,300, color(255,0,0), color(0,255,0), color(0,0,255));
  lilith.monsterBody(120,70);
  lilith.head(100,300);
  lilith.eyes(wanderX, wanderY);
  
  hayley = new Monster (350,350, color(127,0,255), color(127), color(225,255,0));
  hayley.monsterBody(200,200);
  hayley.head(160,100);
  hayley.eyes(wanderX, wanderY);
}