int w, h;


void setup (){
  size (500, 500);
  w=width/2;
  h=height/2;
  
}


void draw() {
  background (255);
  
  stroke (0);
  line(width/2, 0, width/2, height); //the two lines should intersect in the center
  line(0, height/2, width, height/2);
  
  noStroke();
  fill (0);
  
  if(mouseX <w && mouseY <h) { //the mouse x is a variable that takes in the point in your current position. 
    rect(0,0, w, h);
    println("top-left");
    
} else if (mouseX >w && mouseY <h){
    rect (width/2, 0, w, h);  
    println("top-right");
    
} else if(mouseX < w && mouseY > h){
     rect (width/2, 0, w, h);  
    println("bottom-left");
{