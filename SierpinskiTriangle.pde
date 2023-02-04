public void setup()
{
  size(400, 400);
}
public void draw()
{
  sierpinski(0, 250, 500);
}
public void mouseDragged()//optional
{
}
public void sierpinski(float x, float y, int len) 
{
  //draw a triangle
  //triangle(x,y,x+len/2,y-len,x+len,y);
  quad(x, y, x+len/2, y-len/4, x+len, y, x+len/2, y+len/4);
  if(len>60)
  {
    //sierpinski(x,y,len/2);
    //sierpinski(x+len/2,y,len/2);
    //sierpinski(x+len/4,y-len/2,len/2);
    //fill((int)(Math.random()*255),0,0);
    //------------tile pattern-----------------
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/8,len/3);
    sierpinski(x+len/4,y+len/8,len/3);
    //-------------carpet--------------
    //sierpinski(x+len/4,y,len/2);
    //sierpinski(x,y,len/4);
    //sierpinski(x+3*len/4,y,len/4);
    //sierpinski(x+len*0.375,y-len*0.1875,len/4);
    //sierpinski(x+len*0.375,y+len*0.1875,len/4);
    //---------horizontal-------------
    
  }
}
