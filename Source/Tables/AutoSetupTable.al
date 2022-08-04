table 50105 AutoSetup
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; PrimaryKey; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'PrimaryKey';

        }
        field(10; AutoNRSet; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'AutoNrSet';
            TableRelation = "No. Series";

        }
        field(20; RentCardSet; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'RentCardSet';
            TableRelation = "No. Series";

        }
        field(30; Location; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Location';
            TableRelation = Location;

        }
    }

    keys
    {
        key(Key1; PrimaryKey)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        InitDefaultValues();
    end;

    procedure InsertIfNotExists()
    var
    begin
        Reset();
        if not Get() then begin
            Init();
            Insert(true);
        end;
    end;

    local procedure InitDefaultValues()
    begin
    end;

}