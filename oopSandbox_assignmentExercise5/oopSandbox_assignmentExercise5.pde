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


}

void draw() {
  fred = new Monster(100, 100);
  fred.monsterBody(0, 0, 20, 20);
  jerry = new Monster(100, 100);
  jerry.monsterBody(200, 100, 50, 200);
  ronda = new Monster(150, 150);
  ronda.monsterBody(-200, 300, 200, 100);
  chelsea = new Monster(150, 150);
  chelsea.monsterBody(120, 300, 100, 300);
  julia = new Monster(150, 150);
  julia.monsterBody(-200, -150, 100, 100);


  chelsea.display(20);
  julia.interact(5);

}