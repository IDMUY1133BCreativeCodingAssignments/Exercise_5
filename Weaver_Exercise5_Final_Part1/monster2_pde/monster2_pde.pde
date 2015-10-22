//used some code from class and Learning Processing

Monster joey;
Monster kim;
Monster jen;
Monster isabel;
Monster rach; 


void setup(){
  //background(255);
  size(1000,1000);
  
} // end of setup

void draw(){
 
  /*for (int i = 0; i < monsters.length; i++){
    print(monsters[i]);
    monsters[i] = new Monster(int(random(0,1000)),int(random(0,1000)));
    monsters[i].head(int(random(30,150)),int(random(50,200)));
    monsters[i].eye(wanderX,wanderY);
    monsters[i].update(); */
    //}// end of for loop 
background(255);
 // 1st monster in top left corner
 joey = new Monster(200,350,127,170,235,206,64,235,235,31,24);
 joey.monsterBody(300,145);
 joey.head(60,100);
 joey.eye();

 
 // 2nd monster in center
 kim = new Monster(500,500,68,212,222,65,0,79,195,56,46);
 kim.monsterBody(130,220);
 kim.head(90,70);
 kim.eye();

 
 //3rd monster in bottom left
 jen= new Monster(200,650,195,106,213,213,101,13,235,126,173);
 jen.monsterBody(175,180);
 jen.head(160,60);
 jen.eye();
 
 
 //4th monster in top right
 isabel = new Monster(800,300,88,213,48,43,75,129,8,0,92);
 isabel.monsterBody(250,160);
 isabel.head(70,85);
 isabel.eye();
 
 
 // 5th monster in bottom right
 rach = new Monster(780,650,235,87,64,102,0,92,181,213,48);
 rach.monsterBody(95,180);
 rach.head(150,100); 
 rach.eye();

  
}// end of draw