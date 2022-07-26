page 50101 "CSD Seminar Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CSD Seminar";
    Caption = 'Seminar';
    
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No.";Rec."No.")
                {
                    ApplicationArea = all;
                    AssistEdit = true;
                    trigger OnAssistEdit()
                    
                    begin
                        if Rec.AssistEdit then
                        CurrPage.Update();
                        
                    end;
                    
                    
                }
                field(Name;Rec."Name")
                {
                    ApplicationArea = all;
                
                }
                field("Seach Name";Rec."Seach Name")
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
                field("Blocked";Rec."Blocked")
                {
                    ApplicationArea = all;
                }
                field("Last Date Modified";Rec."Last Date Modified")
                {
                    ApplicationArea = all;
                }

            }
            group(Invoicing)
            {
                field("Gen. Prod. Posting Group";Rec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = all;
                }
                field("VAT Prod. Posting Group";Rec."VAT Prod. Posting Group")
                {
                    ApplicationArea = all;
                }
                field("Seminar Price";Rec."Seminar Price")
                {
                    ApplicationArea = all;
                }
            }

        }
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
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mments")
                {
                    //RunObject= page "CSD Seminar Comment Sheet";
                    //RunPageLink = "Table Name" = const(Seminar),
                    //              "No." = field("No.");

                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                }
            }
        }
    }
    
    var
        myInt: Integer;
}