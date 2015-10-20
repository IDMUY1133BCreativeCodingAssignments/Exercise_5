Monster fred, charlie, lucy, mike, susan;

void setup(){
  size(800,800);
  background(255);
  fred = new Monster(100, 100, color(255,127,0), color(0,204,0), color(0,0,0));
  charlie = new Monster(-100,100,color(200,0,0), color(0, 127, 255), color(127,0,127));
  lucy = new Monster(-300,-150,color(0,255,255), color(204, 0, 0), color(127,200,0));
  mike = new Monster(300,-150,color(0,255,0), color(255, 127, 0), color(255,255,255));
  susan = new Monster(0,400,color(200,255,0), color(255, 127, 255), color(127,0,127));
}

void draw(){
  background(255);
  fred.monsterBody(200,200);
  fred.head(100,100);
  fred.update();
  
  charlie.monsterBody(300,200);
  charlie.head(100,150);
  charlie.update();
 
  lucy.monsterBody(200,300);
  lucy.head(150,100);
  lucy.update();
  
  mike.monsterBody(200,350);
  mike.head(50,150);
  mike.update();
  
  susan.monsterBody(500,200);
  susan.head(100,50);
  susan.update();
  
}