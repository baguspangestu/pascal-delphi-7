unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Memo1: TMemo;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    Label5: TLabel;
    ButtonSimpan: TButton;
    ButtonUbah: TButton;
    ButtonHapus: TButton;
    Label6: TLabel;
    LabelNotif: TLabel;
    ComboBox1: TComboBox;
    ADOQuery1: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure ButtonSimpanClick(Sender: TObject);
    procedure ButtonUbahClick(Sender: TObject);
    procedure ButtonHapusClick(Sender: TObject);
    procedure Proses(P: Integer);
    procedure DbInput(Edt1, Edt2, Edt3, Cbb1, Mem1: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function Number(N : String) : Boolean;
var
  I : Integer;
begin
  Result := True;

  if Trim(N) = '' then
  Result := False;

  if (Length(Trim(N)) > 1) and (Trim(N)[1] = '0') then
  Result := False;

  for I := 1 to Length(N) do
  begin
    if not (N[I] in ['0'..'9']) then
    begin
      Result := False;
      Break;
    end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Memo1.Clear;
  //Set Panjang Max (Sesuai Settingan di Dalam Database)
  Edit1.MaxLength := 10;
  Edit2.MaxLength := 25;
  Edit3.MaxLength := 20;
  ComboBox1.MaxLength := 4;
  Memo1.MaxLength := 30;
end;

procedure TForm1.DbInput(Edt1, Edt2, Edt3, Cbb1, Mem1: String);
begin
  //Input Data
  Adotable1.FieldByName('ID_Mhs').AsString := Edt1;
  Adotable1.FieldByName('Nama_Mhs').AsString := Edt2;
  Adotable1.FieldByName('Jurusan').AsString := Edt3;
  Adotable1.FieldByName('Angkatan').AsString := Cbb1;
  Adotable1.FieldByName('Alamat').AsString := Mem1;
  Adotable1.Post;
  //Kosongkan Form
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  ComboBox1.Text := 'Pilih';
  Memo1.Text := '';
end;

procedure TForm1.Proses(P: Integer);
var
  edt1, edt2, edt3, cbb1, mem1, adt, adq, pesan: string;
begin
  //Hapus spasi di awal & akhir jika ada
  edt1 := trim(Edit1.Text);
  edt2 := trim(Edit2.Text);
  edt3 := trim(Edit3.Text);
  cbb1 := trim(ComboBox1.Text);
  mem1 := trim(Memo1.Text);

  //Satpam
  if Length(edt1) = 0 then
  begin
    LabelNotif.Caption := 'NPM tidak boleh kosong!';
    Edit1.SetFocus;
  end
  else if not Number(edt1) then
  begin
    LabelNotif.Caption := 'NPM harus berupa angka!';
    Edit1.SetFocus;
  end
  else if Length(edt1) <> 10 then
  begin
    LabelNotif.Caption := 'NPM harus 10 angka!';
    Edit1.SetFocus;
  end
  else if Length(edt2) = 0 then
  begin
    LabelNotif.Caption := 'Nama tidak boleh kosong!';
    Edit2.SetFocus;
  end
  else if Length(edt3) = 0 then
  begin
    LabelNotif.Caption := 'Jurusan tidak boleh kosong!';
    Edit3.SetFocus;
  end
  else if not Number(cbb1) then
  begin
    LabelNotif.Caption := 'Pilih Tahun Angkatan!';
    ComboBox1.SetFocus;
  end
  else if Length(cbb1) <> 4 then
  begin
    LabelNotif.Caption := 'Pilih Tahun Angkatan!';
    ComboBox1.SetFocus;
  end
  else if Length(mem1) = 0 then
  begin
    LabelNotif.Caption := 'Alamat tidak boleh kosong!';
    Memo1.SetFocus;
  end
  else
  begin
    with ADOQuery1 do
    begin
      SQL.Clear;
      SQL.Text := ' SELECT * FROM Mhs WHERE ID_Mhs = ' + QuotedStr(edt1);
      Active := True;
    end;

    adt := ADOTable1.FieldByName('ID_Mhs').AsString;
    adq := ADOQuery1.FieldByName('ID_Mhs').AsString;

    if P = 0 then
    begin
      //Mencegah Error Input Karena Databasenya diset Primary Key untuk mencegah duplicate NPM.
      if ADOQuery1.RecordCount = 0 then
      begin
        Adotable1.Insert;
        DbInput(edt1, edt2, edt3, cbb1, mem1);
      end
      else MessageDlg('Mahasiswa dengan NPM ini sudah ada!',mtError,[mbOK],0);
    end
    else
    begin
      //Mencegah Error saat Ubah data (mencegah ubah NPM dg NPM yang sudah dimiliki mahasiswa lain)
      if (ADOQuery1.RecordCount = 0) or (adt = adq) then
      begin
        pesan := 'Yakin ingin mengubah data ini?';
        if MessageDlg(pesan,mtConfirmation,[mbYes,mbNo],0) = mrYes then
        begin
          Adotable1.Edit;
          DbInput(edt1, edt2, edt3, cbb1, mem1);
        end;
      end                                                                                                                   
      else MessageDlg('Mahasiswa dengan NPM ini sudah ada!'+chr(10)+'Jika ingin mengubah data pemilik NPM'+chr(10)+'tersebut, Pilih datanya terlebih dahulu!',mtError,[mbOK],0);
    end;
  end;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  LabelNotif.Caption := '';
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
  LabelNotif.Caption := '';
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
  LabelNotif.Caption := '';
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  If Number(ComboBox1.Text) then LabelNotif.Caption := '';
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
  LabelNotif.Caption := '';
end;

procedure TForm1.ButtonSimpanClick(Sender: TObject);
begin
  Proses(0)
end;

procedure TForm1.ButtonUbahClick(Sender: TObject);
begin
  Proses(1);
end;

procedure TForm1.ButtonHapusClick(Sender: TObject);
var
  pesan: string;
begin
  if Adotable1.IsEmpty then
  begin
    pesan := 'Database Kosong!';
    MessageDlg(pesan,mtInformation,[mbOK],0);
  end
  else
  begin
    pesan := 'Yakin ingin menghapus data ini?';
    case MessageDlg(pesan,mtConfirmation,[mbYes,mbNo],0) of
      mrYes: Adotable1.Delete;
    end;
  end;
end;

end.
