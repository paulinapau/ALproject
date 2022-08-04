table 50113 "Auto Rent Line table"
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

            TableRelation =
            if (Type = const(Item)) Item."No."
            else
            if (Type = const(Resource)) Resource."No.";
            /*
            trigger OnLookUp()
            Var
                Car: Record Auto;
                Rent: Record "Auto Header table";
            begin
                Rent.Get("Document Nr.");
                Car.Get(Rent."Car Nr.");
                if ("Line Nr." = 0) then "Nr." := Car."Rent service";
            end;
            */
        }
        field(40; "Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';
            TableRelation =
            if (Type = const(Item)) Item.Description where("No." = field("Nr."))
            else
            if (Type = const(Resource)) Resource.Name where("No." = field("Nr."));
            ValidateTableRelation = false;
            /*
            trigger OnLookUp()
            Var
                Car: Record Auto;
                Rent: Record "Auto Header table";
            begin
                Rent.Get("Document Nr.");
                Car.Get(Rent."Car Nr.");
                if ("Line Nr." = 0) then Description := Car.Title;
            end;
            */
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
            TableRelation =
            if (Type = const(Item)) Item."Unit Price" where("No." = field("Nr."))
            else
            if (Type = const(Resource)) Resource."Unit Price" where("No." = field("Nr."));
            ValidateTableRelation = false;
            /*
            trigger OnLookUp()
            Var
                Car: Record Auto;
                Rent: Record "Auto Header table";
            begin
                Rent.Get("Document Nr.");
                Car.Get(Rent."Car Nr.");
                if ("Line Nr." = 0) then "Price" := Car."Rent price";
            end;
            */
        }
        field(70; "Total"; Decimal)
        {
            DataClassification = ToBeClassified;

            Caption = 'Total';
            trigger OnLookup()
            begin
                Total := Price * Quantity;
            end;
        }
    }

    keys
    {
        key(Key1; "Document Nr.", "Line Nr.")
        {
            Clustered = true;
        }
    }

    var
        new: Code[20];
        myInt: Code[20];


}
