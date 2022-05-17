public class Enemy extends Entity{
  int range;
  PImage img;
  int ADamage;
  int health;
  int strength;
  int x;
  int y;
  public Enemy(int health, int strength, int x, int y, int ADamage){
    this.health = health;
    this.strength = strength;
    this.x = x;
    this.y = y;
    this.ADamage = ADamage;
    img = loadImage("images\\enemy.jpeg");
    range = 200;
  }
  public void huntPlayer(Player player){
    //move towards player in x axis
    if(x - range > player.x){
      x -=(colDetect(new Wall(1,1,1,1)))?0:1;
    }
    if(x + range < player.x){
      x +=(colDetect(new Wall(1,1,1,1)))?0:1;
    }
    // move towards player on y axis
    if(y - range > player.y){
      y -=(colDetect(new Wall(1,1,1,1)))?0:1;
    }
    if(y + range < player.y){
      y +=(colDetect(new Wall(1,1,1,1)))?0:1;
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
