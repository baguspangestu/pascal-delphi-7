unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    sisi: TEdit;
    hitung: TButton;
    Label2: TLabel;
    Label3: TLabel;
    box: TComboBox;
    keliling: TEdit;
    luas: TEdit;
    hapus: TButton;
    tentang: TButton;
    keluar: TButton;
    procedure hitungClick(Sender: TObject);
    procedure keluarClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure tentangClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.hitungClick(Sender: TObject);
var
  s,l,k : double;
  kode : integer;
begin
  val(sisi.Text,s,kode);
  l := s*s;
  k := 4*s;
  luas.Text := FloatToStr(l)+' '+box.Text+'²';
  keliling.Text := FloatToStr(k)+' '+box.Text;
end;

procedure TForm1.hapusClick(Sender: TObject);
begin
  sisi.Text := '';
  luas.Text := '';
  keliling.Text := '';
  sisi.SetFocus;
end;

procedure TForm1.tentangClick(Sender: TObject);
begin
  ShowMessage('Kelompok Persegi Beranggotakan:'
  +chr(10)+'1. Ahsantu Dhoni'
  +chr(10)+'2. Bagus Pangestu'
  +chr(10)+'3. Gendri Juliyanto'
  +chr(10)+'4. Kentas Adi Saputra'
  +chr(10)+'5. Roni Nur Ramadhani'
  +chr(10)+'6. Sardi'
  +chr(10)+'7. Muhammad Ariski');
end;

procedure TForm1.keluarClick(Sender: TObject);
begin
  if messagedlg('Yakin Ingin Keluar Aplikasi...?',
  mtconfirmation, [mbYes]+[mbNo], 0) = mrYes then close;
end;
end.
