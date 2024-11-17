unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}
 
procedure TForm1.Timer1Timer(Sender: TObject);
begin
Form1.Caption :='BUGUN GUNLERDEN SALI  I '+
DateTimeToStr(now)
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit1.SetFocus ;

if key in ['1'..'9'] then key:=#0;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit3.SetFocus ;

if key in ['1'..'9'] then key:=#0;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1.SetFocus ;

if not (key in ['1'..'9',#8]) then key:=#0;
end;

procedure TForm1.Button1Click(Sender: TObject);

var

secim:integer;
begin
{
if (trim(edit2.text)='') then begin
ShowMessage('MUSTERININ ADINI YAZINIZ');
edit2.SetFocus ;    edit2.Color:=clOlive
 end ELSE if (trim(edit1.text)='') then begin
ShowMessage('MUSTERININ SOYADINI YAZINIZ');
edit1.SetFocus ;   edit1.Color:=clOlive
end ELSE if(trim(edit3.text)='') then begin
ShowMessage('MUSTERININ GELIRINI YAZINIZ');
edit2.SetFocus ;       edit2.Color:=clYellow
end;
}
{
if (trim(edit2.text)='') or (trim(edit1.text)='') then
ShowMessage('MUSTERININ ADINI VE SOYADINI YAZINIZ')
ELSE if(trim(edit3.text)='') then
ShowMessage('MUSTERININ GELIRINI YAZINIZ')

ELSE label1.Caption :=edit2.Text+' '+edit1.Text+' '+edit3.Text+' T.L';

edit2.Text :=''; edit1.Clear ; edit3.Clear ;
edit2.SetFocus ;

end;
end.
 }

secim:=MessageDlg('ISIMLI KAYIT YAPILSIN MI? ', mtConfirmation,
[mbYes,mbNo],0);
if (secim= mrYes) then
label1.Caption :=edit2.Text+' '+edit1.Text+' '+edit3.Text ;

end;
end.




