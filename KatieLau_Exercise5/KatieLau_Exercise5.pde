/*

Finish transitioning the previous script where we created different functions,
to methods for the class. Then, by passing different parameters to the class constuctor
and the methods, make each object/instance of the object, be unique from the others.
Make at least 5 different monsters.
Take it further: use an array to store them, get some of them to move on input, etc.

THEN:
Take one of your former sketches (Exercise 1 is a good one) and translate it into classes.
Make multiple and different monsters. Add functionality to them (and your code!)

*/


Monster lilFred;
Monster debbie;
Monster clark;
Monster glenn;
Monster terry;

color grey = color(175);
color berry = color(178, 33, 84);
color green = color(147, 255, 156);
color white = color(255, 255, 255);

void setup(){
  background(255);
  size(800, 800);
  
}


void draw(){
  lilFred = new Monster(50, 50, berry, green, grey);
  lilFred.monsterBody(100, 200, 500);
  lilFred.update();
  lilFred.head(100, 80, 500);
  debbie = new Monster(100, 100, green, berry, grey);
  debbie.monsterBody(200, 300, 800);
  debbie.update();
  debbie.head(200, 160, 800);
  clark = new Monster(20, 200, white, green, berry);
  clark.monsterBody(100, 80, 300);
  clark.update();
  clark.head(50, 200, 300);
  glenn = new Monster(30, 600, white, grey, berry);
  glenn.monsterBody(100, 100, 100);
  glenn.update();
  glenn.head(80, 200, 100);
  terry = new Monster(700, 350, grey, berry, white);
  terry.monsterBody(80, 200, 20);
  terry.update();
  terry.head(30, 100 ,20);
}