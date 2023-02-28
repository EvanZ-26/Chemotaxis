Thing [] thingArray;
 void setup()   
 {    
   size(500,500);
   thingArray = new Thing [100];
   for (int i = 0; i < thingArray.length; i+=1){
     thingArray[i] = new Thing();
   }
 }   
 void draw()   
 {    
   background(129, 90, 196);
   int nom = 0;
   for(int j = 0; j < thingArray.length; j++)
   {
     thingArray[j].show();
     thingArray[j].move();
     if (thingArray[j].caught == true){
       nom +=1;
     }
   }
   fill(255,255,255);
   text(nom, (height/4)*3, width/4);
 } 
 
 //Class
 
 class Thing    
 {     
   float myX, myY, finalX, finalY;
   color myColor;
   boolean caught;
   Thing(){
     myX = 250;
     myY = 250;
     myColor = color((int)(Math.random()*256)+1,(int)(Math.random()*256)+1,(int)(Math.random()*256)+1);;
   }
   void show()
   {
     stroke(129, 90, 196);
     fill(myColor);
     ellipse(myX,myY,25,25);
     if (get(mouseX, mouseY) == myColor){
       caught = true;
       myColor = color(129, 90, 196);
     }
   }
   void move()
   {
    myX += (int)(Math.random()*19)-9;
    myY += (int)(Math.random()*19)-9;
   }
 } 
