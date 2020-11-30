int x=0, y=0;
int frame=500;
Timer startTimer;
color fondo=color(280,280,280);


void setup()
{
  size(800,800);
    background(155);
  startTimer = new Timer(100);


}
int pixel(){
   for(int i=0;i<800;i++)
      for(int j=0;i<800;j++){
         if(get(i,j)==fondo);
         return -1;
      }
      return 0;
   
}
void draw(){
  
    int flag;


  startTimer.countDown();
  fill(0);
  rect(10,0,40,10);
  fill(150);
  text(startTimer.getTime(),10,10);
  
  


 frameRate(frame);
 fill(random(0,240), random(0,240), random(0,240));
 rect(x,y,50,50);
 
 if(key == CODED)
 if(keyCode==RIGHT)
 {
   fill(random(0,100), random(0,100), random(0,100));
 rect(x,y,50,50);
 x++;
 }
 if(keyCode==LEFT){
   fill(random(0,100), random(0,100), random(0,100));
 rect(x,y,50,50);
 x--;
 }
 if(keyCode==DOWN){
   fill(random(0,100), random(0,100), random(0,100));
 rect(x,y,50,50);
 y++;
 }
 if(keyCode==UP){
   fill(random(0,100), random(0,100), random(0,100));
 rect(x,y,50,50);
 y--;
 }
 
 if(x > 800){x = x=0;}
 if(y > 800){y = y=0;}
 if(x < -70){x = x=800;}
 if(y < -70){y = y=800;}
 
 if(pixel()==0)
 {
    startTimer = new Timer(100);
      background(255);
   frame+=200;
 }
   if(startTimer.getTime()<=0){
     startTimer = new Timer(100);
      background(255);
 }
 
 
}


class Timer
  {
   float Time;
 
    Timer(float set)
    {
      Time= set;
    }
    float getTime()
    {
       return(Time);
    }
    void setTime(float set)
    {
      Time=set;
    }
    void countUp()
    {
      Time+=1/frameRate;
    }
    void countDown()
    {
        Time-=1/frameRate;
    }
  
  
}
