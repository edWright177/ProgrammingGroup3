public class Enemy extends Entity{
  int range;
  int velocity;
  int health;
  int strength;
  int x;
  int y;
  public Enemy(int health, int strength, int x, int y){
    this.health = health;
    this.strength = strength;
    this.x = x;
    this.y = y;
    range = 200;
    velocity = 0;
  }
  public PImage img;
  public void huntPlayer(Player player){
    //move towards player in x axis
    if(x + range > player.x){
      velocity = 1;
      x -=(colDetect(new Wall(1,1,1,1))?0:velocity;
    }else{
      velocity = 0;
    }
    if(x - range < player.x){
      velocity = 1;
      x +=(colDetect(new Wall(1,1,1,1))?0:velocity;
    }else{
      velocity = 0;
    }
    // move towards player on y axis
    if(y + range > player.y){
      velocity = 1;
      y -=(colDetect(new Wall(1,1,1,1))?0:velocity;
    }else{
      velocity = 0;
    }
    if(y - range < player.y){
      velocity = 1;
      y +=(colDetect(new Wall(1,1,1,1))?0:velocity;
    }else{
      velocity = 0;
    }
    
  }
  public void takeDamage(int hit){
    if(health > 0){
      health -= hit;
    }
  }
  public void display(){
    image(img, x, y);
  }
}
