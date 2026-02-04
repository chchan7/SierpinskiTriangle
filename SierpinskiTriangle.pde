int minLen = 20;

public void settings() {
  size(600,600);
}

public void setup() {
  background(0);
}

public void draw() {
  sierpinski(125, 100, 400);
}

public void mousePressed() {
  minLen -= 5;
  if (minLen < 5)
    minLen = 30;
}

public void sierpinski(int x, int y, int len) {
  if (len <= minLen) {
    fill((int)(Math.random() * 255), (int) (Math.random() * 255),(int) (Math.random() * 255));
    triangle(x - len / 2, y, x + len / 2, y, x, y - len / 2);
  }
  else {
    sierpinski(x,y, len /2);
    sierpinski(x + len / 2, y, len / 2);
    sierpinski(x + len / 4, y + len / 2, len / 2);
  }
}
