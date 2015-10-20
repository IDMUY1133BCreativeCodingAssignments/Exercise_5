class Monster{
  int x;
  int y;
  color skin, shirt, pants, eye;
  
  Monster(int x, int y){
    this.x = x;
    this.y = y;
    skin = color(random(255), random(255), random(255));
    shirt = color(random(255), random(255), random(255));
    pants = color(random(255), random(255), random(255));
    eye = color(random(255), random(255), random(255));
  }
  
  void display(){
  noStroke();
  fill(0);
  triangle(x,y-50,x-100,y-150,x-50,y+50);
  triangle(x,y-50,x+100,y-150,x+50,y+50);
  fill(skin);  //skin color
  quad(x-25,y+250,x-75,y+350,x-150,y+350,x-100,y+275);
  quad(x+25,y+250,x+75,y+350,x+150,y+350,x+100,y+275);
  quad(x-25,y+150,x-25,y+200,x-150,y+187,x-150,y+162);
  quad(x+25,y+150,x+25,y+200,x+150,y+187,x+150,y+162);
  fill(shirt);  //shirt color
  rect(x-50,y+100,100,200);
  fill(pants);  //pants color
  rect(x-50,y+100,100,125);
  ellipse(x,y+225,100,50);
  fill(skin);    //skin color
  ellipse(x,y,225,275);
  
  fill(eye);    //eye color
  arc(x-30,y-35,60,60,QUARTER_PI,PI+QUARTER_PI, PIE);
  arc(x+30,y-35,60,60,0-QUARTER_PI,HALF_PI+QUARTER_PI,PIE);
  ellipse(x,y+50,100,50);
  fill(skin);    //skin color
  ellipse(x,y+35,200,50);
  }
  
  
  
}