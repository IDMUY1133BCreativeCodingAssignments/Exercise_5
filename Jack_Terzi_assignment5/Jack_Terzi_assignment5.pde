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

float wanderX = 0;// i don't know what these are doing here.
float wanderY = 0;


// these are names of the monsters i'm talking about
Monster fred;
Monster john;
Monster bob;
Monster jack;
Monster harry;


color monb1= color(59, 275, 64); //i put these colors here because i thought it would be easier 
color monh1= color(59, 275, 64);// than putting all the colors inside the monster parameters... it wasn't


void setup() {
  background(255);// white background
  size(1000, 1000);// big box
  
  
  //these are my five monsters. they are all very different from each other. They all wound up in the same class.
  //they found they have one thing in common. A black mole on the lower left side of their bodies
  //this part of the code looks into the Monsters class
  fred = new Monster(300, 200, monb1, monh1, color(0));
  john = new Monster( 100, 100, 200, 200, color(0));
  bob = new Monster(-200, 200, color(210, 28, 19), color(19, 110, 110), color(0));
  jack = new Monster(0, -175, color(15, 30, 220), color(220, 42, 19), color(0));
  harry= new Monster(0, 300, color(12, 150, 150), color(150, 10, 150), color(0));
}


void draw() {

  // fred is a fatter monster but at least he's proportional
  fred.eye(0, 0);
  fred.monsterBody(200, 150);
  fred.head(100, 80);

  //john is the average weight but his head is a bit too skinny
  john.eye(0, 0);
  john.monsterBody(125, 150);
  john.head(50, 80);

  //bob has a football head that is too big for his body
  bob.eye(0, 0);
  bob.monsterBody(75, 120);
  bob.head(200, 100);
  // jack has a big head, he thinks he's a genius because of it but more often it will give him big headaches
  jack.eye(0, 0);
  jack.monsterBody(74, 100);
  jack.head(200, 150);
  //harry has a bit of a hunch back but is still much bigger than his friends
  harry.eye(0, 0);
  harry.monsterBody(200, 300);
  harry.head(50, 65);
}