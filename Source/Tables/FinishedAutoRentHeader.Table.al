table 50114 "Finished Auto Header table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Nr."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Nr.';
            Editable = false;
        }
        field(10; "Custumer Nr."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Custumer Nr.';
        }
        field(20; "Driver's license photo"; Media)
        {
            DataClassification = ToBeClassified;
            Caption = 'Drivers license photo';
            Editable = false;
        }
        field(30; "Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Date';
            Editable = false;
        }
        field(40; "Car Nr."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Car Nr.';
            Editable = false;
        }
        field(50; "Reservation from"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Reservation from';
            Editable = false;

        }
        field(60; "Reservation until"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Reservation until';
            Editable = false;

        }
        field(70; "Total"; Decimal)
        {
            Caption = 'Amount';
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



}