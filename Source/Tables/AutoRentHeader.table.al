table 50112 "Auto Header table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Nr."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Nr.';
        }
        field(10; "Custumer Nr."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Custumer Nr.';
            TableRelation = Customer;
            trigger OnValidate()
            var
                LedgerEntry: Record "Cust. Ledger Entry";
                CustomerError: Label 'Have a debt';
            begin
                if LedgerEntry.FindSet() then
                    Repeat
                        if (LedgerEntry.Amount > 0) and (LedgerEntry."Customer No." = "Custumer Nr.") then
                            Error(CustomerError);
                    Until LedgerEntry.Next() = 0;
            end;

        }
        field(20; "Driver's license photo"; Media)
        {
            DataClassification = ToBeClassified;
            Caption = 'Drivers license photo';
        }
        field(30; "Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Date';
        }
        field(40; "Car Nr."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Car Nr.';
            TableRelation = Auto."Nr.";
        }
        field(50; "Reservation from"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Reservation from';
            trigger OnValidate()
            var
                Reservations: Record "Auto Reservation Table";
                DatesError: Label 'Dates does not match reservated dates';
            begin
                if Reservations.Findset() then
                    Repeat
                        if (Reservations."Car Nr." = "Car Nr.") and (Reservations."Client Nr." = "Custumer Nr.")
                        and (Reservations."Reservation from" = "Reservation from") then
                            exit
                    Until Reservations.Next() = 0;
                Error(DatesError);
            end;
        }
        field(60; "Reservation until"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Reservation until';
            trigger OnValidate()
            var
                Reservations: Record "Auto Reservation Table";
                DatesError: Label 'Dates does not match reservated dates';
            begin
                if Reservations.Findset() then
                    Repeat
                        if (Reservations."Car Nr." = "Car Nr.") and (Reservations."Client Nr." = "Custumer Nr.")
                        and (Reservations."Reservation until" = "Reservation until") then
                            exit
                    Until Reservations.Next() = 0;
                Error(DatesError);
            end;
        }
        field(70; "Total"; Decimal)
        {
            //DataClassification = ToBeClassified;
            Caption = 'Total';
            FieldClass = FlowField;
            CalcFormula = sum("Auto Rent Line table".Total where("Document Nr." = field("Nr.")));
        }
        field(80; "Status"; Enum "Auto Rent Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'Status';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Nr.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    var
        AutoSetup: Record AutoSetup;
        NoSeriesManagement: Codeunit NoSeriesManagement;
    begin
        if "Nr." = '' then begin
            AutoSetup.Get();
            AutoSetup.TestField(RentCardSet);
            "Nr." := NoSeriesManagement.GetNextNo(AutoSetup.RentCardSet, WorkDate(), true);
        end;
    end;

    trigger OnModify()
    begin
        TestField(Status, Status::Open);
    end;




}