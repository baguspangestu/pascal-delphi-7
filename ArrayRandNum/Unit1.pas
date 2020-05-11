unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

Const
  n = 20;

type
  array_n_elements = array[1..n] of integer;
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    AllMem: TMemo;
    Edit2: TEdit;
    Label2: TLabel;
    Hitung: TButton;
    Reset: TButton;
    SumLab: TLabel;
    AveLab: TLabel;
    MinLab: TLabel;
    MaxLab: TLabel;
    GroupBox3: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    AllLab: TLabel;
    MaxMem: TMemo;
    MinMem: TMemo;
    Label11: TLabel;
    NegLab: TLabel;
    Label12: TLabel;
    PosLab: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    procedure HitungClick(Sender: TObject);
    procedure ResetClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure SetArrayRange(var f1, f2: integer);
begin
  f1 := StrToInt(Form1.Edit1.Text);
  f2 := StrToInt(Form1.Edit2.Text)+1;
end;

procedure FillArray(var a: array_n_elements; rMin, rMax: integer);
var
  i: integer;
begin
  randomize;
  For i := 1 to n do
  a[i] := random(rMax-rMin)+rMin;
end;

procedure OutputArray(a: array_n_elements; n: integer);
var
  i, cAll, cPos, cNeg: integer;
begin
  Form1.AllMem.Lines.Clear;
  Form1.MinMem.Lines.Clear;
  Form1.MaxMem.Lines.Clear;

  cAll := 0;
  for	i := 1 to n do
  begin
    cAll := cAll+1;
    Form1.AllMem.Lines.Append(FloatToStr(a[i]));
  end;

  cNeg := 0;
  cPos := 0;
  for	i := 1 to n do
  if a[i] < 0 then
    begin
      cNeg := cNeg+1;
      Form1.MinMem.Lines.Append(FloatToStr(a[i]));
    end
  else
    begin
      cPos := cPos+1;
      Form1.MaxMem.Lines.Append(FloatToStr(a[i]));
    end;

  //Output All Count (sebenarnya bisa langsung masukin variabel n aja sih)
  Form1.AllLab.Caption := FloatToStr(cAll);
  //Output Neg Count
  Form1.NegLab.Caption := FloatToStr(cNeg);
  //Output Pos Count
  Form1.PosLab.Caption := FloatToStr(cPos);
end;

function sum(a: array_n_elements): integer;
var
  i, s: integer;
begin
  s := 0;
  for i := 1 to n do
    s := s+a[i];
  sum := s;
end;

function min(a: array_n_elements): integer;
var
  i, m: integer;
begin
  m := a[1];
  for i := 1 to n do
  if a[i] < m then
    m := a[i];
  min := m;
end;

function max(a: array_n_elements): integer;
var
  i, m: integer;
begin
  m := a[1];
  for i := 1 to n do
  if a[i] > m then
    m := a[i];
  max := m;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  AllMem.Clear;
  MinMem.Clear;
  MaxMem.Clear;
end;

procedure TForm1.HitungClick(Sender: TObject);
var
  rMin, rMax: integer;
  a: array_n_elements;
begin
  SetArrayRange(rMin, rMax); //Set range of array values
  FillArray(a, rMin, rMax); //Fill array with numbers from the specified	range

  OutputArray(a, n); //Output Array

  SumLab.Caption := ': '+FloatToStr(sum(a)); //Output Sum Array
  AveLab.Caption := ': '+FloatToStr(sum(a)/n); //Average Elemen Array
  MinLab.Caption := ': '+FloatToStr(min(a)); //Minimal Elemen Array
  MaxLab.Caption := ': '+FloatToStr(max(a)); //Maximal Elemen Array
end;

procedure TForm1.ResetClick(Sender: TObject);
begin
  AllMem.Clear;
  MinMem.Clear;
  MaxMem.Clear;
  Edit1.Text := '-99';
  Edit2.Text := '99';
  SumLab.Caption := ': 0';
  AveLab.Caption := ': 0';
  MinLab.Caption := ': 0';
  MaxLab.Caption := ': 0';
  AllLab.Caption := '0';
  NegLab.Caption := '0';
  PosLab.Caption := '0';
end;
end.
