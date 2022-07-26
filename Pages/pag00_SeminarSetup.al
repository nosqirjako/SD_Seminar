page 50100 "CSD Seminar Setup"
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = "CSD Seminar Setup";
    Caption= 'Seminar Setup';
    InsertAllowed = false;
    DeleteAllowed = false;
    UsageCategory = Administration;
    
    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                field("Seminar Nos.";Rec."Seminar Nos.")
                {
                    ApplicationArea = all;
                    
                }
                field("Seminar Registration Nos.";Rec."Seminar Registration Nos.")
                {
                    ApplicationArea = all;
                }
                field("Posted Seminar Reg. Nos.";Rec."Posted Seminar Reg. Nos.")
                {
                    ApplicationArea = all;
                }
            }
        }
    }
    
    
    
  trigger OnOpenPage()
  //?
  begin
    if not Rec.get then begin
        Rec.Init;
        Rec.Insert;
    end;
  end;
}