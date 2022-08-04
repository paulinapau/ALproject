page 50112 "Auto Rent Header List"
{
    Caption = 'Auto Rent Header List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Auto Header table";
    CardPageId = "Auto Rent Header Card";

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
            action(Release)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    ContractRelease: Codeunit "Auto Rent Contact status";
                begin
                    ContractRelease.Run(Rec);
                end;
            }
            action(Open)
            {

                ApplicationArea = All;

                trigger OnAction()
                var
                    ContractRelease: Codeunit "Auto Rent Contact status";
                begin
                    ContractRelease.Open(Rec);
                end;
            }
            action(ReportDamage)
            {
                Caption = 'Report Damage';
                RunObject = Page "Auto Rent Damage";
                RunPageLink = "Doc Nr." = field("Nr.");

            }
            action(ReturnCar)
            {
                Caption = 'Return car';
                trigger OnAction()
                var

                    FinishedRent: Record "Finished Auto Header table";
                    ListPart: Record "Auto Rent Line table";
                    NewPart: Record "Finished Auto Rent Line table";
                begin

                    rec.TestField("Car Nr.");
                    Rec.TestField("Custumer Nr.");
                    Rec.TestField(Date);
                    Rec.TestField("Reservation from");
                    Rec.TestField("Reservation until");

                    Rec.Status := "Auto Rent Status"::Closed;
                    Rec.Modify();

                    if ListPart.FindSet() then
                        repeat
                            if (ListPart."Document Nr." = Rec."Nr.") then begin
                                NewPart.Init();
                                NewPart.TransferFields(ListPart);

                                NewPart.Insert()
                            end;
                        until ListPart.Next() = 0;

                    FinishedRent.Init();
                    FinishedRent.TransferFields(Rec);
                    FinishedRent.Insert();



                end;
            }
        }

    }
}
