//ref. tree drawing from class.

float x = 100;
float theta = 0;


void setup(){
  size(500, 500);
  background(0);
  smooth();
  
}

void draw(){
  
  for (int i=0; i<1000; i++){ /// a forloop helps you execute something a lot instead of writing it so many times 
  tree(i*10+10, i*10+10);
  }
 
 
}

void tree(float x, float y){
  noStroke();
  fill(139,69,19);
  rect(x, y, 20, 100);
  fill(173,255,47);
  ellipse(x, y, 100, 100);

 
  
 
}