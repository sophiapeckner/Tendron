public void setup() {
  size(500, 500);  
  background(255);
  noLoop();
}

public void draw() {
  background(255);
  Cluster c = new Cluster(50, width/2, height/2); // initial number of segments in the tendril and starting (x,y) coordinate
}

public void mousePressed() {
  redraw();
}