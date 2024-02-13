void setup() {
  size(600, 1067);
  background(0);
  noFill();
  colorMode(RGB, 100);
  frameRate(200);
}

float rectX = 60;
float rectX2 = 300;
float maxRecY = 800;
float minRecY = 100;
float widthX = 230;
float heightY = 1;
float angle = 0;

void draw() {
  background(0);

  // make two pillars of lines stacked on top of each other
  int blueValue = 255;
  int newColor = 255;

  for (float RecY = maxRecY; RecY >= minRecY; RecY -= 2.5) {
    newColor -= 3;

    float yOffset = sin(angle) * 10;
    strokeWeight(10);
    stroke(newColor, 0, blueValue, 20);
    line(rectX, RecY, rectX + widthX, RecY + yOffset);
  }

  int magValue = 0;
  int redValue = 255;

  for (float RecY = maxRecY; RecY >= minRecY; RecY -= 2.5) {
    magValue += 1;

    float yOffset = sin(angle) * 10;
    strokeWeight(10);
    stroke(redValue, 0, magValue, 20);
    line(rectX2, RecY, rectX2 + widthX, RecY + yOffset);
  }

  angle += 0.1;
}
