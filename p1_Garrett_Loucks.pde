boolean circle1Over = false;
boolean circle2Over = false;
boolean circle3Over = false;
boolean circle4Over = false;
color currentColor1, currentColor2, currentColor3, currentColor4;
color c1 = color(200,50,50);
color c2 = color(100,100,100);

void setup() {
  size(400, 400);
  currentColor1 = c1;
  currentColor2 = c1;
  currentColor3 = c1;
  currentColor4 = c1;
}


void draw() {
  update(mouseX, mouseY);
  textSize(18);
  background(220);
  fill(210);
  rect(100,50,200,330);
  fill(currentColor1);
  circle(200,100,30); //1
  fill(currentColor2);
  circle(200,150,30); //2
  fill(currentColor3);
  circle(200,200,30); //3
  fill(currentColor4);
  circle(200,250,30); //4
  
  fill(c2);
  circle(250,300,30); //close
  circle(150,300,30); //open
  
  fill(230);
  
  rect(235,319,30, 30); //close
  rect(135,319,30, 30); //open
  rect(141,84,30, 30); //floor 4
  rect(141,134,30, 30); //floor 3
  rect(141,184,30, 30); //floor 2
  rect(141,234,30, 30); //floor 1
  
  
  fill(0);
  text("< >", 139, 341); //open
  text("> <", 239, 341); //close
  text("4", 150, 105); //floor 4
  text("3", 150, 155); //floor 3
  text("2", 150, 205); //floor 2
  text("1", 150, 255); //floor 1
  
}


void update(int x, int y) {
  if ( overCircle(200, 100, 30) ) {
    circle1Over = true;
  } 
  else if ( overCircle(200, 150, 30) ) {
    circle2Over = true;
  } 
  else if ( overCircle(200, 200, 30) ) {
    circle3Over = true;
  }
  else if ( overCircle(200, 250, 30) ) {
    circle4Over = true;
  }
  else {
    circle1Over = circle2Over = circle3Over = circle4Over = false;
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

void mousePressed() {
  if (circle1Over){
    currentColor1 = color(0,0,255);
  }
  else if (circle2Over){
    currentColor2 = color(0,0,255);
  }
  else if (circle3Over){
    currentColor3 = color(0,0,255);
  }
  else if (circle4Over){
    currentColor4 = color(0,0,255);
  }
}
