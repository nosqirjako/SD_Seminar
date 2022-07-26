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
                field("No.";Rec."No.")
                {
                    
                }
                field(Name;Rec.Name)
                {
                    ApplicationArea = all;
                }
                field("Seminar Duration";Rec."Seminar Duration")
                {
                    ApplicationArea = all;
                }
                field("Minimum Participants";Rec."Minimum Participants")
                {
                    ApplicationArea = all;
                }
                field("Maximum Participants";Rec."Maximum Participants")
                {
                    ApplicationArea = all;
                   
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