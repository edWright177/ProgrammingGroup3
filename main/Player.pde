public class Player extends Entity{
  int exp;
  int hunger;
  char rank;
  public Player(int exp, int hunger, char rank){
    this.exp = exp;
    this.hunger = hunger;
    this.rank = rank;
  }
  public boolean toggleInventory(){
    return true;
  }

  public boolean interact(String press){
    if(Character.toString(key)== press){
      return true;
    }else{
      return false;
    }
  }
  
  public void keyPressed(){
    switch(key){
        //move up
        case 'w':
        y-=1;
        break;
        //move left
        case 'a':
        x-=1;
        break;
        //move down
        case 's':
        y+=1;
        break;
        //move right
        case 'd':
        x+=1;
        break;
        //do nothing (minecraft)
        default:
        x=+0;
        y+=0;
        break;
    }
  }
}
