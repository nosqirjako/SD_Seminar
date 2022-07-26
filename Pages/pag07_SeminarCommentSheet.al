page 50107 "CSD Seminar Comment List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar Comment Line";
    Caption = 'Seminar Comment Line';
    Editable = false;
    
    layout
    {
        area(Content)
        {
            repeater(group)
            {
                field(Date;Rec.Date)
                {
                    Caption = 'Date';      
                    ApplicationArea = all;      
                }
                field(Code;Rec.Code)
                {
                    Caption = 'Code';
                    Visible = false;
                    ApplicationArea = all;
                }
                field(Comment;Rec.Comment)
                {
                    Caption = 'Comment';
                    ApplicationArea = all;
                }
            }
        }
        
    }
    
} 