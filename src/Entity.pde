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

  public boolean colDetectLeft(Wall wall){
    if(x + r >= wall.x && y >= wall.y && y <= wall.y + wall.h && x - r <= wall.x){
      return true;
    }else{
      return false;
    }
  }
  
  public boolean colDetectRight(Wall wall){
    if(x - r <= wall.x + wall.w && y >= wall.y && y <= wall.y + wall.h && x + r >= wall.x + wall.w){
      return true;
    }else{
      return false;
    }
  }
  
  public boolean colDetectTop(Wall wall){
    if(y + r >= wall.y && x >= wall.x && x <= wall.x + wall.w && y - r <= wall.y){
      return true;
    }else{
      return false;
    }
  }
  
  public boolean colDetectBottom(Wall wall){
    if(y - r <= wall.y + wall.h && x >= wall.x && x <= wall.x + wall.w && y + r >= wall.y + wall.h){
      return true;
    }else{
      return false;
    }
  }
  
}
