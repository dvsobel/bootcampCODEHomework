
int[] y;

void setup() {
  size(500,500);
  color(255);
  y = new int[width];
}

void draw() {
  //background(204); 
  for (int i = y.length-1; i > 0; i--) {
    y[i] = y[i-1];
  }
  
  // Add new values to the beginning
  y[0] = mouseY;
  
  // Displays each pair of values as a line
  for (int i = 1; i < y.length; i++) {
    stroke(255,20,147);
    line(i, y[i], i-1, y[i-1]);
    line(i, y[i], i-1, y[i-1]); 
  }
}
void mousePressed(){
  if(mousePressed){
  background(random(255));
}

}