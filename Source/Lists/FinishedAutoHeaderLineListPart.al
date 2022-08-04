page 50119 "Finished Auto Rent Subpage"
{
    PageType = ListPart;
    Caption = 'Finished Auto Rent Subpage';

    SourceTable = "Finished Auto Rent Line table";
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Document Nr."; Rec."Document Nr.")
                {
                    ApplicationArea = All;
                }
                field("Line Nr."; Rec."Line Nr.")
                {
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field("Nr."; Rec."Nr.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field(Price; Rec.Price)
                {
                    ApplicationArea = All;
                }
                field(Total; Rec.Total)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}