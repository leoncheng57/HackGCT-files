int frameCountBoundary=0;
int textSizeNumber=0;
int xCor;
int yCor;
String mDirection;

void setup() {
  size(800, 300);
  xCor = width/2;
  yCor = height/2;
  mDirection="RIGHT";
}

void draw() {
  background(255);
  textAlign(CENTER, CENTER);
  if (textSizeNumber<100) {
    incTextSize();
  }
  genRanFill();
  if (textSizeNumber==100) {
    moveSideways();
  }
  //ranMovement();
  textSize(textSizeNumber);
  text("THANK YOU!!!", xCor, yCor);
}

void genRanFill() {
  //println(frameCount);
  //println("fcb"+frameCountBoundary);
  if (frameCount>frameCountBoundary) {
    frameCountBoundary+=30;
    fill(random(0, 256), random(0, 256), random(0, 256));
  }
}

void incTextSize() {
  if (textSizeNumber<85) {
    textSizeNumber+=2;
  } else if (textSizeNumber<100) {
    textSizeNumber+=1;
    //println(textSizeNumber);
  }
  textSize(textSizeNumber);
}

void moveSideways() {
  if (mDirection=="RIGHT" && xCor==width-textSizeNumber*3) {
    mDirection="LEFT";
  } else if (mDirection=="LEFT" && xCor==0+textSizeNumber*3) {
    mDirection="RIGHT";
  } else if (mDirection=="LEFT") {
    xCor--;
  } else if (mDirection=="RIGHT") {
    xCor++;
  }
}

void ranMovement() {
  int rNum = (int)random(0, 4);
  if (rNum==0) {
    xCor++;
  }
  if (rNum==1) {
    xCor--;
  }
  if (rNum==2) {
    yCor++;
  }
  if (rNum==4) {
    yCor--;
  }
}

