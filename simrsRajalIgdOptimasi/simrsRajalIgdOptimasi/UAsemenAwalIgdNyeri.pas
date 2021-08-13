unit UAsemenAwalIgdNyeri;

interface

procedure tampilNyeri;
procedure baruNyeri;


implementation

uses Messages,Dialogs,UDataSimrs1,UAsesmenAwalIgd, SysUtils, Forms, ZDataset,
  ZAbstractRODataset, DB, StdCtrls;

/// tampil query nyeri
procedure tampilNyeri;
begin
 with DataSimrs1.qryt_asesmen_awal_nyeri do
 begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from t_asesmen_awal_nyeri';
  Open;
 end;
end;

procedure baruNyeri;
begin
  with FAsesmenAwalIgd do
  begin
    /// pasien merasa nyeri
    chkYaNyeri.Checked := False;
    chkTIDAKNYERI.Checked := False;

    rb0.Checked:= False;
    rb1.Checked:= False;
    rb2.Checked:= False;
    rb3.Checked:= False;
    rb4.Checked:= False;
    rb5.Checked:= False;
    rb6.Checked:= False;
    rb7.Checked:= False;
    rb8.Checked:= False;
    rb9.Checked:= False;
    rb10.Checked:= False;

    ///identitas nyeri
    chktdknyeri.Checked:= False;
    chkNYERIRINGAN.Checked:= False;
    chkNYERIBERAT.Checked:= False;
    chkNYERISEDANG.Checked:= False;
    chkNYERISANGAT.Checked:= False;
    edtLOKASINYERI.Text := '';
    edtsejak.Text := '';

    
  end;
end;

end.
