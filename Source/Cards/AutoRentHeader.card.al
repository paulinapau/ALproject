page 50113 "Auto Rent Header Card"
{
    PageType = Document;
    // ApplicationArea = All;
    UsageCategory = None;
    SourceTable = "Auto Header table";

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
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
            }
            part(Subpage; "Auto Rent Subpage")
            {
                ApplicationArea = All;
                Editable = true;
                Enabled = Rec."Custumer Nr." <> '';
                SubPageLink = "Document Nr." = FIELD("Nr.");
                UpdatePropagation = Both;
            }
        }
        area(factboxes)
        {
            part(Control149; "Customer Picture")
            {
                ApplicationArea = Basic, Suite;
                SubPageLink = "No." = FIELD("Custumer Nr.");

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