/* make a class called Monster
 a "class" is a datatype that has data and functionality
 think of a class as a "blueprint" for objects"
 !your classes should begin with a capital letter! */
 Monster fred, bill, bob, lucy, matt;
 float wanderX, wanderY;
 color wart = color(0);

void setup() {
  background(255);
  size(800, 800);
  
  //loading all the new monsters
  //color x = color(60, 189, 64);
  fred = new Monster(0, 0, 200, 220, 64, 59, 220, 64, wart);
  bill = new Monster(0, 0, 83, 98, 186, 108, 171, 184, wart);
  bob = new Monster(0, 0, 169, 57, 186,184, 160, 176, wart);
  lucy = new Monster(0, 0,186, 42, 53,184, 134, 130, wart);
  matt = new Monster(0, 0,254, 232, 47, 254, 232, 200, wart); //new instance of 'Monster' named 'matt'
}

void draw() { //calling all the monsters
  wanderX = map(mouseX, 0, width, -5, 5);
  wanderY = map(mouseY, 0, height, -5, 5);
  
  
  
  
  
  //fred: center green monster
  pushMatrix();
  //fred = new Monster(0, 0, color(60, 189, 64), color(59, 220, 64), wart); //new instance of 'Monster' named 'fred'
  fred.monsterBody(120, 160);
  fred.head(100, 80);
  fred.eyes(wanderX, wanderY);
  popMatrix();
  
   //these other monsters are not showing up...
  
  //bill: blue monster
  pushMatrix();
  translate(200, 200);
  //bill = new Monster(-200, -200, color(83, 98, 186), color(108, 171, 184), wart); //new instance of 'Monster' named 'bill'
  bill.monsterBody(300, 160);
  bill.head(50, 80);
  bill.eyes(wanderX, wanderY);
  popMatrix();
  
  //bob: purple monster
  pushMatrix();
  translate(300, -50);
  //bob = new Monster(0, 0, color(169, 57, 186), color(184, 160, 176), wart); //new instance of 'Monster' named 'bob'
  bob.monsterBody(40, 140);
  bob.head(130, 90);
  bob.eyes(wanderX, wanderY);
  popMatrix();
  
  //lucy: red monster
  pushMatrix();
  translate(-200, -150);
  //lucy = new Monster(0, 0, color(186, 42, 53), color(184, 134, 130), wart); //new instance of 'Monster' named 'lucy'
  lucy.monsterBody(80, 80);
  lucy.head(70, 100);
  lucy.eyes(wanderX, wanderY);
  popMatrix();
  
  //matt: yellow monster
  pushMatrix();
  translate(-300, 300);
  //matt = new Monster(-100, 100, color(254, 232, 47), color(254, 232, 200), wart); //new instance of 'Monster' named 'matt'
  matt.monsterBody(70, 120);
  matt.head(100, 120);
  matt.eyes(wanderX, wanderY);
  popMatrix();

}

//eyes don't move when the wanderX and wanderY are in the update function... work in draw function
/*void update(){ //updates where the mouse is
   wanderX = map(mouseX, 0, width, -5, 5);
   wanderY = map(mouseY, 0, height, -5, 5);
}*/