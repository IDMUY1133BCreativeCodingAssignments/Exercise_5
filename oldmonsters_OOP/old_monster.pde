
class oldMonster {// new class
  
  
  private color eye, mouth, head;    
  float x, y;// to move the monsters 
 
  
  
 oldMonster (float tempX, float tempY, color sk1, color sk2, color wort_ ) {// the different varibles to change the parramaters in the body

    
    eye = sk1;//color
   mouth = sk2;//color
    head = wort_;//color
    x = tempX;//int
    y = tempY;//int
    
  }
  void move(int move, int move2){//varibles to move teh x and y using move.(name of monster)
    
   x = move; 
   y = move2;
  }
  // all the methods go below the constructor
  void Body(int wide, int tall) {// the paramaters for the eclipse size 
    smooth();
 fill(head);//head color
  ellipse(250 + x, 270 + y, wide, tall);// head
  fill (mouth);//mouth color
  ellipse (250 + x, 350 + y, 50, 75);//mouth 
  ellipse(210 + x, 220 + y, 70, 70);// outer eye
  ellipse(290 + x, 220 + Y, 70, 70);
  fill (10, 200, 0);
  ellipse(210 + x, 220 + y, x/4, y/4);//inner eye crazy eyes based on x and y 
  ellipse(290 + x, 220 + y, 20, 20);
  fill(eye);//nose color
  triangle(250 + x, 250 + y, 220 + x, 280 + y, 280 + x, 280 + y); // nose
  ellipse (250 + x, 350 + y, 50, 75);
  rect(125 + x , 100 + y, 250, 50);// hat
  rect(200 + x, 50 + y, 100, 100);
  }
    
 
}
  

  
 
 
 