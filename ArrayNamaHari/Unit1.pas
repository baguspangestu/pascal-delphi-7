unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    nmhari: TEdit;
    harike: TComboBox;
    sebutkan: TButton;
    tutup: TButton;
    procedure sebutkanClick(Sender: TObject);
    procedure tutupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.sebutkanClick(Sender: TObject);
const
  hari : array[1..7] of string = ('Senin','Selasa','Rabu','Kamis','Jum`at','Sabtu','Minggu');
var
  ke : integer;
begin
  ke := StrToInt(harike.Text);
  nmhari.Text := hari[ke];
end;

procedure TForm1.tutupClick(Sender: TObject);
begin
  close;
end;

end.
