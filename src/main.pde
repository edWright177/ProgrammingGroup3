//player object
Player p = new Player(0, 0, 'a');
Enemy e = new Enemy(0,0,0,0);
void setup() { 
  size(1980, 1080);
  surface.setTitle("Group 3");
  surface.setResizable(true);
  //fullScreen();
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
  p.move();
  e.display();
  e.huntPlayer(p);
}
