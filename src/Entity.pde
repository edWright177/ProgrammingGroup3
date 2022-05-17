public class Entity{
  //super class for all characters
  String name;
  int x, y, hp, stamina, r;

  public int attack(int n){
    return n;
  }

  public void attacked(int n){
      hp-=(random(2)==0)?n:0;
  }

  public void move(char directon){}

  public boolean colDetect(Wall wall){
    if(wall.x + wall.w >= x && x > wall.x  || wall.y + wall.h >= y && y > wall.y){
      return true;
    }else{
      return false;
    }
  }
}
