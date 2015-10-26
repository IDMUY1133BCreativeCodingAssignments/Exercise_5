//Monster class

class Monster{
  
  /*everything in here is what will encompass the Monster
   this is the class constructor. this is called with the 
   "new" line in the main code*/
   float x_, y_;
   int ax, ay, az, bx, by, bz;
   
   Monster(float x, float y, int sk1x, int sk1y, int sk1z, int sk2x, int sk2y, int sk2z){ //declaring variables
     x_ = x;
     y_ = y;
     ax = sk1x;
     ay = sk1y;
     az = sk1z;
     bx = sk2x;
     by = sk2y;
     bz = sk2z;
     
   } //end of Monster constructor
  
  void monsterBody(int w, int h){
  stroke(0);
  strokeWeight(4);



  //Monster's arms
  ellipse(175 + x_, 325 + y_, 100 + w, 50 + h);
  ellipse(425 + x_, 325 + y_, 100 + w, 50 + h);

  //Monster's body
  fill(ax, ay, az);
  ellipse(300 + x_, 380 + y_, 330 + w, 230 + h);

  //Monster's legs
  fill(ax, ay, az);
  ellipse(150 + x_, 445 + y_, 150 + w, 75 + h);
  ellipse(450 + x_, 445 + y_, 150 + w, 75 + h);

  //Monster's mouth
  fill(171, 25, 60);
  triangle(300 + x_, 215 + y_, 310 + x_, 230 + y_, 290 + x_, 230 + y_);
  }// end monsterBody
  
  void monsterHead(int wid, int hei){
  stroke(0);
  strokeWeight(4);


  //Monster's horns
  fill(171, 117, 42);
  triangle(270 + x_, 255 + y_, 214 + x_, 255 + y_, 215 + x_, 220 + y_);
  triangle(330 + x_, 255 + y_, 386 + x_, 255 + y_, 385 + x_, 220 + y_);

  //Monster's ears
  fill(232, 161, 57);
  ellipse(240 + x_, 260 + y_, 80 + wid, 50 + hei);
  ellipse(360 + x_, 260 + y_, 80 + wid, 50 + hei);

  //Monster's head
  fill(bx, by, bz);
  ellipse(300 + x_, 290 + y_, 160 + wid, 175 + hei);
  
  //monster's eyes
  fill(0);
  ellipse(350 + x_, 300 + y_, 5, 10);
  ellipse(250 + x_, 300 + y_, 5, 10);
  
  } // end monsterHead
  
  
} //end of class Monster