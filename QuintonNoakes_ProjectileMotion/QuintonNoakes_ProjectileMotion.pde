PVector location2; 

PVector velocity2; 

PVector acceleration2; 

PVector location; 

PVector velocity; 

PVector acceleration; 

  float topspeed; 

void setup() { 

  size(640, 360);   

  noLoop();//the program inside of draw is only run once 

  location = new PVector(0 + 16,height - 16); 

  velocity = new PVector(-1,3); 

  acceleration = new PVector(.0033,.025); 

  location2 = new PVector(width - 16,height - 16); 

  velocity2 = new PVector(-1,3); 

  acceleration2 = new PVector(-.0033,.025); 

  topspeed = 4; 

} 

void draw() { 

  background(255); 

  location.sub(velocity); 

  velocity.sub(acceleration); 

location2.add(velocity2); 

  velocity2.add(acceleration2); 

  velocity.limit(topspeed); 

  velocity2.limit(topspeed); 

  stroke(0); 

  fill(175); 

  ellipse(location.x,location.y,16,16); 

  

  ellipse(location2.x,location2.y,16,16); 

   if((location2.y > height) || (location2.y < 0)){ 

    velocity2.y = velocity2.y * - .9; 

  } 

   if((location2.x > width) || (location2.x < 0)){ 

    velocity2.x = velocity2.x * - .9; 

     

   } 

  

  if((location.y > height) || (location.y < 0)){ 

    velocity.y = velocity.y * - .9; 

  } 

   if((location.x > width) || (location.x < 0)){ 

    velocity.x = velocity.x * - .9; 

     

   } 

   } 

  

// when mouse is clicked program runs more than once 

void mousePressed() { 

  loop(); 

} 
