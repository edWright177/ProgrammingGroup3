void setup() {
  //size(1980, 1080);
  surface.setTitle("Group 3");
  //surface.setResizable(true);
  fullScreen();
  frameRate(60);
}

//player object
Player p = new Player(0, 0, 'a');

int x = 0;
int y = 0;
void draw() {
  background(#ffffff);
  p.move();
}
