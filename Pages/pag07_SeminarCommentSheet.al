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