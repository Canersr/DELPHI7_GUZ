unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ADODB, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Button1: TButton;
    ADOTable1: TADOTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  fakt:integer; i:Integer;

implementation

{$R *.dfm}

procedure hesapla(sayi:integer);


begin
fakt:=1;
for i:=1 to sayi do begin
fakt:=fakt*i;
end;
end;




procedure TForm1.Button1Click(Sender: TObject);
var
sayi:string;

begin

sayi:=InputBox('SAYI GIRISI','BIR SAYI GIRINIZ','');
if(StrToInt(sayi)>=1) and (StrToInt(sayi)<=8) then begin

hesapla(StrToInt(sayi));

ADOTable1.Insert; ADOTable1.FieldValues['sayi']:=StrToInt(sayi);
ADOTable1.FieldValues['faktoriel']:=fakt;  ADOTable1.Post;
ShowMessage('!'+sayi+'='+IntToStr(fakt)+#13+'KAYIT EDILDI');
end else begin
ShowMessage('GIRILEN SAYI 1-8 ARASINDA OLMALIDIR.');
end;






end;
procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if ADOTable1.RecNo mod 2=1 then
DBGrid1.Canvas.Brush.Color:=clGrayText
else
DBGrid1.Canvas.Brush.Color:=clRed;
DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

end.
