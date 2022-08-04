table 50110 "Auto Reservation Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Car Nr."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Car Nr.';
            TableRelation = Auto."Nr.";
        }
        field(10; "Line Nr."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Line NR.';
        }
        field(20; "Client Nr."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Client NR.';
            TableRelation = Customer;
        }
        field(30; "Reservation from"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Reservation from';
        }
        field(40; "Reservation until"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Reservation until';
            trigger OnValidate()
            Var
                Wrongdates: Label 'Can not make that reservation, This car is already reserved, change dates';
            begin
                if (CanReservationHappen(Rec, Rec."Car Nr.", Rec."Line Nr.", Rec."Reservation from", Rec."Reservation until") = false) then
                    Error(Wrongdates);
            end;
        }
    }

    keys
    {
        key(Key1; "Car Nr.", "Line Nr.")
        {
            Clustered = true;
        }
    }


    local procedure CanReservationHappen(Resev: Record "Auto Reservation Table"; Car: Code[20]; Linenr: Integer; Date1: Date; Date2: Date): Boolean
    var

    begin
        if Resev.Findset() then
            Repeat
                if (Resev."Car Nr." = Car) and (Resev."Line Nr." <> Linenr) then begin
                    if (Resev."Reservation from" >= Date1) and (Resev."Reservation from" < Date2) AND (Resev."Reservation until" >= Date2) then exit(false);
                    if (Resev."Reservation from" <= Date1) and (Resev."Reservation until" >= Date2) then exit(false);
                    if (Resev."Reservation from" <= Date1) and (Resev."Reservation until" > Date1) AND (Resev."Reservation until" <= Date2) then exit(false);
                end
            Until Resev.Next() = 0;
        exit(true)
    end;


}