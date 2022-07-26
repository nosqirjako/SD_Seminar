pageextension 50101 "CSD ResourceListExt" extends "Resource List"
//LAB 5.1 TASK 3
{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }
        
        addafter(Type)
        {
            field("CSD Resource Type ";Rec."CSD Resource Type ")
            {

            }
            field("CSD Maximum Participants";Rec."CSD Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }
    
    trigger OnOpenPage();
    
    begin
        //?
        ShowType:= (Rec.GetFilter(Type)='');
        ShowMaxField:= (Rec.GetFilter(Type)= format(Rec.Type::Machine));
    end;

    var
        [InDataSet]
        ShowMaxField:Boolean;
        [InDataSet]
        ShowType:Boolean;

}