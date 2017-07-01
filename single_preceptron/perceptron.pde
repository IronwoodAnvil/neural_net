//activation fn
int sign(float num){
  if( num >= 0){ return 1;}
   else{return -1;}
}

class Perceptron {
  //modify for initial connections
  float lr = .25;
  float[] weights;
  
  Perceptron(int connections) {
    weights = new float[connections];
    for (int i = 0; i < weights.length; i++){
      weights[i]= random(-1,1);
    }
  }
  
  int guess(float[] inputs){
    float sum = 0;
    for(int i=0; i<inputs.length; i++){
      sum += inputs[i]*weights[i];
    }
    return sign(sum);
  }
  
  float guessY(float x_){
    float m = -(weights[0] / weights[1]);
    float b =  -(weights[2] / weights[1]);
    return m*x_ +b;
  }
  
   void train(float[] inputs, int target){
    int result = guess(inputs);
    float error = target - result;
    
    for( int i = 0; i< weights.length; i++){
      weights[i] += error*inputs[i]*lr;
    }
  }
  
}