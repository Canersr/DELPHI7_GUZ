unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin

ListBox1.Items.Add('  CANER SURMELIOGLU');
ListBox1.Items.Add('  SELAM KACMAZ');
ListBox1.Items.Add('  MUSTAFA KOCALAR');
ListBox1.Items.Add('  DERYA YILDIRIM');
ListBox1.Items.Add('  ARDA SURMELIOGLU');
ListBox1.Items.Add('  ALARA SURMELIOGLU');
ListBox1.Items.Add('  AKIN SURMELIOGLU');
ListBox1.Items.Add('  OKAN HAMARAT');
ListBox1.Items.Add('  BERKAN HAMARAT');
ListBox1.Items.Add('  GÖRKEM KESKÝN');

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if(ListBox1.Items.Count<1) then
Button1.Enabled:=false;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
if (listbox2.Items.Count=3) then begin
 ShowMessage('DAHA FAZLA EKLEME YAPAMAZSINIZ');
 Exit;
 end;

if(ListBox1.ItemIndex<0) then
ShowMessage('EKLENECEK VERÝ SEÇÝLMEDÝ LÜTFEN SEÇÝNÝZ...')

else begin

ListBox2.Items.Add(ListBox1.Items.Strings[ListBox1.itemindex] );
ListBox1.Items.Delete(ListBox1.ItemIndex);


end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
i:integer;
begin
for i:=0 to ListBox1.Items.Count -1 do begin
ListBox2.Items.Add(ListBox1.Items[i]);
end;
ListBox1.Items.Clear; Button2.Enabled:=false;

end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
Label1.Caption:= 'Seçilen :'+ IntToStr(ListBox1.ItemIndex+1)+'/'+
IntToStr(ListBox1.Items.Count);
end;

end.
