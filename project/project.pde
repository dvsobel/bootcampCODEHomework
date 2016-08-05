PImage bg;
int y;

String castle() { //we use this so you can use the return value somewhere else in there
  //we are only concerned about finding the final value, to let the function do something and to give us a result is the purpose
  
  String a = "Enjoy.";
   return a;
  
}

void setup () {
  size(800, 534);
  bg = loadImage("castle.png");
  println("Welcome to the Castle!");
  println ("Press 1 to enter the castle");
  println ("Press 2 to enter the castle through the side door");
  
  String x = "Good Luck!";  
  String b = castle();
  String c = x+b;
  println (c);
  
  
}
void draw() {
  
  background(bg);
  stroke(226, 204, 0);
  line(0, y, width, y);
  
  y++;
  if (y > height) {
    y = 0; 
  }
}


void keyPressed() {
 
  if(key == '1') {
    println ("You have entered the castle and found two doors.");
    println ("Press 3 to go through the left door");
    println ("Press 4 to go through the right door");
    int x1;
    }
    
else if (key == '2') {
     println ("You have entered the side door of the castle.");
     println("You notice that the door has dissapeared behind you. You can only go through a really dark hallway."); 
     println("To go through the hall press 3.");
 

}
 
else if (key == '3') {
      println ("You have entered the hallway and you say hi to the king. He tells you you should get out ASAP because he saw a dragon!");
      println ("He also advises you to turn down the right hallway to get out.");
      println ("Press the right arrow key to turn right");
}

else if (key == '4') {
      println ("You have entered the hallway and you say hello to the queen. She tells you you should get out ASAP!"); 
      println ("She also advises you to turn down the right hallway to get out.");
      println ("Press the left arrow key to turn left");
}
 
  if(key == CODED) {
    if (keyCode == LEFT ){
      println ("You've turned left and now you want to escape.");
      println ("You don't see any windows or doors, but you found a trap door."); 
      println ("Press the down arrow key to go through.");
    }
    if (keyCode == RIGHT) {
      println ("You've turned right and now you want to escape.");
      println("You don't see any windows or doors, but you found a trap door."); 
      println("Press the down arrow key to go through.");
 
    }  
    if(keyCode == DOWN){
      println ("You've entered the trap door!");
      println ("You crawled through a dark tunnel and found a dragon.");
      println ("The dragon is guarding the door to get out.");
      println ("Luckily, he was sleeping so you were able to pass him and get out, congrats!");
}
}}