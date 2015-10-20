Monster fred;
Monster tyrone;
Monster kim;
Monster trisha;
Monster raju;

float wanderX, wanderY;

void setup(){
  background(255);
  size(1200,600);
}

void draw(){
  wanderX=map(mouseX,0,width,-5,5);
  wanderY=map(mouseY,0,height,-5,5);
  
  fred=new Monster(0,0, color(60, 189, 64),color(59, 220, 64),color(181, 35, 203));
  fred.monsterBody(120,160);
  fred.head(100,80);
  fred.eye(wanderX,wanderY);
  
  pushMatrix();
  translate(-400,0);
  tyrone=new Monster(100,0, color(70, 112, 164),color(89, 0, 124),color(11, 135, 253));
  tyrone.monsterBody(300,300);
  tyrone.head(300,300);
  tyrone.eye(wanderX,wanderY);
  popMatrix();
  
  pushMatrix();
  translate(350,0);
  kim=new Monster(100,0, color(170, 12, 14),color(189, 110, 14),color(111, 235, 23));
  kim.monsterBody(140,150);
  kim.head(70,50);
  kim.eye(wanderX,wanderY);
  popMatrix();
  
  pushMatrix();
  translate(100,0);
  trisha=new Monster(100,0, color(70, 242, 104),color(19, 10, 124),color(101, 255, 100));
  trisha.monsterBody(150,250);
  trisha.head(100,70);
  trisha.eye(wanderX,wanderY);
  popMatrix();
  
  pushMatrix();
  translate(600,0);
  raju=new Monster(100,0, color(255, 202, 244),color(0, 255, 0),color(1, 245, 250));
  raju.monsterBody(140,350);
  raju.head(150,100);
  raju.eye(wanderX,wanderY);
  popMatrix();
}