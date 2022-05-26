//objects
Player p;
Enemy e;
Wall w;
Menu m;

void setup() { 
  size(1920, 1080);
  surface.setTitle("Group 3");
  //surface.setResizable(true);
  //fullScreen();
  frameRate(60);
 
  p = new Player(0, 0, 'a');
  e = new Enemy(0,0,0,0);
  w = new Wall((width/2)-90, (height/2) -115, 200, 100);
  m = new Menu(0, 0);
  
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
  

  
  //player movement
  p.move();
  if(p.colDetectRight(w)){
    p.x += 5;
  }
  if(p.colDetectLeft(w)){
    p.x -= 5;
  }
  if(p.colDetectTop(w)){
    p.y -= 5;
  }
  if(p.colDetectBottom(w)){
    p.y += 5;
  }
  
  
  
  
  //enemy display and movement
  e.display();
  e.huntPlayer(p);
  

    //wall display
  w.display();
  


}
