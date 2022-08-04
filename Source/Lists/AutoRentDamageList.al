page 50121 "Auto Rent Damage"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Auto Rent Damage";


    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Doc Nr."; Rec."Doc Nr.")
                {
                    ApplicationArea = All;
                }
                field("Line nr."; Rec."Line nr.")
                {
                    ApplicationArea = All;
                }

                field(Date; Rec.Date)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
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
                Caption = ' Post Damage Report';
                ApplicationArea = All;

                trigger OnAction();
                var
                    DamageList: Record "Auto Damage";
                    Rent: Record "Auto Header table";
                begin
                    Rent.get(Rec."Doc Nr.");
                    DamageList.Init();
                    DamageList."Car NR." := Rent."Car Nr.";
                    DamageList."Line NR." := Rec."Line nr.";
                    DamageList.Date := Rec.Date;
                    DamageList.Description := Rec.Description;
                    DamageList.Status := "Auto Damage Status"::Relevant;
                    DamageList.Insert();
                end;
            }


            action(ReturnCar)
            {
                Caption = 'Return car';
                trigger OnAction()
                var
                    Rent: Record "Auto Header table";
                    FinishedRent: Record "Finished Auto Header table";
                    ListPart: Record "Auto Rent Line table";
                    NewPart: Record "Finished Auto Rent Line table";
                begin

                    Rent.TestField("Car Nr.");
                    Rent.TestField("Custumer Nr.");
                    Rent.TestField(Date);
                    Rent.TestField("Reservation from");
                    Rent.TestField("Reservation until");
                    Rent.Status := "Auto Rent Status"::Closed;
                    Rent.Modify();


                    if ListPart.FindSet() then
                        repeat
                            if (ListPart."Document Nr." = Rent."Nr.") then begin
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