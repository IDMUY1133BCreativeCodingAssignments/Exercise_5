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


//ADD ARRAYS

Monster fred, jerry, ronda, chelsea, julia;


void setup() {
  background(255);
  size(800, 800);

  fred = new Monster();
  jerry = new Monster();
  ronda = new Monster();
  chelsea = new Monster();
  julia = new Monster();
}

void draw() {

  fred.monsterBody(20, 20);
  fred.update();

  jerry.monsterBody( 50, 200);
  jerry.update();

  ronda.monsterBody( 200, 100);
  ronda.update();

  chelsea.monsterBody( 100, 300);
  chelsea.update();

  julia.monsterBody( 100, 100);
  julia.update();
}