public class Menu extends UI{
  int x;
  int y;
  int w;
  int h;
  PImage img;
  public Menu(int x, int y){
    this.x = x;
    this.y = y;
    img = loadImage("images/menu.png");
    w = img.width;
    h = img.height;
  }
  
  public void display(){
    image(img, x, y);
  }
  public void hide(){
      x = 1000000;
      y = 1000000;
  }
}
