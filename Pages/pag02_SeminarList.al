page 50102 "CSD Seminar List"
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = "CSD Seminar";
    Caption= 'Seminar List';
    Editable = false;
    CardPageId = 50101;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No.";"No.")
                {
                    
                }
                field(Name;Name)
                {

                }
                field("Seminar Duration";"Seminar Duration")
                {

                }
                field("Minimum Participants";"Minimum Participants")
                {

                }
                field("Maximum Participants";"Maximum Participants")
                {
                    
                }
            }
        }

        //??
        area(FactBoxes)
        {
            systempart("Links";Links)
            {

            }
            systempart("Notes";Notes)
            {

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