//----------------------------------------------------
// DT Bootcamp 2016, Parsons School of Design.
// Day 3, Homework, Theme: If Statement & Mouse Pressed
//----------------------------------------------------

int w, h;

void setup() {
  //create a square shaped canvas (500X500)
  size(500,500);
  w = width/2;
  h = height/2;
  background (255);
  
}


void draw () {
  background (255);
  
  //set the stroke to be black
  //stroke(0);
  
  //draw two black lines to divide the square canvas into 4 small equal squares
  //line(width/2, 0, width/2, height);
  
  fill(23, 45, 135); // color of left rectangle
  rect(0, 0, w, height); //left rectangle
  fill(233, 45, 168); //color of right rect
  rect(w, 0, w, height); //right rectangle
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > 0 && mouseY < height)){ //left rect
  
    fill(0);
    rect(0, 0, w, height); //left rectangle
    
  
  } else if((mouseX > width/2 && mouseX < width) && (mouseY > 0 && mouseY < height)) {
    fill(0);
    rect(w, 0, w, height); //right rectangle
    
  } 
  
  
  
}