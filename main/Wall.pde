public class Wall{
  int x, y;
  int w, h;
  public Wall(int x, int y, int w, int h){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  public void display(){
    rect(x, y, w ,h);
  }
}
