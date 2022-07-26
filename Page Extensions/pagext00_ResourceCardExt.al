pageextension 50100 "CSD ResourceCardExt" extends "Resource Card"
// LAB 5.1 TASK 2
{
    layout
    {
       addlast(General)
       {
        
        field("CSD Resource Type";Rec."CSD Resource Type ")
        {
            ApplicationArea = All;
        }
        
        field("CSD Quantity Per Day";Rec."CSD Quantity Per Day")
        {

        }
        
       }
       // ku vendoset ky output nga kodi qe kemi shkruar ?
       addafter("Personal Data")
       {
        group("CSD Room")
        {
            Caption = 'Room';
            Visible = ShowMaxField;

            field("CSD Maximum Participants"; Rec."CSD Maximum Participants")
            {
                ApplicationArea = all;

            }
        }

       }
    }
    
    
    trigger OnAfterGetRecord()
    
    begin
        ShowMaxField := (Rec.Type = Rec.Type::Machine);
        CurrPage.Update(false);
    end;
    var
        [InDataSet] 
        ShowMaxField:Boolean;
}