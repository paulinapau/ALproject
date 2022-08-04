page 50118 "Finished Auto Rent Header List"
{

    Caption = 'Finished Auto Rent Header List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Finished Auto Header table";
    CardPageId = "Finished Auto Rent Header Card";

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
            action(Report)
            {
                ApplicationArea = All;
                Caption = 'Report';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = SelectReport;
                //RunObject = report AutoReport;

                trigger OnAction()

                begin
                    Rec.SetRecFilter();
                    Report.RunModal(Report::AutoReport, true, true, Rec);
                end;
            }



        }
    }
}