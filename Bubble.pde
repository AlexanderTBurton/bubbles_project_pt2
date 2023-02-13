class Bubble {
  int bSize;
  boolean blue;
  int x;
  int y;
 
  //constructor: only job is to assign/initialize values
  Bubble(){
    bSize = (int)(Math.random()*80+20);
    double colorChooser = (Math.random())*2;
    if (colorChooser >= 1) {
      blue = true;
    }
    else {
      blue = false;
    }
    
    /*for(int i = 0; i < bColor.length; i++) {
      bColor[i] = (int)(Math.random()*256);
    } */
    x = (int)(Math.random()*width);
    y = height;
    
  }
  
  void rise_wiggle(){
   //speed, x and y, speed based on size 
   float rFactor = 0.01;
   //float r = (bSize*3) * rFactor * (float)Math.random();
   int w = (int)(Math.random()*9)-4;
   x += w;
   y -= (bSize*3) * rFactor * (float)Math.random() + 0.5;
  }
  
  void show() {
    if (blue == true) {
      fill(0,0,255,200);
    }
    else {
      fill(255,0,0,200);
    }
    ellipse(x, y, bSize, bSize);
  }
}
