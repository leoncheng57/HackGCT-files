void setup() {
  background(255);
  size(500, 300);
}

void draw() {
  background(255);
  fill(200);
  rectMode(CENTER);
  rect(mouseX, mouseY, 100, 120);
  quad(mouseX-50,mouseY-120,  mouseX+70,mouseY-80,  mouseX+50,mouseY-70,  mouseX-50,mouseY-100);
  fill(#E5ED13);
  ellipse(mouseX-60,mouseY-70,20,15);
  ellipse(mouseX-40,mouseY-70,20,15);
  ellipse(mouseX-45,mouseY-80,20,15);
}

