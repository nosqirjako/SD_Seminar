table 50101 "CSD Seminar"
{
    Caption = 'Seminar';
    
    fields
    {
        field(10;"No."; Code[20])
        {
            
            Caption = 'No.';

            trigger OnValidate()
            begin
              if "No." <> xRec."No." then begin
                SeminarSetup.Get;
                NoSeriesMgt.TestManual(SeminarSetup."Seminar Nos.");
                "No. Series" :='';
              end;  
            end;
            
        
        }
        field(20; "Name"; Text[50])
        {
            Caption = 'Name';

            trigger OnValidate()
            begin
               if("Seach Name"=UpperCase(xRec.Name)) or
               ("Seach Name"= '') then 
               "Seach Name":=Name; 
            end;
        }
        field(30; "Seminar Duration"; Decimal)
        {
            Caption = 'Seminar Setup';
            DecimalPlaces=0:1;
        }
        field(40; "Minimum Participants"; Integer)
        {
            Caption= 'Minimum Participants';
        }
        field(50; "Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
        }
        field(60; "Seach Name"; Code[50])
        {
            Caption = 'Search Name';
        }
        field(70; "Blocked"; Boolean)
        {
            Caption='Blocked';
        }
        field(80; "Last Date Modified"; Date)
        {
            Caption= 'Last Date Modified';
            Editable = false;
        }
        field(90; "Comment"; Boolean)
        {
            Caption = 'Comment';
            Editable= false;
            FieldClass = FlowField;
            CalcFormula=exist("CSD Seminar Comment Line" where("Table Name"= const("Seminar"),"No."=Field("No.")));
        }
        field(100; "Seminar Price"; Decimal)
        {
            Caption= 'Seminar Price';
            AutoFormatType=1;
        }
        field(110; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption='Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";

            trigger OnValidate()
            begin
                //??
                if(xRec."Gen. Prod. Posting Group"<>
                "Gen. Prod. Posting Group") then begin
                    if GenProdPostingGroup.ValidateVatProdPostingGroup
                    (GenProdPostingGroup,"Gen. Prod. Posting Group")then
                    Validate("VAT Prod. Posting Group",
                    GenProdPostingGroup."Def. VAT Prod. Posting Group");
                end;
            end;
        }
        field(120; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'Vat Prod. Posting Group';
            TableRelation = "Vat Product Posting Group";
        }
        field(130; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }


    }
    
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(Key1;"Seach Name")
        {
            
        }
    }
    
    var
        SeminarSetup : Record "CSD Seminar Setup";
        Seminar : Record "CSD Seminar";
        GenProdPostingGroup: Record "Gen. Product Posting Group";
        NoSeriesMgt: Codeunit NoSeriesManagement;
    
    trigger OnInsert()
    begin
        if "No."='' then begin
            SeminarSetup.get;
            SeminarSetup.TestField("Seminar Nos.");
            NoSeriesMgt.InitSeries(SeminarSetup."Seminar Nos.",xRec."No. Series",0D,"No.","No. Series");;
        end;
    end;
    
    trigger OnModify()
    begin
        "Last Date Modified":= Today;
    end;
    
    trigger OnDelete()
    begin
        //CommentLine.Reset;
        //CommentLine.SetRange("Table Name");
        //CommentLine."Table Name"::Seminar);
        //CommentLine.SetRange("No.","No.");
        // CommentLine.DeleteAll;

    end;
    
    trigger OnRename()
    begin
        "Last Date Modified":= Today;
    end;

    /* The code is not created yet
    trigger OnValidate()
    var
        
    begin
        
    end;
    */
    

    procedure AssistEdit() :Boolean
    
    begin

            //?
            Seminar:=Rec;
            SeminarSetup.get;
            SeminarSetup.TestField("Seminar Nos.");
            if NoSeriesMgt.SelectSeries(SeminarSetup."Seminar Nos."
            ,xRec."No. Series",Seminar."No. Series") then begin
                NoSeriesMgt.SetSeries(Seminar."No.");
                Rec:=Seminar;
                exit(true);
            end;
        end;

}