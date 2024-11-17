unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Button1: TButton;
    ListBox1: TListBox;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  durum:String;
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
{
ComboBox1.Items.Add('ANTALYA');
ComboBox1.Items.Add('ÝZMÝR');
ComboBox1.Items.Add('ÝSTANBUL');
}

ComboBox1.Items.LoadFromFile('iller.txt');
end;

procedure TForm1.ComboBox1Click(Sender: TObject);
begin
ComboBox2.Clear;
if (ComboBox1.ItemIndex=0) then begin
ComboBox2.Items.Add('ADIYAMAN 1');
ComboBox2.Items.Add('ADIYAMAN 2');
ComboBox2.Items.Add('ADIYAMAN 3');
end;
if (ComboBox1.ItemIndex=1) then begin
 ComboBox2.Items.LoadFromFile('ISPARTA.txt');
end;

if (ComboBox1.ItemIndex=2) then begin
 ComboBox2.Items.LoadFromFile('ORDU.txt');
end;
if (ComboBox1.ItemIndex=3) then begin
ComboBox2.Items.Add('SAMSUN 1');
ComboBox2.Items.Add('SAMSUN 2');
ComboBox2.Items.Add('SAMSUN 3');
end;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
durum:=CheckBox1.Caption;
if (CheckBox1.Checked =true) then begin
CheckBox2.Checked :=false;
CheckBox3.Checked :=false;
end;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
durum:=CheckBox2.Caption;
if (CheckBox2.Checked =true) then begin
CheckBox1.Checked :=false;
CheckBox3.Checked :=false;
end;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
durum:=CheckBox3.Caption;
if (CheckBox3.Checked =true) then begin
CheckBox1.Checked :=false;
CheckBox2.Checked :=false;
end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
if (edit1.Text ='') then begin
ShowMessage('MÜÞTERÝNÝN ADINI GÝRÝNÝZ !!!!!!');
edit1.SetFocus;
exit;
end;
/////////////////////////////////////////////////////
if (edit2.Text ='') then begin
ShowMessage('MÜÞTERÝNÝN SOYADINI GÝRÝNÝZ !!!!!!');
edit2.SetFocus;
exit;
end;
///////////////////////////////////////////////////////
if (ComboBox2.ItemIndex =-1) then begin
ShowMessage('MÜÞTERÝNÝN ÝLÇESÝNÝ SEÇÝNÝZ !!!!!!!');
exit;
end;
////////////////////////////////////////////////////////
if (CheckBox1.Checked =false) and (CheckBox2.Checked =false) and
(CheckBox3.Checked =false)
then ShowMessage('MESLEK TÜRÜNÜ SEÇÝNÝZ !!!!!!')
ELSE BEGIN
ListBox1.Items.add(Edit1.Text+' '+edit2.Text+' '+ComboBox2.Text+' '+durum);
edit1.Clear;Edit2.Clear;ComboBox1.ItemIndex :=-1; ComboBox2.ItemIndex :=-1;
CheckBox1.Checked :=false; CheckBox2.Checked :=false; CheckBox3.Checked :=false;

end;
end;

procedure TForm1.Button2Click(Sender: TObject);
VAR
sor:Integer;
begin
sor:=Application.MessageBox('PROGRAM KAPATILSIN MI?','KAPAT',4+48+256);
if (sor=mryes) then halt;

end;

end.

