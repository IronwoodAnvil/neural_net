Perceptron tron;
Point[] points = new Point[100];


void setup(){
  size(800, 800);
  tron = new Perceptron(3);
  
  for(int i = 0; i < points.length; i++){
    points[i] = new Point();
  }
  
  float[] inputs = {50, 30};
  println(tron.guess(inputs));
}


void draw(){
  
  //set line
  background(255);
  stroke(0);
  Point p1 = new Point(-1, myLine(-1));
  Point p2 = new Point(1, myLine(1));
  line(p1.getPX(), p1.getPY(), p2.getPX(), p2.getPY());
  
  Point p3 = new Point(-1, tron.guessY(-1));
  Point p4 = new Point(1, tron.guessY(1));
  stroke(0 ,0, 255);
  line(p3.getPX(), p3.getPY(), p4.getPX(), p4.getPY());
 
  // draw points
  for(Point p : points){
    p.show();
  }
  //update color based on learned
  for(Point p : points){
    float[] input = {p.x ,p.y, p.bias};
    //tron.train(input, p.label);
    //println(tron.guess(input), " ", p.label);
    if (tron.guess(input) == p.label) {   
      fill(0,255,0);
   } else { 
     fill(255,0,0);}
   noStroke();
   ellipse(p.getPX(),p.getPY(),16,16); }
}

void mousePressed(){
  //if mouse pressed, train
  for(Point p : points){
    float[] input = {p.x ,p.y, p.bias};
    tron.train(input, p.label);
  }
}