int nBubbles = 100;
int startI;
int endI;
int bubblesCreated;
ArrayList<Bubble> aBub = new ArrayList<Bubble>();

void setup() {
  size(500,700);
  background(255);
  for(int i = 0; i < nBubbles; i++) {
    //Bubble myBubble = new Bubble();
    aBub.add(new Bubble());
  }
}

void draw(){
  background(255);
  startI = 0;
  endI = 1;
  //for (int j = startI; j < endI; j++) {
    for(int i = 0; i < nBubbles; i++) {
      aBub.get(i).rise_wiggle();
      aBub.get(i).show();
    }
   //}
}