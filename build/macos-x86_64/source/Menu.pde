public class Menu extends UI{
  int x;
  int y;
  int w;
  int h;
  boolean play = false;
  PImage img;
  public Menu(int x, int y){
    this.x = x;
    this.y = y;
    img = loadImage("images/menu.png");
    w = img.width * 4;
    h = img.height * 4;
  }
  


  
  
  public void display(){
    image(img, x, y);
    //play?
    if (mouseX > (width/2)-100 && mouseX < (width/2)+110 &&  mouseY > (height/2)-110 && mouseY < height/2 -10) {
      if(mousePressed){
        hide();
      }
    }
    //exit?
    if (mouseX > (width/2)-100 && mouseX < (width/2)+110  &&  mouseY > (height/2) +150 && mouseY < height/2 +250) {
     if(mousePressed){
        exit();
     }
    }
  }
  public void hide(){
      x = 1000000;
      y = 1000000;
  }
}
