unit FAksesDataPeg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    TablePribadi: TTable;
    DataSourcePribadi: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEditNoPeg: TDBEdit;
    DBEditNamaPeg: TDBEdit;
    DBEditTglLahir: TDBEdit;
    ButtonPertama: TButton;
    ButtonTerakhir: TButton;
    ButtonBerikutnya: TButton;
    ButtonSebelumnya: TButton;
    TablePribadiNoPeg: TStringField;
    TablePribadiNamaPeg: TStringField;
    TablePribadiTglLahir: TDateField;
    TablePribadiKelamin: TBooleanField;
    TablePribadiJenisKelamin: TStringField;
    ButtonTambah: TButton;
    ButtonBatal: TButton;
    ButtonSimpan: TButton;
    ButtonHapus: TButton;
    DBRGKelamin: TDBRadioGroup;
    procedure ButtonPertamaClick(Sender: TObject);
    procedure ButtonTerakhirClick(Sender: TObject);
    procedure ButtonBerikutnyaClick(Sender: TObject);
    procedure ButtonSebelumnyaClick(Sender: TObject);
    procedure TablePribadiCalcFields(DataSet: TDataSet);
    procedure ButtonTambahClick(Sender: TObject);
    procedure ButtonBatalClick(Sender: TObject);
    procedure ButtonSimpanClick(Sender: TObject);
    procedure ButtonHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ButtonPertamaClick(Sender: TObject);
begin
  TablePribadi.First;
end;

procedure TForm1.ButtonTerakhirClick(Sender: TObject);
begin
  TablePribadi.Last;
end;

procedure TForm1.ButtonBerikutnyaClick(Sender: TObject);
begin
  TablePribadi.Next;
end;

procedure TForm1.ButtonSebelumnyaClick(Sender: TObject);
begin
  TablePribadi.Prior;
end;

procedure TForm1.TablePribadiCalcFields(DataSet: TDataSet);
begin
  if TablePribadiKelamin.Value = True then
    TablePribadiJenisKelamin.Value := 'Pria'
  else
    TablePribadiJenisKelamin.Value := 'Wanita';
end;

procedure TForm1.ButtonTambahClick(Sender: TObject);
begin
  ButtonPertama.Enabled := False;
  ButtonTerakhir.Enabled := False;
  ButtonSebelumnya.Enabled := False;
  ButtonBerikutnya.Enabled := False;

  ButtonBatal.Visible := True;
  ButtonSimpan.Visible := True;
  ButtonTambah.Visible := False;
  ButtonHapus.Visible := False;

  DBEditNoPeg.ReadOnly := False;
  DBEditNamaPeg.ReadOnly := False;
  DBEditTglLahir.ReadOnly := False;
  DBRGKelamin.ReadOnly := False;

  TablePribadi.Append;
  DBEditNoPeg.SetFocus;
end;

procedure TForm1.ButtonBatalClick(Sender: TObject);
begin
  ButtonPertama.Enabled := True;
  ButtonTerakhir.Enabled := True;
  ButtonSebelumnya.Enabled := True;
  ButtonBerikutnya.Enabled := True;

  ButtonBatal.Visible := False;
  ButtonSimpan.Visible := False;
  ButtonTambah.Visible := True;
  ButtonHapus.Visible := True;

  DBEditNoPeg.ReadOnly := True;
  DBEditNamaPeg.ReadOnly := True;
  DBEditTglLahir.ReadOnly := True;
  DBRGKelamin.ReadOnly := True;

  TablePribadi.Cancel;
end;

procedure TForm1.ButtonSimpanClick(Sender: TObject);
begin
  ButtonPertama.Enabled := True;
  ButtonTerakhir.Enabled := True;
  ButtonSebelumnya.Enabled := True;
  ButtonBerikutnya.Enabled := True;

  ButtonBatal.Visible := False;
  ButtonSimpan.Visible := False;
  ButtonTambah.Visible := True;
  ButtonHapus.Visible := True;

  DBEditNoPeg.ReadOnly := True;
  DBEditNamaPeg.ReadOnly := True;
  DBEditTglLahir.ReadOnly := True;
  DBRGKelamin.ReadOnly := True;

  TablePribadi.Post;
end;

procedure TForm1.ButtonHapusClick(Sender: TObject);
begin
  if MessageDlg('Apakah Data Akan Dihapus?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    TablePribadi.Delete;
end;

end.
