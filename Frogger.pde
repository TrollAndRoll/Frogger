/**Start with a new sketch that contains setup() and draw() methods. Ask your teacher if you don’t know how to do this. The suggestion under each step should help you with your program.

//Save your sketch as frogger inside your processing folder.

//1.Make a canvas of size 400x400 for your game. 
setup(){
  
  size(400, 400);       // in setup method 
  background(red, green, blue)    // in draw method 

//2. Draw a frog on the bottom of the canvas. (It can be a ball for now)
  fill(red, green, blue)      // in draw method 
  ellipse(x, y, width, height)     // in draw method 

//3.  Make member variables to keep track of your frog’s hop distance, X and Y position


//4. Add code to the method below to give our frog movement. 
}
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
      //Frog Y position goes up
      }
      else if(keyCode == DOWN)
      {
        //Frog Y position goes down 
      }
      else if(keyCode == RIGHT)
      {
       //Frog X position goes right
      }
      else if(keyCode == LEFT)
      {
        //Frog X position goes left
      }
   }
}
  
//5. Write a method to keep our frog from going outside of the canvas


    

//8. Copy this functionality in your Car class to display your car position 
  void display() 
  {
    fill(0,255,0);
    rect(Position of X , Position of Y,  Size of your Car, 50);
  }

//9. Create several new Car objects at the top of your sketch.

//10. Call the display() method in your draw method for each car. You should see your car appear.

//11.  Inside your car class write a method for the car to move to the left with its speed. 

//12.  In the same method, do a check if it goes off the canvas to have it return to the rightmost position of your canvas.  (hint: use the width variable)

//13.  Write a method for the car to move to the right with its speed. 

//14. In the same method, do a check if it goes off the canvas to have it return to the leftmost position of your canvas

//15. In the draw() method, alternate the driving direction of each of your cars to either go left or right. Use the display() method after every drive method. 


}//16. Create a getX(), getY(), and getSize() method in your Car class.

//17. Check when a car hits your frog. You can use the following intersection method to help. 

boolean intersects(Car car) {
if ((frogY > car.getY() && frogY < car.getY()+50) && (frogX > car.getX() && frogX < car.getX()+car.getSize()))
          return true;
    else 
        return false;
//18. Call the intersects method for one of your cars in your draw method.  If the intersects method returns true, return your frog to the starting point. 

//19. Repeat step 18 for all of your cars.

//20. Create a winner banner once you get to the other side 
  text( string message, x, y); 
  textSize(size); 





 Example:
https://twilight-toe.hyperdev.space


Copy your code here to make your own frogger webpage!!
https://hyperdev.com/#!/project/twilight-toe
**/

int frogX = 0, frogY = 0, speed = 3;
Car vroom = new Car(400, 50, 20, 3);
void setup()
{
  size(400, 400);
  
}       // in setup method 
  
 void KeepInside()
  {
   if (frogX >= width - 50)
   {
     frogX = width - 50;
   }
   
   if (frogY >= width - 50)
   {
     frogY = width - 50;
   }
   
   if (frogX <= 50)
   {
     frogX = 0 +  50;
   }
   
   if (frogY <= 50)
   {
     frogY = 0 + 50;
   }
   
  }
  
 class Car
 {
   int X, Y, Size, Speed;
   Car(int x, int y, int size, int speed)
   {
     X = x;
     Y = y;
     Size = size;
     Speed = speed;
   }
   
    //6. Create a Car class inside your sketch. 
//Your Car class will include the car’s position at x, position at y, the size of the car, and the speed of the car.
//7. Create a constructor inside your Car class that initializes each variable with parameters.
    void display() 
  {
    fill(0,255,0);
    rect(X, Y,  Size, Speed);
    X = X - Speed;
    if (X <= 0)
    {
       X = width;
    }
  }

 }
  
  
  void keyPressed()
  {

  if(key == CODED){
      if(keyCode == UP)
      {
        frogY = frogY - speed;
      //Frog Y position goes up
      }
      else if(keyCode == DOWN)
      {
        //Frog Y position goes down 
        frogY = frogY + speed;
      }
      else if(keyCode == RIGHT)
      {
       //Frog X position goes right
       frogX = frogX + speed;
      }
      else if(keyCode == LEFT)
      {
        //Frog X position goes left
        frogX = frogX - speed;
      }
   }
}
  


void draw()
{
  KeepInside();
  
  background(#FF1717, #22FF17, #FF171B); //in draw method
   fill(#05FF41);      // in draw method 
  ellipse(frogX, frogY, 100, 100);  // in draw method 
  vroom.display();
}