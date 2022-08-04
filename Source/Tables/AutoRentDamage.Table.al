table 50116 "Auto Rent Damage"
{
    Caption = 'Auto Rent Damage';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Doc Nr."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Doc.nr.';
        }
        field(10; "Line nr."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Line nr.';
        }

        field(20; "Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Date';
        }
        field(30; "Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';
        }

    }

    keys
    {
        key(Key1; "Line nr.", "Doc NR.")
        {
            Clustered = true;
        }
    }
}