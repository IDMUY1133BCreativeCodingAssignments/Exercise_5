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

float wanderX = 0;
float wanderY = 0;

Monster[] monsters=new Monster[5];

void setup() {
  size(800, 800);
  for (int i=0; i<monsters.length; i++) {
    
    monsters[i]=new Monster(random(-200, 200),random(-200, 200),color(random(255), random(255),random(255)),color(random(255), random(255), random(255)),color(random(255), random(255), random(255)),random(100, 200),random(200, 300),int(random(100, 200)),int(random(100, 200)));
  }
}

void draw() {
  background(255);
  update();

  for (int i=0; i<monsters.length; i++) {
    monsters[i].monsterBody();
    monsters[i].monsterHead();
    monsters[i].monsterEye(wanderX,wanderY);
  }
}

void update() {
  wanderX=map(mouseX, 0, width, -5, 5);
  wanderY=map(mouseX, 0, width, -1, 1);
}