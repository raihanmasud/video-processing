PImage img = loadImage("hand.jpg");
int dimension = (img.width*img.height);
img.loadPixels();

println(img.width);
  println(img.height);
  println("");
  println("");

for (int i=0; i < dimension; i+=2) 
{ 

  
  //print(img.pixels[i] );
  float r = blue (img.pixels[i]);
  
  
  //print(r);
  if (r>200)
  {print(i+" ");
  println(r);}
  
  //print(" ");
  //if(i%img.width==0)println("");
} 

