page 50110 "Auto Reservation List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Auto Reservation Table";

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
            action(ValidRegistrations)
            {
                Caption = 'ValidRegistrations';
                ApplicationArea = All;
                RunObject = page "Valid reservations";
                RunPageLink = "Car Nr." = field("Car Nr.");//, "Line Nr."=filter(>TODAY);
                trigger OnAction()
                var
                    myInt: Integer;
                begin

                    //Rec."Reservation from" := filter(>Today())
                end;

            }
        }
    }



}