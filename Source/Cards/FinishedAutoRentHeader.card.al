page 50117 "Finished Auto Rent Header Card"
{
    PageType = Document;
    UsageCategory = None;
    SourceTable = "Finished Auto Header table";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                Caption = 'Information';
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

            }
            part(Subpage; "Finished Auto Rent Subpage")
            {
                ApplicationArea = All;
                Editable = true;
                Enabled = Rec."Custumer Nr." <> '';
                SubPageLink = "Document Nr." = FIELD("Nr.");
                UpdatePropagation = Both;
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