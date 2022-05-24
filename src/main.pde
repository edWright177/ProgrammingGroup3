//objects
Player p = new Player(0, 0, 'a');
Enemy e = new Enemy(0,0,0,0);
Wall w = new Wall(0, 0, 500, 500);
Menu m = new Menu(0, 0);
void setup() { 
  //size(1980, 1080);
  surface.setTitle("Group 3");
  //surface.setResizable(true);
  fullScreen();
  frameRate(60);
   
  /* initialize images */
  
  //player
  PImage playerImg = loadImage("images/player.jpeg");
  p.img = playerImg;
  
  //enemy
  PImage enemyImg = loadImage("images/enemy.jpeg");
  e.img = enemyImg;
  /* initialize images */
  
}



void draw() {
  background(#ffffff);
  
  //wall display
  w.display();
  
  //player movement
  p.move();
  
  //enemy display and movement
  e.display();
  e.huntPlayer(p);
  
  //menu display
  m.display();

}
