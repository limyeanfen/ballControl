/*
Name: Lim Yean Fen
ID: 1132702697  
Submission Name: Ball Control
*/

float x;
float y;
float easing = 0.05; //speed follow the arrow
float diff=1;
PFont f;
float a;
boolean Countdown =false;

void setup() {
  size(640, 360); //screen size 
  noStroke();  //outline
  f= createFont("Agency FB",80,true); // text style&size
  strokeWeight(2);
}

void draw() { 
  Circle();
  
  if (Countdown == true){
    Countdown();
    
  if (mousePressed == true) {                      //Cursor Icon
    cursor(HAND); // Draw cursor as hand
  } else {
    cursor(CROSS);
  }
  line(mouseX, 0, mouseX, height);
  line(0, mouseY, height, mouseY);
}
}

void mousePressed(){               //Mouse event1
  Countdown = true;
}

void mouseReleased(){              //Mouse event2
  Countdown = false;
}

void Circle(){
  background(51);  //background's colour
  
  float targetX = mouseX;  //x-axis of mouse location
  float dx = targetX - x;
  x += dx * easing;
  
  float targetY = mouseY;  //y-axis of mouse location
  float dy = targetY - y;
  y += dy * easing; //dy is the gap
  
  
  if (keyPressed == true){                 //KeybardData+ Key events                  
  background(random(255),0,100);
  fill(255);
  textFont(f);
  text("is BEAUTIFUL ", 100, 220);
  }else{
  background(175);
  fill(255);
  textFont(f);
  text("LIFE", 380, 220);

  }
 
  if (keyCode == ENTER){                   //Coded Key
  background(255);
  fill(0);
  textFont(f,100);
  text("SUFFER !", 220,220);
  }

  if (mouseY > 180){
  stroke (255);
  noFill();
  ellipse(x, y, 40 , 40); //location n size of the ball
} else {
  stroke (random(255),random(255),random(255)); 
  noFill();
  ellipse(x, y, 40 , 40); //location n size of the ball
}
  
}
  
void Countdown(){
    stroke(255);
    noFill();
    rect(20,20,600,320);
}

void Flow(){
  a= random(width);
  if (key =='a'){
    diff = diff + 0.005;
    float n = noise(diff)* 100;
    stroke(255,random(150));
    strokeWeight(40);
    noFill();
    line(a,0,a,960);
  }
}

void keyPressed(){                    //KeyEvent + EventFlow
  if (key=='a'){
    Flow();
    loop();
  }
}
