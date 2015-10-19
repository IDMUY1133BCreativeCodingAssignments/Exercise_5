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

Monster fred;
Monster jerry;
Monster ronda;
Monster ted;
Monster wanda;



void setup(){
  background(255);
  size(800,800);
}

void draw(){
  fred = new Monster(100,400,200,200,200);
  fred.monsterBody(20,20);
  jerry = new Monster(200,400,10,10,10);
  jerry.monsterBody(50,50);
  ronda = new Monster(300,400,50,50,50);
  ronda.monsterBody(100,100);
  ted = new Monster(450,400,70,70,70);
  ted.monsterBody(150,150);
  wanda = new Monster(600,400,100,100,100);
  wanda.monsterBody(200,200);
  
}