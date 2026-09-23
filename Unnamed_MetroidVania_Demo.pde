import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;

int AppWidth;
int AppHeight;

int PHP;
int PMP;
int ED;
int EHP;
int PX;
int PY;
int PH;
int PW;
int EX;
int EY;

int step;

PImage ImageI;
PImage ImageII;
PImage ImageIII;
PImage ImageIV;
PImage ImageV;
PImage ImageVI;
PImage ImageVII;
PImage BgroundI;
PImage BackgroundII;


boolean left;
boolean right;

boolean Grav;
boolean TouchGround;

 void setup(){
 fullScreen();
 println(displayWidth, displayHeight);
 //AppWidth=displayWidth;
 //AppHeight=displayHeight;
 
 PHP = 10;
 PMP = 5;
 step = 10;
 frameRate(60);
 right = true;
 left = false;
 Grav = false;
 TouchGround = true;

  String AssetFolder = "Dependancies";
  String ImagesFolder = "Visual";
  String BackgroundFolder = "Back Ground";
  String ImageNameI = "Protagonist 1 R";
  String ImageNameII = "Protagonist 2 R";
  String ImageNameIII = "Protagonist 3 R";
  String ImageNameIV = "Protagonist 4 R";
  String ImageNameV = "Protagonist 5 R";
  String ImageNameVI = "Protagonist 6 R";
  String ImageNameVII = "Protagonist 7 R";
  String BackgroundI = "Entrance 2";
  String BackgroundII = "Entrance 1";
  String fileExtentionImage = ".png";
  String open = "/";
  //
  String ImageDirectory = AssetFolder + open + ImagesFolder + open;
  String BackgroundDirectory = ImageDirectory + BackgroundFolder + open;
  String IpathwayI = ImageDirectory + ImageNameI + fileExtentionImage;
  String IpathwayII = ImageDirectory + ImageNameII + fileExtentionImage;
  String IpathwayIII = ImageDirectory + ImageNameIII + fileExtentionImage;
  String IpathwayIV = ImageDirectory + ImageNameIV + fileExtentionImage;
  String IpathwayV = ImageDirectory + ImageNameV + fileExtentionImage;
  String IpathwayVI = ImageDirectory + ImageNameVI + fileExtentionImage;
  String IpathwayVII = ImageDirectory + ImageNameVII + fileExtentionImage;

  String BpathwayI = BackgroundDirectory + BackgroundI + fileExtentionImage;


  ImageI = loadImage(IpathwayI);
  ImageII = loadImage(IpathwayII);
  ImageIII = loadImage(IpathwayIII);
  ImageIV = loadImage(IpathwayIV);
  ImageV = loadImage(IpathwayV);
  ImageVI = loadImage(IpathwayVI);
  ImageVII = loadImage(IpathwayVII);
  BgroundI = loadImage(BpathwayI);

  
 //divs();
 } 
 void draw (){
   background(BgroundI);
    while(Grav = true) {
    PY = PY-5;
   }
   while(TouchGround = true)
   {
     Grav = false;
   }
image(ImageI, PX,PY,PW,PH);
println(PX,PY);
}
 
 void keyPressed(){
   
   /*if (key==CODED) {
    if (keyCode == RIGHT) {
      left=true;
      right=false;
      PX=PX+step/6-3;
      image(ImageI, PX, PY, step, step);
      image(ImageII, PX, PY, step, step);
      image(ImageIII, PX, PY, step, step);
      image(ImageII, PX, PY, step, step);
      image(ImageI, PX, PY, step, step);
    }
    right=true;
    left=false;
  }
  if (key==CODED) {
    if (keyCode == LEFT) {
      left=true;
      right=false;
      PX=PX-step/6+3;
      image(ImageIV, PX, PY, step, step);
      image(ImageV, PX, PY, step, step);
      image(ImageVI, PX, PY, step, step);
    }
    left=true;
    right=false;*/
   
  if (key == 'a' || key == 'A') {
    PX = PX-10;
    left = true;
    right = false;
  }
  if (key == 'd' || key == 'D') {
    PX = PX+10;
    right = true;
    left = false;
 }
 }
 void keyReleased(){
   if (key == 'x' || key == 'X') {
    PY = PY + (step * 3);
    Grav=true;
  }
 }
