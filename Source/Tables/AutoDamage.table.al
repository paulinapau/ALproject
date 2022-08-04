table 50111 "Auto Damage"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Car NR."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Car NR.';
            TableRelation = Auto."Nr.";
        }
        field(10; "Line NR."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Line NR.';
        }
        field(20; Date; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Date';
        }
        field(30; "Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';
        }
        field(40; "Status"; Enum "Auto Damage Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'Status';

        }
    }

    keys
    {
        key(Key1; "Car NR.", "Line NR.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;



}