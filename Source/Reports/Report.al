report 50100 AutoReport
{
    Caption = 'AutoReport';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Source/Reports/Rep.rdl';


    dataset
    {
        dataitem("Finished Auto Header table"; "Finished Auto Header table")
        {
            column(Car_Nr_; "Car Nr.")
            {

            }

            column(Reservation_from; "Reservation from")
            {

            }
            column(Reservation_until; "Reservation until")
            {

            }
            dataitem(Customer; Customer)
            {
                DataItemLink = "No." = field("Custumer Nr.");
                column(Name; Name)
                {

                }
            }
            dataitem(Auto; Auto)
            {
                DataItemLink = "Nr." = field("Car Nr.");
                column(Title; Title)
                {

                }
                dataitem("Auto Mark"; "Auto Mark")
                {
                    DataItemLink = Code = field(Mark);
                    column(MarkDescription; Description)
                    {

                    }
                }
                dataitem("Auto Model"; "Auto Model")
                {
                    DataItemLink = Code = field(Model);
                    column(ModelDescription; Description)
                    {

                    }

                }

            }
            dataitem("Finished Auto Rent Line table"; "Finished Auto Rent Line table")
            {
                DataItemLink = "Document Nr." = field("Nr.");

                column(Service; Description)
                {

                }
                column(Quantity; Quantity)
                {

                }
                column(Price; Price)
                {

                }
                column(Total; Total)
                {

                }
            }


        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(Name; myInt)
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }


    }

    labels
    {
        CarNumber = 'Car nr.';
        MarkLbl = 'Mark';
        ModelLbl = 'Model';
        RentFrom = 'Rent from';
        RentUntil = 'Rent until';
        Client = 'Client name';
        TitleLbl = 'Title';
        ServiceLbl = 'Servise';
        Qnt = 'Quantity';
        PriceLbl = 'Price';
        TotalLbl = 'Total';



    }

    var
        myInt: Integer;
}