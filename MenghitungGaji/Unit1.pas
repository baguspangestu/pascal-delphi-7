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
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ComboBox1: TComboBox;
    Label7: TLabel;
    procedure Proses1;
    procedure Proses2;
    procedure ComboBox1Change(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Proses1;
var
  gajipokok, tunjangan: double;
begin
  case ComboBox1.ItemIndex of
    0:if RadioButton1.Checked=True then
      begin
        gajipokok := 1500000;
        tunjangan := 500000;
      end
      else
      begin
        gajipokok := 1200000;
        tunjangan := 400000;
      end;
    1:if RadioButton1.Checked=True then
      begin
        gajipokok := 2000000;
        tunjangan := 700000;
      end
      else
      begin
        gajipokok := 1750000;
        tunjangan := 650000;
      end;
    2:if RadioButton1.Checked=True then
      begin
        gajipokok := 1000000;
        tunjangan := 300000;
      end
      else
      begin
        gajipokok := 900000;
        tunjangan := 200000;
      end;
  end;
  Edit2.Text := 'Rp.'+formatfloat('#,##0', gajipokok);
  Edit3.Text := 'Rp.'+formatfloat('#,##0', tunjangan);

  Edit4.Text := ''; // Kosongkan Gaji Bersih dulu
end;

procedure TForm1.Proses2;
var
  gajipokok,tunjangan,kodeunik,gajibersih: double;
  gps,gpr,gpq,tjs,tjr,tjq,npm: string;
begin
  // Replace Amatiran XD
  gps := StringReplace(Edit2.Text, 'Rp.', '',[rfReplaceAll, rfIgnoreCase]);
  gpr := StringReplace(gps, ',', '',[rfReplaceAll, rfIgnoreCase]);
  gpq := StringReplace(gpr, '.', '',[rfReplaceAll, rfIgnoreCase]);
  tjs := StringReplace(Edit3.Text, 'Rp.', '',[rfReplaceAll, rfIgnoreCase]);
  tjr := StringReplace(tjs, ',', '',[rfReplaceAll, rfIgnoreCase]);
  tjq := StringReplace(tjr, '.', '',[rfReplaceAll, rfIgnoreCase]);

  // Gaji Pokok & Tunjangan
  gajipokok := StrToFloat(gpq);
  tunjangan := StrToFloat(tjq);

  // NPM untuk membuat Kode Unik
  npm := '1911010052'; // Bagus Pangestu
  kodeunik := 10+StrToFloat(copy(npm,9,2)); // Ambil 2 angka terakhir

  // Proses menghitung gaji bersih
  gajibersih := gajipokok+tunjangan+kodeunik;

  // Output (Gaji Bersih)
  Edit4.Text := 'Rp.'+formatfloat('#,##0', gajibersih);
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  Proses1;
  Label7.Caption := '';
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  Proses1
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  Proses1;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if not (ComboBox1.Text = '') then Proses2
  else Label7.Caption := 'Pilih Jabatan!';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  RadioButton1.Checked := True;
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  ComboBox1.Text := '';
  Edit1.SetFocus;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Close;
end;

end.
