

float myLine(float x){
  //  y = m*x + b
 return 0.3*x + 0.2;
}
 
class Point{
  float x;
  float y;
  float bias = 1;
  int label;
  
  Point(){
    x = random(-1,1);
    y = random(-1,1);
    float lineY = myLine(x);
    if (y>=lineY){ label = 1;}
    else {label = -1;}
  }
  Point(float x1, float y1){
    x = x1;
    y = y1;
    label = 0;
  }
  
  float getPX(){
    return map(x, -1, 1, 0, width); }
    
  float getPY(){
   return map(y, -1, 1, height, 0); }
   
  void show(){
    stroke(0);
    if (label == 1) {
      fill(255);
    } else { 
      fill(0);
    } 
    
    ellipse(getPX(),getPY(),32,32);
  }
}