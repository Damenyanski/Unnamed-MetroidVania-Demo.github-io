int NumDiv = 13;
int NumPar = 4;
float divs[] = new float[NumDiv*NumPar];
int Ref = 20;
void divs() {

  divs[0] = Ref*3;
  divs[1] = Ref*3;
  divs[2] = Ref*17;
  divs[3] = Ref*18;

  float referentX = divs[2]/17;
  float referentY=divs[3]/18;
  float column1 = divs[0]+referentX;
  float column2 = column1 + referentX*7;
  /*
float column3 = column2 + referentX *;
   float column4;
   float column5;
   */

  float row1 = divs[2]+referentY;
  float row2 = row1+referentY*2;
  float row3=row2+referentY*2;
  float row4=row3+referentY*2;
  float row5=row4+referentY*2;
  float row6=row5+referentY*1;
  float row7=row6+referentY*1;
  float row8=row7+referentY*2;

  for (int i=4; i<divs.length; i++) {

    if (i%4==0&&int(i/4)==1) {
      divs[i] = row1;
    }

    if (i%4 == 1 && int(i/4) == 1) {
      divs[i] = column1;
    }

    if (i%4 == 2 && int(i/4) == 1) {
      divs[i] = 5*Ref;
    }

    divs[4] = 4*Ref;
    divs[5] = 4*Ref;
    divs[6] = 5*Ref;
    divs[7] = 6*Ref;

    divs[8] = 4*Ref;
    divs[9] = 8*Ref;
    divs[10] = 5*Ref;
    divs[11] = 1*Ref;

    divs[12] = 4*Ref;
    divs[13] = 9*Ref;
    divs[14] = 5*Ref;
    divs[15] = 1*Ref;

    divs[16] = 4*Ref;
    divs[17] = 10*Ref;
    divs[18] = 5*Ref;
    divs[19] = 1*Ref;

    divs[20] = 11*Ref;
    divs[21] = 5*Ref;
    divs[22] = 1*Ref;
    divs[23] = 6*Ref;

    divs[24] = 11*Ref;
    divs[25] = 7*Ref;
    divs[26] = 1*Ref;
    divs[27] = 6*Ref;

    divs[28] = 11*Ref;
    divs[29] = 9*Ref;
    divs[30] = 1*Ref;
    divs[31] = 6*Ref;

    divs[32] = 11*Ref;
    divs[33] = 11*Ref;
    divs[34] = 1*Ref;
    divs[35] = 6*Ref;

    divs[36] = 11*Ref;
    divs[37] = 13*Ref;
    divs[38] = 1*Ref;
    divs[39] = 6*Ref;
  }
