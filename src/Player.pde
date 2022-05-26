public class Player extends Entity{
  int exp;
  int hunger;
  char rank;
  PImage img;
  String save = "save/save.txt";
 
  
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
    image(img, x, y);
    if(keyPressed){
      velocity = 12;
      switch(key){
        //move up
        case 'w':
        y-=(colDetect(new Wall(1,1,1,1)))?0:velocity;
        break;
        //move left
        case 'a':
        x-=(colDetect(new Wall(1,1,1,1)))?0:velocity;
        break;
        //move down
        case 's':
        y+=(colDetect(new Wall(1,1,1,1)))?0:velocity;
        break;
        //move right
        case 'd':
        x+=(colDetect(new Wall(1,1,1,1)))?0:velocity;
        break;
        //do nothing (minecraft)
        default:
        velocity = 0;
        break;
       } 
    } 
  }
  
  /* Lines in save file
0. Player x
1. Player y
2. Player HP
3. Player xp
4. Player lvl
5. Player hunger
6. Enemy(n) x
7. Enemy(n) y
8. Enemy(n) HP
9. Enemy(n) str
...
10. Floor wall(n) x
11. Floor wall(n) y
12. Floor wall(n) w
13. Floor wall(n) h
...
*/
  
  public void data(){
    BufferedReader reader = createReader(save);
    PrintWriter writer = createWriter(save);
    
    try{
      x = Integer.valueOf(reader.readLine());
      y = Integer.valueOf(reader.readLine());
      reader.close();
    } catch(Exception e){
      writer.println(x + "\n" + y);
      writer.close();  
    }
  }
}
  
