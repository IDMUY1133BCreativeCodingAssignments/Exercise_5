
class oldMonster {
  
  
  private color eye, mouth, head;    
  float x, y;// to move the monsters 
 
  
  
 oldMonster (float tempX, float tempY, color sk1, color sk2, color wort_ ) {

    
    eye = sk1;
   mouth = sk2;
    head = wort_;
    x = tempX;
    y = tempY;
    
  }
  void move(int move, int move2){
    
   x = move;
   y = move2;
  }
  // all the methods go below the constructor
  void Body(int wide, int tall) {
    smooth();
 fill(head);//head color
  ellipse(250 + x, 270 + y, wide, tall);// head
  fill (mouth);//mouth color
  ellipse (250 + x, 350 + y, 50, 75);//mouth 
  ellipse(210 + x, 220 + y, 70, 70);// outer eye
  ellipse(290 + x, 220 + Y, 70, 70);
  fill (10, 200, 0);
  ellipse(210 + x, 220 + y, 20, 20);//inner eye
  ellipse(290 + x, 220 + y, 20, 20);
  fill(eye);//nose color
  triangle(250 + x, 250 + y, 220 + x, 280 + y, 280 + x, 280 + y); // nose
  ellipse (250 + x, 350 + y, 50, 75);
  rect(125 + x , 100 + y, 250, 50);// hat
  rect(200 + x, 50 + y, 100, 100);
    
    
  }
}
  

 
 
 
 