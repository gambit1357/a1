unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Exit: TPanel;
    Panel1: TPanel;
    edt1: TEdit;
    pnl1: TPanel;
    pnl2: TPanel;
    image1: TImage;
    pnl3: TPanel;
    pnl4: TPanel;
    procedure ExitClick(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure pnl1Click(Sender: TObject);
  //  procedure pnl2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
 Form1: TForm1;
 ML1:array[1..5]of integer;
 ML:array[1..5, 0..15]of integer;
 X:array[1..7]of integer;
 MO:array[1..5]of integer;
 MA:array[1..5]of integer;
 MN:array[1..5,0..15] of integer;
 ME:array[1..5,0..15] of integer;
 MM:array[1..2,1..80]of integer;
var s:integer;

implementation

{$R *.dfm}

procedure TForm1.ExitClick(Sender: TObject);
begin
 if CloseQuery then Close;
end;

procedure TForm1.Panel1Click(Sender: TObject);
var i,j: Integer;
begin
 s:=StrToInt(edt1.text);
   pnl1.Caption:='START for S = '+ IntToStr(s);
   pnl1.Visible:=True;
    Image1.Left:=8;         Image1.Top:=48;
 Image1.Width:=492;      Image1.Height:=276;
 Image1.Visible:=True;
  with Image1.Canvas do
 begin
  Pen.Color:=clBlack;
  Brush.Color:=clSkyBlue;
  Rectangle(60,40,144,124);
  Brush.Color:=clYellow;
  for i:=0 to 3 do
  for j:=0 to 3 do
  begin;
   Rectangle(64+j*20,44+i*20,80+j*20,60+i*20);
               if(i*4+j)<9      then
    TextOut(68+j*20,44+i*20, IntToStr(i*4+j+1))
   else TextOut(65+j*20,44+i*20, IntToStr(i*4+j+1));
   end;
   Pen.Color:=clBlack;
  Brush.Color:=clSkyBlue;
  Rectangle(60,144,144,228);
  Brush.Color:=clYellow;
  for i:=0 to 3 do
  for j:=0 to 3 do
  begin
   Rectangle(64+j*20,148+i*20,80+j*20,164+i*20);
                 if(i*4+j)<9      then
    TextOut(68+j*20,148+i*20, IntToStr(i*4+j+1))
   else TextOut(65+j*20,148+i*20, IntToStr(i*4+j+1));
   end;
   Pen.Color:=clBlack;
  Brush.Color:=clSkyBlue;
  Rectangle(204,40,288,124);
  Brush.Color:=clYellow;
  MoveTo(144,52);
  LineTo(216,52);
  MoveTo(144,156);
  LineTo(216,156);
  MoveTo(269,106);
  LineTo(359,106);
  MoveTo(269,164);
  LineTo(359,164);
  MoveTo(434,137);
  LineTo(459,137);

  MoveTo(40,71);
  LineTo(60,71);
  MoveTo(40,52);
  LineTo(60,52);
  MoveTo(40,90);
  LineTo(60,90);
  MoveTo(40,109);
  LineTo(60,109);
  MoveTo(40,161);
  LineTo(60,161);
  MoveTo(40,180);
  LineTo(60,180);
  MoveTo(40,198);
  LineTo(60,198);
  MoveTo(40,216);
  LineTo(60,216);
  MoveTo(174,71);
  LineTo(216,71);
  MoveTo(174,90);
  LineTo(216,90);
  MoveTo(174,156);
  LineTo(174,109);
  MoveTo(159,172);
  LineTo(159,52);
  MoveTo(159,172);
  LineTo(216,172);
  MoveTo(174,109);
  LineTo(216,109);
  MoveTo(174,198);
  LineTo(216,198);
  MoveTo(174,216);
  LineTo(216,216) ;
   MoveTo(320,146);
  LineTo(350,146) ;
  TextOut(38,45, 'X4');
  TextOut(38,64, 'X6');
  TextOut(38,83, 'X5');
  TextOut(38,102, 'X7');
  TextOut(38,191, 'X4');
  TextOut(38,209, 'X6');
  TextOut(38,154, 'X5');
  TextOut(38,173, 'X7');
  TextOut(172,64, 'X1');
  TextOut(172,83, 'X3');
  TextOut(172,191, 'X1');
  TextOut(172,210, 'X3');
  TextOut(38,191, 'X4');
  TextOut(38,209, 'X6');
  TextOut(38,154, 'X5');
  TextOut(38,173, 'X7');
  TextOut(318,139, 'X2');
  TextOut(453,130, 'Y');
  TextOut(86,26, 'LUT1');
  TextOut(86,131, 'LUT2');
  TextOut(229,26, 'LUT3');
  TextOut(229,131, 'LUT4');
  TextOut(379,78, 'LUT5');
  for i:=0 to 3 do
  for j:=0 to 3 do
  begin
   Rectangle(208+j*20,44+i*20,224+j*20,60+i*20);
         if(i*4+j)<9      then
    TextOut(212+j*20,44+i*20, IntToStr(i*4+j+1))
   else TextOut(209+j*20,44+i*20, IntToStr(i*4+j+1));
   end;
   Pen.Color:=clBlack;
  Brush.Color:=clSkyBlue;
  Rectangle(204,144,288,228);
  Brush.Color:=clYellow;
  for i:=0 to 3 do
  for j:=0 to 3 do
  begin
   Rectangle(208+j*20,148+i*20,224+j*20,164+i*20);
    if(i*4+j)<9      then

   TextOut(212+j*20,148+i*20, IntToStr(i*4+j+1))
   else TextOut(209+j*20,148+i*20, IntToStr(i*4+j+1));
   end;

   Pen.Color:=clBlack;
  Brush.Color:=clSkyBlue;
  Rectangle(350,92,434,176);
  Brush.Color:=clYellow;
  for i:=0 to 3 do
  for j:=0 to 3 do
  begin
   Rectangle(354+j*20,96+i*20,370+j*20,112+i*20);
   if(i*4+j)<9      then
   TextOut(358+j*20,96+i*20, IntToStr(i*4+j+1))
   else TextOut(355+j*20,96+i*20, IntToStr(i*4+j+1));
   end;
 
 end;
    end;
procedure TForm1.pnl1Click(Sender: TObject);
 var i,j,t,k,h,c:integer;
begin
 for c:=1 to 5 do
 for t:=0 to 15 do
 begin
  MN[c,t]:=0;
  ME[c,t]:=0;
 end;

 ML1[1] := 6278;
 ML1[2] := 6278;
 ML1[3] := 59837;
 ML1[4] := 16109;
 ML1[5] := 2720;

 for c:=1 to 5 do
 begin
  h:=ML1[c];
  for t:=0 to 15 do
  begin
   ML[c,t]:=h and 1;
   h:=h shr 1;
  end;
 end;
        pnl2.Caption:=' ';
 for k:=0 to 127 do
 begin
  h:=k;
  for i:=1 to 7 do
  begin
   X[i]:=h and 1;
   h:=h shr 1;
  end;

  MA[1]:=((X[7]*2+X[5])*2+X[6])*2+X[4];
  MO[1]:=ML[1,MA[1]];
  MA[2]:=((X[6]*2+X[4])*2+X[7])*2+X[5];
  MO[2]:=ML[2,MA[2]];
  MA[3]:=((MO[2]*2+X[3])*2+X[1])*2+MO[1];
  MO[3]:=ML[3,MA[3]];
  MA[4]:=((X[3]*2+X[1])*2+MO[1])*2+MO[2];
  MO[4]:=ML[4,MA[4]];
  MA[5]:=(MO[4]*2+X[2])*4+MO[3];
  MO[5]:=ML[5,MA[5]];

  for c:= 1 to 5 do
  begin
   if k<S then
    MN[c,MA[c]]:=1
   else
    ME[c,MA[c]]:=1;
  end;
   pnl2.visible:=True;
   pnl3.visible:=True;
   pnl4.visible:=True;
       pnl4.Caption:=pnl4.Caption+inttostr(MO[5])+' ';
 end;
 h:=0;
 for c:=1 to 5 do
 for t:=0 to 15 do
  if (ME[c,t]=1) and (MN[c,t]=0)
  then
  begin
   h:=h+1;
   MM[1,h]:=c;
   MM[2,h]:=t;
  end;
  pnl2.caption:=IntToStr(h)+' potentially hazardous points are detected';
  pnl2.visible:=True;

 for  t:=1 to h do
 begin
  with Image1.Canvas do
  begin
   Pen.Color:=clBlack;
   Brush.Color:=clRed;
   Font.Color:=clWhite;
   if MM[1,t]=1 then
    begin;
     i:=MM[2,t] shr 2;
     j:=MM[2,t] and 3;
     Rectangle(64+j*20,44+i*20,80+j*20,60+i*20);
     if(i*4+j)<9  then
      TextOut(68+j*20,44+i*20, IntToStr(i*4+j+1))
     else
      TextOut(65+j*20,44+i*20, IntToStr(i*4+j+1));
    end;
   if MM[1,t]=2   then
    begin;
     i:=MM[2,t] shr 2;
     j:=MM[2,t] and 3;
      Rectangle(64+j*20,148+i*20,80+j*20,164+i*20);
   if(i*4+j)<9      then
    TextOut(68+j*20,148+i*20, IntToStr(i*4+j+1))
   else TextOut(65+j*20,148+i*20, IntToStr(i*4+j+1));
   end;
   if MM[1,t]=3 then
    begin
     i:=MM[2,t] shr 2;
     j:=MM[2,t] and 3;
     Rectangle(208+j*20,44+i*20,224+j*20,60+i*20);
         if(i*4+j)<9      then
    TextOut(212+j*20,44+i*20, IntToStr(i*4+j+1))
   else TextOut(209+j*20,44+i*20, IntToStr(i*4+j+1));
   end;
   if MM[1,t]=4   then
    begin;
     i:=MM[2,t] shr 2;
     j:=MM[2,t] and 3;
       Rectangle(208+j*20,148+i*20,224+j*20,164+i*20);
   if(i*4+j)<9      then
   TextOut(212+j*20,148+i*20, IntToStr(i*4+j+1))
   else TextOut(209+j*20,148+i*20, IntToStr(i*4+j+1));
   end;
       if MM[1,t]=5 then
    begin;
     i:=MM[2,t] shr 2;
     j:=MM[2,t] and 3;
   Rectangle(354+j*20,96+i*20,370+j*20,112+i*20);
   if(i*4+j)<9      then
   TextOut(358+j*20,96+i*20, IntToStr(i*4+j+1))
   else TextOut(355+j*20,96+i*20, IntToStr(i*4+j+1));
   end;
   pnl3.Caption:=' ';
    for i:=1 to h do
      pnl3.Caption:=pnl3.Caption+inttostr(MM[1,i])+'.'+ inttostr(MM[2,i])+' ';


     end;


   end;
 end;

end.
