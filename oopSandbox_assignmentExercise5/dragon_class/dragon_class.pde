color orange = color(240, 200, 0);
color purple = color(200, 0, 230);
color teal = color(100, 230, 180);

Dragon wendy;
Dragon wanda;
Dragon willy;
Blank bendy;
Blank banda;
Blank billy;

boolean off;
boolean off1;
boolean off2;

int x = -60;
int y = -60;
int z = -60;
int a = -65;
int b = -65;
int c = -65;



void setup() { 
  size (600, 600);
  background (0, 200, 230); //light blue
}

void keyReleased() {
  if (key == 'a' && off==false && off1==false && off2==false) {

    x=x+5;
    a=a+5;
    
    if(off){
    fill(purple);
    rect(0,0, 600,600);
    }
    
    if(off1){
    fill(orange);
    rect(0,0, 600,600);
    }
    
     if(off2){
    fill(teal);
    rect(0,0, 600,600);
    }
    
  
  }
  if (keyCode == 32 && off==false && off1==false && off2==false) {
    y=y+5;
    b=b+5;
   if(off){
    fill(purple);
    rect(0,0, 600,600);
    }
    
     if(off1){
    fill(orange);
    rect(0,0, 600,600);
    }
    
    if(off2){
    fill(teal);
    rect(0,0, 600,600);
    }
    
   
  }
  if (key == 'p' && off==false && off1==false && off2==false) {
    z=z+5;
    c=c+5;
    
   if(off){
    fill(purple);
    rect(0,0, 600,600);
    }
    
     if(off1){
    fill(orange);
    rect(0,0, 600,600);
    }
    
    if(off2){
    fill(teal);
    rect(0,0, 600,600);
    }
   
  }
}

void draw() {

  pushMatrix();
  scale(.6);

  Blank bendy = new Blank(a, 200);
  bendy.ghost();

  Blank banda = new Blank(b, -90);
  banda.ghost();

  Blank billy = new Blank(c, 550);
  billy.ghost();

  Dragon wendy = new Dragon(x, 200);
  wendy.body(purple);
  wendy.spikes(orange);
  wendy.iris(teal);
  wendy.pupils();
  //500 is end
  Dragon wanda = new Dragon(y, -90);
  wanda.body(orange);
  wanda.spikes(teal);
  wanda.iris(purple);
  wanda.pupils();

  Dragon willy = new Dragon(z, 550);
  willy.body(teal);
  willy.spikes(purple);
  willy.iris(orange);
  willy.pupils();





  popMatrix();
  
  if (x==500){
    //y=-60;
   // z=-60;
    fill(purple);
    rect(0,0, 600,600);
    off=true;
    
  }
  if (y==500){
   // y=-60;
   // z=-60;
    fill(orange);
    rect(0,0, 600,600);
    off1=true;
  }
  if (z==500){
    //y=-60;
//z=-60;
    fill(teal);
    rect(0,0, 600,600);   
    off2=true;
    
  }
}