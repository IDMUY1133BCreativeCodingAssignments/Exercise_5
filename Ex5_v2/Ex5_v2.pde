//int bodyX=int(random(100,200)); //supposed to hold a random value but didnt work
Monster[]squad=new Monster[5]; //see processing reference
/*Monster fred;
 Monster tyrone;
 Monster kim;
 Monster trisha;
 Monster raju;*/

float wanderX, wanderY;
int c;

void setup() {
  background(255);
  size(1200, 600);

  // for (int i=0; i<squad.length; i++) { //doesnt work
  // if(i==0){ //bad idea
  squad[0]=new Monster(0, 0, color(170, 12, 14), color(189, 110, 14), color(111, 235, 23));
  // }
  // if(i==1){
  squad[1]=new Monster(100, 0, color(60, 189, 64), color(59, 220, 64), color(181, 35, 203));
  // }
  //if(i==2){
  squad[2]=new Monster(200, 0, color(70, 112, 164), color(89, 0, 124), color(11, 135, 253));
  //}
  //if(i==3){
  squad[3]=new Monster(300, 0, color(70, 242, 104), color(19, 10, 124), color(101, 255, 100));
  //}
  //if(i==4){
  squad[4]=new Monster(400, 0, color(255, 202, 244), color(0, 255, 0), color(1, 245, 250));
  //}
  //}
}

void draw() {
  wanderX=map(mouseX, 0, width, -5, 5);
  wanderY=map(mouseY, 0, height, -5, 5); //Creates the variable that controls the eyes

  background(255); //resets background in case anything happens

  if (keyPressed) {
    if (key==32) {
     // pushMatrix();
      background(255);
      translate(0, -100);
      for (int i=0; i<squad.length; i++) {
        squad[i].monsterBody( 100, 100);
        squad[i].head(120, 160);    
        squad[i].eyes(wanderX, wanderY);
      }
     // popMatrix();
    }
  }

  for (int i=0; i<squad.length; i++) {
    //for (int i=-650; i<width; i+=250) {
    //for (int c=0; c<squad.length; c++) {
    //pushMatrix();
    //translate(i, 0);
    squad[i].monsterBody( 100, 100);
    squad[i].head(120, 160);    
    squad[i].eyes(wanderX, wanderY);
    //  popMatrix();
    //}
  }
}

//This section makes 5 monsters w/o an array
/*fred=new Monster(0,0, color(60, 189, 64),color(59, 220, 64),color(181, 35, 203));
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
 popMatrix();*/