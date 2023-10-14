unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, Menus;

type
  TForm1 = class(TForm)
    Pozadina: TImage;
    Knjiga: TImage;
    Timer1: TTimer;
    Ja: TImage;
    Knjiga2: TImage;
    Knjiga3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MainMenu1: TMainMenu;
    Opcije1: TMenuItem;
    NovaIgra1: TMenuItem;
    Pauziraj1: TMenuItem;
    Nastavi1: TMenuItem;
    Iskljuci1: TMenuItem;
    IzaberiNivo1: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N51: TMenuItem;
    Informacije1: TMenuItem;
    Label4: TLabel;
    Knjiga4: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NovaIgra1Click(Sender: TObject);
    procedure Pauziraj1Click(Sender: TObject);
    procedure Nastavi1Click(Sender: TObject);
    procedure Iskljuci1Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure Informacije1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);


  
  private
    { Private declarations }
    old:boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a:integer;
implementation

{$R *.dfm}



procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_up then Ja.Top := ja.Top-5 ; //Kada se ide dugme Up, moja slika se pomera za 5 gore od Forme
if key=vk_down then Ja.Top := ja.Top+5 ; //Kada se ide dugme Down, moja slika se pomera za 5 dole od Forme
end;
procedure TForm1.Timer1Timer(Sender: TObject);
begin
knjiga.Left:= knjiga.Left+5 ; // Na tajmer je dodato da se knjiga pomera 5 u stranu od Forme
if Knjiga.Left > 945 then // Kada knjiga predje 945 sto je duzina forme, begin znaci krece
begin
Knjiga.Left:= -57 ; // Ovo je algoritam da knjige ponovo izlaze, pojavljuju se random 500 gore, dole
Knjiga.Top:= random(500) ;
end;
if (Knjiga.Left > Ja.Left) and (Knjiga.Left < Ja.Left+105) then // Ako knjiga predje 105 sto je duzina moje slike
if (Knjiga.Top > Ja.Top) and (Knjiga.Top < Ja.Top+105) then // ako knjiga predje 150 sto je visina moje slike
begin // krece
Ja.Visible :=false; // moja slika nestaje
label1.Visible:=true; // label1 sto je AVGUST se pojavljuje
timer1.Enabled:=false; // tajmer se zaustavlja

end;


knjiga2.Left:= knjiga2.Left+5 ; // -I- samo je u pitanju 2 knjiga
if Knjiga2.Left > 945 then
begin
Knjiga2.Left:= -57 ;
Knjiga2.Top:= random(300) ;
end;
if (Knjiga2.Left > Ja.Left) and (Knjiga2.Left < Ja.Left+105) then
if (Knjiga2.Top > Ja.Top) and (Knjiga2.Top < Ja.Top+105) then
begin
Ja.Visible :=false;
label1.Visible:=true;
timer1.Enabled:=false;
end;


knjiga3.Left:= knjiga3.Left+5 ; // -I- samo je u pitanju 3 knjiga
if Knjiga3.Left > 945 then
begin
Knjiga3.Left:= -57 ;
Knjiga3.Top:= random(300) ;
end;
if (Knjiga3.Left > Ja.Left) and (Knjiga3.Left < Ja.Left+105) then
if (Knjiga3.Top > Ja.Top) and (Knjiga3.Top < Ja.Top+105) then
begin
Ja.Visible :=false;
label1.Visible:=true;
timer1.Enabled:=false;
end;

knjiga4.Left:= knjiga4.Left+5 ; // -I- samo je u pitanju 4 knjiga
if Knjiga4.Left > 945 then
begin
Knjiga4.Left:= -57 ;
Knjiga4.Top:= random(500) ;
end;
if (Knjiga4.Left > Ja.Left) and (Knjiga4.Left < Ja.Left+105) then
if (Knjiga4.Top > Ja.Top) and (Knjiga4.Top < Ja.Top+105) then
begin
Ja.Visible :=false;
label1.Visible:=true;
timer1.Enabled:=false;
end;


