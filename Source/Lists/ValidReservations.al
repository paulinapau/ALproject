page 50115 "Valid reservations"
{
    Caption = 'Valid reservations';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Auto Reservation Table";
    Editable = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Car Nr."; Rec."Car Nr.")
                {
                    ApplicationArea = All;
                }
                field("Line Nr."; Rec."Line Nr.")
                {
                    ApplicationArea = All;
                }
                field("Client Nr."; Rec."Client Nr.")
                {
                    ApplicationArea = All;
                }
                field("Reservation from"; Rec."Reservation from")
                {
                    ApplicationArea = All;
                }
                field("Reservation until"; Rec."Reservation until")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }

        }
    }
}