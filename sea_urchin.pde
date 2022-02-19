Cluster cluster;
int layers = 3;

void setup() {
  background(255);
  size(500, 500);
}

void draw() {
  
}

void mouseClicked() {
  background(255);
  cluster = new Cluster(width/2, height/2, 3);
  //tendril.show(tendril.myX, tendril.myY, tendril.myN);
}

class Tendril {
  float myA, myX, myY, myEndX, myEndY;
  int myN;
  
  Tendril(float x, float y, int n) {
    myA = (int) (Math.random() * 360);
    myX = x;
    myY = y;
    myN = n;
  }
  
  void show(float x, float y, int n, int l) {
    float startX = x; // myX
    float startY = y; // myY
    if (n > 0) {
      myA += (float) (Math.random() * 0.4) - 0.2;
      myEndX = (float) (startX + Math.cos(myA) * n);
      myEndY = (float) (startY + Math.sin(myA) * n);
      line(startX, startY, myEndX, myEndY);
      show(myEndX, myEndY, n-1, l);
    }
    else if (l > 0) {
      l--;
      cluster = new Cluster(myEndX, myEndY, l);
      
   }
  }
}

class Cluster {
  Cluster(float x, float y, int l) {
    for (int i = 0; i < 7; i++) {
      Tendril tendril = new Tendril(x, y, 15-(l*4));
      tendril.show(x, y, tendril.myN, l);
    }
  }
}