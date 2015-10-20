
oldMonster fred;
oldMonster blob;
oldMonster scream ;
oldMonster spooky;
oldMonster boo;

void setup(){
  background(255);
  size(800, 800);
  fred = new oldMonster(2,1,color(20,30,40),color(20,20,20),color(30,200,200));    //all the different monsters
  blob = new oldMonster(10,3,color(10,0,20),color(50,55,20),color(10,40,200));
  scream = new oldMonster(3,4,color(255,200,20),color(50,0,200),color(210,200,20));
  spooky = new oldMonster(2,6,color(255,200,205),color(30,200,100),color(10,10,300));
  boo= new oldMonster(2,3,color(40,100,100),color(200,200,100),color(1,255,255));  
}


void draw(){
  background(255);
  
  
  fred.move(200,200);
  fred.Body(40,180);
  blob.move(400,-20);
  blob.Body(220,200);
  scream.move(-30,400);
  scream.Body(180,180);
  spooky.move(40,50);
  spooky.Body(70,200);
  boo.move(-200,40);
  boo.Body(200,200);
}
 