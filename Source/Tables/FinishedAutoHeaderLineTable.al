table 50115 "Finished Auto Rent Line table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Document Nr."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Document Nr.';
        }
        field(10; "Line Nr."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Line Nr.';
        }
        field(20; "Type"; Enum "Auto Rent Type")
        {
            DataClassification = ToBeClassified;
            Caption = 'Type';
        }
        field(30; "Nr."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Nr.';

        }
        field(40; "Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';

        }
        field(50; "Quantity"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Quantity';
        }
        field(60; "Price"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Price';

        }
        field(70; "Total"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Total';
        }
    }

    keys
    {
        key(Key1; "Document Nr.", "Line Nr.")
        {
            Clustered = true;
        }
    }




}