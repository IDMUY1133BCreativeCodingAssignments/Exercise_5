Bunny[] bunnies = new Bunny [5]; //makes an array holding 5 variables

void setup() {
  size(1000, 1000);
  
  //setting the value for each variable in the array, 'bunnies'
  //the first two numbers are the x,y values and the third & fourth manipulate the color of the skin & eyes
  bunnies[0] = new Bunny(30, 300, color(95, 20, 10), color(255, 219, 240));
  bunnies[1] = new Bunny(-300, 220, color(190, 200, 50), color(80, 80, 23));
  bunnies[2] = new Bunny(220, 540, color(95), color(0));
  bunnies[3] = new Bunny(530, 80, color(255,80,100), color(29,190,255));
  bunnies[4] = new Bunny(100, 160, color(200, 255, 220), color(200, 240, 255));
}

void draw() {
  background(103, 229, 255);
  //uses a 'for' loop to draw the 5 iterations of bunnies 
  //only has 1 line in the 'for' loop because i only had 1 custom function for this shape
  for (int i = 0; i < bunnies.length; i++){
    bunnies[i].head(330,280);
  }
}