unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var kapasitas,terpakai,pengurangan,sisaGb,sisaMb:integer;
begin
kapasitas:=StrToInt(Edit1.Text);
kapasitas:=kapasitas*1024;
terpakai:=StrToInt(Edit2.Text);
pengurangan:=kapasitas-terpakai;
sisaGb:=pengurangan div 1024;
sisaMb:=pengurangan mod 1024;
Edit3.Text:=IntToStr(sisaGb)+'Gb ' +IntToStr(sisaMb) +'mb ';

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
close;
end;

end.
