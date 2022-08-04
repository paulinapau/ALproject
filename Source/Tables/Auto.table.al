table 50108 Auto
{
    Caption = 'Auto table';
    DataClassification = CustomerContent;
    fields
    {
        field(1; "Nr."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Nr.';
        }
        field(10; "Title"; Text[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Title';
        }
        field(20; "Mark"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Mark';
            TableRelation = "Auto Mark";
        }
        field(30; "Model"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Model';
            TableRelation = "Auto Model".Code where("Mark Code" = field(Mark));

        }
        field(40; "Year of manufacture"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Year of manufacture';
        }
        field(50; "Civil insurance is valid until"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Civil insurance is valid until';
        }
        field(60; "TA is valid until"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'TA is valid until';
        }
        field(70; Location; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Location';
            TableRelation = Location;
        }
        field(80; "Rent service"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Rental service';
            TableRelation = Resource."No.";
        }
        field(90; "Rent price"; Decimal)
        {
            Caption = 'Rental service Price';
            FieldClass = FlowField;
            CalcFormula = lookup(Resource."Unit Price" where("No." = field("Rent service")));


        }
    }

    keys
    {
        key(Key1; "Nr.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        AutoSetup: Record AutoSetup;
        NoSeriesManagement: Codeunit NoSeriesManagement;
    begin
        if "Nr." = '' then begin
            AutoSetup.Get();
            AutoSetup.TestField(AutoNRSet);
            "Nr." := NoSeriesManagement.GetNextNo(AutoSetup.AutoNRSet, WorkDate(), true);
        end;

    end;

}