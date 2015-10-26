/* make a class called Monster
 a "class" is a datatype that has data and functionality
 think of a class as a "blueprint" for objects"
 !your classes should begin with a capital letter! */
 Monster fred, bill, bob, lucy, matt;
 float wanderX, wanderY;
 color wart = color(181, 35, 203);

void setup() {
  background(255);
  size(800, 800);
}

void draw() { //calling all the monsters
  wanderX = map(mouseX, 0, width, -5, 5);
   wanderY = map(mouseY, 0, height, -5, 5);
   
  //fred: center green monster
  fred = new Monster(0, 0, color(60, 189, 64), color(59, 220, 64), wart); //new instance of 'Monster' named 'fred'
  fred.monsterBody(120, 160);
  fred.head(100, 80);
  fred.eyes(wanderX, wanderY);
  
  //bill: blue monster
  bill = new Monster(0, 0, color(83, 98, 186), color(108, 171, 184), wart); //new instance of 'Monster' named 'fred'
  bill.monsterBody(120, 160);
  bill.head(100, 80);
  bill.eyes(wanderX, wanderY);
  
  //bob: purple monster
  bob = new Monster(0, 0, color(169, 57, 186), color(184, 160, 176), wart); //new instance of 'Monster' named 'fred'
  bob.monsterBody(120, 160);
  bob.head(100, 80);
  bob.eyes(wanderX, wanderY);
  
  //lucy: red monster
  lucy = new Monster(0, 0, color(186, 42, 53), color(184, 134, 130), wart); //new instance of 'Monster' named 'fred'
  lucy.monsterBody(120, 160);
  lucy.head(100, 80);
  lucy.eyes(wanderX, wanderY);
  
  //matt: center green monster
  matt = new Monster(0, 0, color(254, 232, 47), color(254, 232, 200), wart); //new instance of 'Monster' named 'fred'
  matt.monsterBody(120, 160);
  matt.head(100, 80);
  matt.eyes(wanderX, wanderY);
}

//eyes don't move when the wanderX and wanderY are in the update function... work in draw function
/*void update(){ //updates where the mouse is
   wanderX = map(mouseX, 0, width, -5, 5);
   wanderY = map(mouseY, 0, height, -5, 5);
}*/