page 50105 "Auto Setup"
{
    PageType = Card;
    Caption = 'Auto Setup Card';
    UsageCategory = Administration;
    SourceTable = "AutoSetup";
    //Editable = true;
    InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(AutoNRSet; Rec.AutoNRSet)
                {
                    ApplicationArea = All;

                }
                field(RentCardSet; Rec.RentCardSet)
                {
                    ApplicationArea = All;

                }

            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.InsertIfNotExists();
    end;

    var
        myInt: Integer;
}