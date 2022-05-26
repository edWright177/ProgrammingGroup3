//objects
Player p;
Enemy e;
Wall w;
Menu m;
Wall w1, w2, w3, w4;
ArrayList<Wall> walls;
PImage background;

void setup() { 
  size(1920, 1080);
  surface.setTitle("Group 3");
  //surface.setResizable(true);
  //fullScreen();
  frameRate(60);
  walls = new ArrayList<Wall>();
 
  p = new Player(0, 0, 'a');
  e = new Enemy(0,0,0,0);
  w1 = new Wall((width/2)-90, (height/2) -115, 0, 0);
  w2 = new Wall((width/2)-90, (height/2) -115, 200, 400);
  w3 = new Wall((width/2)-90, (height/2) -115, 0, 200);
  w4 = new Wall((width/2)-90, (height/2) -115, 200, 0);
  walls.add(w1);
  walls.add(w2);
  walls.add(w3);
  walls.add(w4);
  m = new Menu(0, 0);
  
  /* initialize images */
  
  //player
  PImage playerImg = loadImage("images/player.jpeg");
  p.img = playerImg;
  
  //enemy
  PImage enemyImg = loadImage("images/enemy.jpeg");
  e.img = enemyImg;
  /* initialize images */
  p.loader();
  background = loadImage("images/background.jpeg");
}



void draw() {
  background(background);
  
    
    //wall display
    w1.display();
    w2.display();
    w3.display();
    w4.display();
  //player movement
  p.move();
  for(Wall w: walls){
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
  }
  
  p.saver();
  
  
  
  //enemy display and movement
  e.display();
  e.huntPlayer(p);
  
  m.display();



}
