unit FdataPeg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Mask, DBCtrls;

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
    DBEditKelamin: TDBEdit;
    ButtonPertama: TButton;
    ButtonTerakhir: TButton;
    ButtonBerikutnya: TButton;
    ButtonSebelumnya: TButton;
    procedure ButtonPertamaClick(Sender: TObject);
    procedure ButtonTerakhirClick(Sender: TObject);
    procedure ButtonBerikutnyaClick(Sender: TObject);
    procedure ButtonSebelumnyaClick(Sender: TObject);
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

end.
