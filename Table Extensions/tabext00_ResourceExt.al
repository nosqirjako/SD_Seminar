tableextension 50100 "CSD ResourceExt" extends Resource
// LAB 5.1 TASK 1
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()
            
            begin
                Rec.TestField("Unit Cost");
                //Kontrollon neser eshte bosh unit cost
            end;
        }
        field(50105;"CSD Seminar Type"; Enum "CSD Seminar Type")
        {
            DataClassification = ToBeClassified;
        }
        field(50101; "CSD Resource Type ";Enum "CSD Resource Type")
        {
            Caption = 'Resource Type';
        }
        

        field(50102; "CSD Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
        }

        field(50103; "CSD Quantity Per Day"; Decimal)
        {
            Caption = 'Quantity Per Day';
        }
    }
    
    
}