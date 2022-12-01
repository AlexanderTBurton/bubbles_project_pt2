class Bubble {
  int bSize;
  int[] bColor;
  int x;
  int y;
 
  //constructor: only job is to assign/initialize values
  Bubble(){
    bSize = (int)(Math.random()*80+20);
    bColor = new int [4];
    for(int i = 0; i < bColor.length; i++) {
      bColor[i] = (int)(Math.random()*256);
    }
    x = (int)(Math.random()*width);
    y = height;
  }
  
  void rise_wiggle(){
   //speed, x and y, speed based on size 
   float rFactor = 0.01;
   float r = (bSize*3) * rFactor * (float)Math.random();
   int w = (int)(Math.random()*9)-4;
   x += w;
   y -= r;
  }
  
  void show() {
    fill(bColor[0], bColor[1], bColor[2], bColor[3]);
    ellipse(x, y, bSize, bSize);
  }
}

