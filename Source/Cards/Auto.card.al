page 50108 "Auto Card"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = Auto;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Nr."; Rec."Nr.")
                {
                    ApplicationArea = All;

                }
                field(Title; Rec.Title)
                {
                    ApplicationArea = All;

                }
                field(Mark; Rec.Mark)
                {
                    ApplicationArea = All;
                }
                field(Model; Rec.Model)
                {
                    ApplicationArea = All;
                }
                field("Year of manufacture"; Rec."Year of manufacture")
                {
                    ApplicationArea = All;
                }
                field("Civil insurance is valid until"; Rec."Civil insurance is valid until")
                {
                    ApplicationArea = All;
                }
                field("TA is valid until"; Rec."TA is valid until")
                {
                    ApplicationArea = All;
                }
                field(Location; Rec.Location)
                {
                    ApplicationArea = All;
                }
                field("Rent service"; Rec."Rent service")
                {
                    ApplicationArea = All;
                }
                field("Rent price"; Rec."Rent price")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }


    var
        myInt: Integer;
}