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


Monster fred, lucy, po, scoper, tristan;



void setup() {
  size(800, 800);
}


void draw() {

  if (mousePressed == true) {
    background(#FFE61C);
    fill(0);
    pushMatrix();
    translate(random(-1, 1), 0);
    text("TURN THE LIGHTS OFF!!!", 40, 80);
    popMatrix();
    translate(random(-5, 5), random(-5, 5));
  } else {
    background(40);
  }


  pushMatrix();
  translate(mouseX/100, mouseY/100);
  fred = new Monster(0, 0, #F6FFF0, #EFCEFF, #C7C3CC, 255);
  fred.update();
  fred.monsterBody(120, 160);
  fred.head(100, 100);
  popMatrix();

  pushMatrix();
  translate(mouseX/200, mouseY/200);
  lucy = new Monster(260, 20, #FFBFA4, #FFF5F0, #7F6052, 100);
  lucy.update();
  lucy.monsterBody(180, 300);
  lucy.head(200, 100);
  popMatrix();

  pushMatrix();
  translate(mouseX/30, mouseY/30);
  po = new Monster(-200, -56, #7E267F, #FFF0FF, #FDA4FF, 50);
  po.update();
  po.monsterBody(80, 333);
  po.head(70, 200);
  popMatrix();

  pushMatrix();
  translate(mouseX/5, 0);
  scoper = new Monster(0, 320, #B29896, #97FFC3, #FFF1F0, 20);
  scoper.update();
  scoper.monsterBody(400, 160);
  scoper.head(70, 100);
  popMatrix();

  pushMatrix();
  translate(mouseX/80, mouseY/800);
  tristan = new Monster(120, -180, #97FFEA, #B2502C, #FFFFFF, 222);
  tristan.update();
  tristan.monsterBody(80, 160);
  tristan.head(300, 100);
  popMatrix();



  /*
  lucy = new Monster(?? );
   lucy.monsterBody(??);
   
   po = new Monster(?? );
   po.monsterBody(??);
   
   scoper = new Monster(?? );
   scoper.monsterBody(??);
   
   tristan = new Monster(?? );
   tristan.monsterBody(??);*/
}