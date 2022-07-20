page 50106 "CSD Seminar Comment Sheet"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar Comment Line";
    Caption = 'Seminar Comment Line';
    
    layout
    {
        area(Content)
        {
            repeater(group)
            {
                field(Date;Date)
                {
                    Caption = 'Date';            
                }
                field(Code;Code)
                {
                    Caption = 'Code';
                    Visible = false;
                }
                field(Comment;Comment)
                {
                    Caption = 'Comment';
                }
            }
        }
        
    }
    
}