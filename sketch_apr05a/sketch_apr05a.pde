PImage img = loadImage("hand.tif");
int dimension = (img.width*img.height);
img.loadPixels();
for (int i=0; i < dimension; i+=2) 
{ 

  
  //print(img.pixels[i] );
  float r = red (img.pixels[i]);
  
  print(r);
  
  print(" ");
  if(i%img.width==0)println("");
} 

