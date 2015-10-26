
/*I refrenced the book "Learning Processing: A Beginner's Guide to Programming Images, Animation, and Interaction" by Daniel Shiffman, 
I used this resource to help write and understand how OOP works. Page 153 chapter 8 example 8-2. it shows how to maek multiple squares using classes*/
oldMonster fred;
oldMonster blob;
oldMonster scream ;
oldMonster spooky;
oldMonster boo;//this guy is the spooky one one :) 

void setup(){
  background(255);
  size(800, 800);
  fred = new oldMonster(4,1,color(20,30,40),color(20,20,20),color(30,200,200));    //all the different monsters int, int, color, color, color,
  blob = new oldMonster(10,3,color(10,0,20),color(50,55,20),color(10,40,200));
  scream = new oldMonster(3,4,color(255,200,20),color(50,0,200),color(210,200,20));
  spooky = new oldMonster(2,6,color(255,200,205),color(30,200,100),color(10,10,300));
  boo= new oldMonster(2,3,color(40,100,100),color(200,200,100),color(1,255,255));  
}


void draw(){
  background(255);
  
  //im using lots of mouse inputs to make the images less static and have some movement also making them even more different 
  fred.move(mouseY,200);//the move is to move the x and y
  fred.Body(mouseX,300);//while the body draws this is what is being moved
  blob.move(400,mouseX);//negitive move in opposite direction 
  blob.Body(220,mouseY);
  scream.move(-30,mouseY+mouseX);
  scream.Body(mouseX,300);
  spooky.move(mouseX,50);
  spooky.Body(70,mouseY/4);
  boo.move(-200,mouseY);
  boo.Body(mouseY,200);
}
 