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
Monster blob;
Monster scream ;
Monster spooky;
Monster boo;

void setup(){
  background(255);
  size(800, 800);
  fred = new Monster(2,3,color(20,30,40),color(20,20,20),color(30,200,200));    //all the different monsters
  blob = new Monster(10,3,color(10,0,20),color(50,55,20),color(10,40,200));
  scream = new Monster(3,4,color(255,200,20),color(50,0,200),color(210,200,20));
  spooky = new Monster(2,6,color(255,200,205),color(30,200,100),color(10,10,300));
  boo= new Monster(2,20,color(40,100,100),color(200,200,100),color(1,255,255));  
}


void draw(){
  background(255);
  
  
  fred.move(100,300);
  fred.monsterBody(180,80);
  blob.move(400,-20);
  blob.monsterBody(300,200);
  scream.move(-300,20);
  scream.monsterBody(180,180);
  spooky.move(40,50);
  spooky.monsterBody(70,200);
  boo.move(-200,40);
  boo.monsterBody(200,200);
}