If Knjiga.Left > ja.Left + 105 then // ako knjiga predje 105 duzine moje slike
begin // krece
 a:=StrToInt(Label3.Caption); // Na label 3(pise 0) se dodaje 1
 Label3.Caption :=IntToStr(a+1);
 Knjiga.Left:=945; // kada predje 945 sto je duzina Forme
 end;

 If Knjiga2.Left > ja.Left + 105 then// -I- Knjiga 2
begin
 a:=StrToInt(Label3.Caption);
 Label3.Caption :=IntToStr(a+1);
 Knjiga2.Left:=945;
 end;

  If Knjiga3.Left > ja.Left + 105 then // -I- Knjiga 3
begin
 a:=StrToInt(Label3.Caption);
 Label3.Caption :=IntToStr(a+1);
 Knjiga3.Left:=945;
 end;
 If Knjiga4.Left > ja.Left + 105 then // -I- Knjiga 4
begin
 a:=StrToInt(Label3.Caption);
 Label3.Caption :=IntToStr(a+1);
 Knjiga4.Left:=945;
 end;


 If (a >= 29) then // Ako je a vece od 29
 begin
Ja.Visible:=false;// moja slika nestaje
label4.Visible:=true;// lable4 se pojavljuje(POLOZIO)
timer1.Enabled:=false;// tajmer se zaustavlja
end;

end;


procedure TForm1.NovaIgra1Click(Sender: TObject);
begin
timer1.Enabled := true; // Dugme F1 tajmer se ponovo pokrece
label1.Visible := false;// Label 1(AVGUST) nestaje
Ja.Visible := true;// Moja slika se pojavljuje
label3.Caption := '0' ; // label 3 se vraca na 0
Knjiga3.Left:= 664 ; // ovu su sve kordinate da se knjige vrate u prvobitni polozaj prilikom F1(Nove Igre)
Knjiga3.Top:= 416 ;
Knjiga2.Left:= 296 ;
Knjiga2.Top:= 272 ;
Knjiga.Left:= 104 ;
Knjiga.Top:= 40 ;
Ja.Left:= 696 ;
Ja.Top:= 136 ;
Knjiga4.Left:= 128;
Knjiga4.Top:= 408;

end;

procedure TForm1.Pauziraj1Click(Sender: TObject);
begin
timer1.Enabled:= false; // Na F2 igra se pauzira(tajmer zaustavlja)
end;

procedure TForm1.Nastavi1Click(Sender: TObject);
begin
timer1.Enabled:= true;// Na F3 igra se nastavlja
end;

procedure TForm1.Iskljuci1Click(Sender: TObject);
begin
close;// Na F4 gasimo aplikaciju a mozemo i da kliknemo misem na X
end;

procedure TForm1.N11Click(Sender: TObject);
begin
timer1.Interval:= 50; // Napravljeno je po principu kad se skrati vremenski interval knjiga ide brze
end;

procedure TForm1.N21Click(Sender: TObject);
begin
timer1.Interval:= 30;
end;

procedure TForm1.N31Click(Sender: TObject);
begin
timer1.Interval:= 20;
end;

procedure TForm1.N41Click(Sender: TObject);
begin
timer1.Interval:= 10;
end;

procedure TForm1.N51Click(Sender: TObject);
begin
timer1.Interval:= 5;

end;



procedure TForm1.Informacije1Click(Sender: TObject);
begin

   Old:=Timer1.Enabled;
   Timer1.Enabled:=False;
   MessageBox(Handle,'Naucicute pameti, Napravljeno jer je autoru bilo dosadno.','Naucicute pameti',
            MB_ICONINFORMATION);
   Timer1.Enabled:=Old;  // Informacije o igrici
end;



procedure TForm1.FormActivate(Sender: TObject);
begin
timer1.Enabled:= false; // Kada se udje da ne pocinje odmah igra vec da ja biram kada cu krenuti
end;

procedure TForm1.FormCreate(Sender: TObject); // Visina i duzina forme, da slika ne bi mogla da izadje 
begin
Constraints.MaxHeight := 700 ;
Constraints.MinHeight := 538 ;
Constraints.MaxWidth := 945  ;
Constraints.MinWidth := 538 ;

end;

end.
