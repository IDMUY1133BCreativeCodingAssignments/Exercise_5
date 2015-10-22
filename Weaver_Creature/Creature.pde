class Creature{
  public int colo1x,colo1y,colo1z,colo2x,colo2y,colo2z,colo3x,colo3y,colo3z;
  public int x,y;
  int wid,hei;
  Creature( int creX,int creY, int dx, int dy,int dz, int rx,int ry,int rz,int hx, int hy, int hz){
    colo1x = dx;
    colo1y = dy;
    colo1z = dz;
    colo2x = rx;
    colo2y = ry;
    colo2z = rz;
    colo3x = hx;
    colo3y = hy;
    colo3z = hz;
    x = creX;
    y = creY; 
  } //end of constructor
  
void monsterBody(int wide, int tall) { //defining that function // parameters changes side of eyes
  

  noStroke();
  fill(colo1x,colo1y,colo1z);
  ellipse(200 + x, 200 + y, wide, 100 + tall);
  ellipse(180 + x, 200 + y, 40 + wide, tall);
  ellipse(220 + x, 200 + y, 40 + wide, tall);


  noStroke();
  fill(92, 255, 94);
  triangle(155 + x, 135 + y, 155 + x, 275 + y, 50 + x, 200 + y);//wings
  triangle(350 + x, 200 + y, 245 + x, 135 + y, 245 + x, 275 + y);

  stroke(10);
  strokeWeight(2);
  fill(colo3x,colo3y,colo3z);
  rect(175 + x, 225 + y, 20, 10);//mouth
  

  monsterBodyEye();
 
  stroke(255, 241, 41);
  strokeWeight(15);
  line(245 + x, 275 + y, 380 + x, 380 + y); //line things
  line(20 + x, 20 + y, 150 + x, 143 + y);
} // end of monsterBody


void monsterBodyEye() {
  
  stroke(5);
  strokeWeight(1);
  fill(colo2x,colo2y,colo2z);
  ellipse(174 + x, 135 + y, 30, 30);// eyes
  ellipse(215 + x, 135 + y, 40, 40);
 
  
 
}  // end of monsterBodyEye
  
  
 
}//end of class