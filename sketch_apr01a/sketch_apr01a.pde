import processing.video.*;
Capture myCapture;

PImage f_img;

int numPixels;
int[] backgroundPixels;
int frameNo = 0;

float [][] fingerPixels ;
void setup() 
{
  size(400, 300);


  myCapture = new Capture(this, width, height, 40);
  //myCapture.frameRate(15);

  //myCapture.crop(10,10,180,180);
  numPixels = myCapture.width * myCapture.height;

 backgroundPixels = new int[numPixels];
 loadPixels();

  // The name of the capture device is dependent those
  // plugged into the computer. To get a list of the 
  // choices, uncomment the following line 
  //println(Capture.list());
  // And to specify the camera, replace "Camera Name" 
  // in the next line with one from Capture.list()
  //myCapture = new Capture(this, 10, 20, "Logitech QuickCam", 30);
}

void captureEvent(Capture myCapture) {
  
if(myCapture.available())
{
myCapture.read();
saveFrame("frame-####.jpg"); //saves frame
myCapture.loadPixels(); //load pixels

  //float r = red (img.pixels[i]);

  int j=0;
  for(int i=0;i<numPixels;i++)
  {

  float r = red (myCapture.pixels[i]);
  float g = green (myCapture.pixels[i]);
  float b = blue (myCapture.pixels[i]);
  
  //if the finger patch is blue
  if(b>=200)
  {
  fingerPixels[frameNo][j] = myCapture.pixels[i];
  j++;
  }


//print(" ");
//if (i%myCapture.width==0)
//println("");

  }
  
  print (frameNo+" \n") ;

  //for (int i=0; i<fingerPixels[frameNo].length ;i++)
  //print (fingerPixels[frameNo][i]+" ") ;
  
  frameNo++;
  
  
}

}

void draw() {
  image(myCapture, 0, 0);

//for (int i=0; i<fingerPixels[frameNo].length ;i++)
  {
    //for (int j=0; j<10 ;j++)
    {
    //print (fingerPixels[frameNo][j]+" ") ;
    
    }
    //print("\n");
  }
}
