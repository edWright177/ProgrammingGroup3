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
  
  //movement
    public void move(){
    int velocity = 0;
    rect(x, y, 20, 20);
    if(keyPressed){
      velocity = 12;
      switch(key){
        //move up
        case 'w':
        y-= velocity;
        break;
        //move left
        case 'a':
        x-=velocity;
        break;
        //move down
        case 's':
        y+=velocity;
        break;
        //move right
        case 'd':
        x+=velocity;
        break;
        //do nothing (minecraft)
        default:
        velocity = 0;
        break;
       } 
    } 
  }
}
  
