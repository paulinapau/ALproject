page 50116 "Car contracts issued"
{
    Caption = 'Car contracts issued';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Auto Header table";

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
                field("Custumer Nr."; Rec."Custumer Nr.")
                {
                    ApplicationArea = All;
                }
                field("Driver's license photo"; Rec."Driver's license photo")
                {
                    ApplicationArea = All;
                }
                field(Date; Rec.Date)
                {
                    ApplicationArea = All;
                }
                field("Car Nr."; Rec."Car Nr.")
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
                field(Total; Rec.Total)
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
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