int PHP;
int PMP;
int ED;
int EHP;
int PX;
int PY;
int EX;
int EY;

boolean left;
boolean right;

 void setup(){
 fullScreen();
 PHP = 10;
 PMP = 5;
 frameRate(60);
 right = true;
 left = false;
 }
 
  String AssetFolder = "Dependancies";
  String ImagesFolder = "Visual";
  String ImageNameI = "Protagonist I";
  String ImageNameII = "Protagonist II";
  String ImageNameIII = "Protagonist III";
  String ImageNameIV = "Protagonist IV";
  String ImageNameV = "Protagonist V";
  String ImageNameVI = "Protagonist VI";
  String ImageNameVII = "Protagonist VII";
  String fileExtentionImage = ".png";
  String open = "/";
  //
  String ImageDirectory = AssetFolder + open + ImagesFolder + open;
  String IpathwayI = ImageDirectory + ImageNameI + fileExtentionImage;
  String IpathwayII = ImageDirectory + ImageNameII + fileExtentionImage;
  String IpathwayIII = ImageDirectory + ImageNameIII + fileExtentionImage;
  String IpathwayIV = ImageDirectory + ImageNameIV + fileExtentionImage;
  String IpathwayV = ImageDirectory + ImageNameV + fileExtentionImage;
  
 void draw (){
 }
 
 void keyPressed(){
   
  if (key == 'w' || key == 'W') {
    PY = PY-1;
  }
  if (key == 's' || key == 'S') {
    PY = PY+1;
  }
  if (key == 'a' || key == 'A') {
    PX = PX-1;
    left = true;
    right = false;
  }
  if (key == 'd' || key == 'D') {
    PX = PX+1;
    right = true;
    left = false;
 }
 }
 void keyReleased(){
 }
