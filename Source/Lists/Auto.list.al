page 50109 "Auto List"
{
    Caption = 'Auto List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Auto;
    CardPageId = "Auto Card";


    layout
    {
        area(Content)
        {
            repeater(GroupName)
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
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(OpenAutoReservations)
            {
                ApplicationArea = All;
                Caption = 'Open Auto Reservations';
                Image = CalendarWorkcenter;
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Page "Auto Reservation List";
                RunPageLink = "Car Nr." = field("Nr.");

                trigger OnAction();
                begin

                end;
            }
        }
    }
}