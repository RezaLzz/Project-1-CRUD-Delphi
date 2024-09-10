unit Project1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection;

type
  TForm1 = class(TForm)
    Zcon1: TZConnection;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edtID: TEdit;
    edtNama: TEdit;
    edtAlamat: TEdit;
    btnDelete: TButton;
    btnUpdate: TButton;
    btnSave: TButton;
    procedure btnSaveClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnDeleteClick(Sender: TObject);
begin

  if ZQuery1.RecordCount <= 0 then
    MessageDlg('Data tidak ada', mtWarning, [mbOK], 0)
  else
    ZQuery1.Delete;

end;

procedure TForm1.btnSaveClick(Sender: TObject);
begin

  ZQuery1.Append;
  ZQuery1.FieldByName('id_nasabah').AsInteger := StrToInt(edtID.Text);
  ZQuery1.FieldByName('nama_nasabah').AsString := edtNama.Text;
  ZQuery1.FieldByName('alamat_nasabah').AsString := edtAlamat.Text;
  ZQuery1.Post;

end;

procedure TForm1.btnUpdateClick(Sender: TObject);
begin

  ZQuery1.Edit;
  ZQuery1.FieldByName('id_nasabah').AsInteger := StrToInt(edtID.Text);
  ZQuery1.FieldByName('nama_nasabah').AsString := edtNama.Text;
  ZQuery1.FieldByName('alamat_nasabah').AsString := edtAlamat.Text;
  ZQuery1.Post;

end;

end.

