codeunit 50100 "Auto Rent Contact status"
{
    TableNo = "Auto Header table";

    trigger OnRun()
    begin
        Release(Rec);
    end;

    procedure Release(var RentContract: Record "Auto Header table")
    begin
        RentContract.Status := "Auto Rent Status"::Closed;
        RentContract.Modify();
    end;

    procedure Open(var RentContract: Record "Auto Header table")
    begin
        RentContract."Status" := "Auto Rent Status"::Open;
        RentContract.Modify();
    end;
}