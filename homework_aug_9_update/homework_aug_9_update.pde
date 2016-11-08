float phi =  0; // the phase shift offset amount
float amplitude = 100; // the amplitude of our wave
float frequency = 1.0/32; // slow down our wave so we can see it better
int numPoints = 100; // the granularity of our drawing
float r = 100;
float theta = 0;
 
void setup() {
  size(600, 600);
  noFill();
}
 
 
void draw() {
  
  
    //float x = r * cos(theta);
    //float y = r * sin(theta);
  

  
// center the wave on the canvas
  translate(0, height/2);
 
  float x = 0;
  float y = 0;
   
  // if we consider 1 pixel to be 1 radian, then this is the number
  // of radians between points
  float angle = width/numPoints;
   
  // we are drawing the curve using our shape tool
  beginShape();
  for (int i = 0; i < numPoints; i++) {
     fill (0,10);
  rect (0,0,width,height);
    // calculate where we are along x
    x = angle*i;
     
    // y is determined by our function
    y = sin(x*frequency+phi)* amplitude;
   
      for(int j=0; j<1000; j++){
        
          tree(j*x, j*y);
  }
  theta++;
  
  
  endShape();
   
  // phase shift to the left so the wave appears to b marching to the right
  phi -= .05;
}
}

void tree(float x, float y){
  noStroke();
  fill(139,69,19);
  rect(x, y, 20, 100);
  fill(173,255,47);
  ellipse(x, y, 100, 100);
}