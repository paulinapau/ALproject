table 50107 "Auto Model"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Mark Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Mark Code';
            TableRelation = "Auto Mark".Code;
        }
        field(10; "Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Code';
        }
        field(20; "Description"; Code[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; "Mark Code", Code)
        {
            Clustered = true;
        }
    }




}