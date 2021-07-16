pageextension 60000 CompanyInformationCardPageExtn extends "Company Information"
{
    layout
    {
        //addafter(Picture)
        addlast(General)
        {
            field("Report Layout Color"; Rec."Report Layout Color")
            {
                ApplicationArea = All;
                Editable = false;
                Visible = false;
            }

            field("Report Font Color"; Rec."Report Font Color")
            {
                ApplicationArea = All;
                Editable = false;
                Visible = false;
            }

            usercontrol(ColorPickerAddInControl; ColorPickerAddIn)
            {
                ApplicationArea = All;

                trigger ColorPicked(ColorInfo: Text)
                begin
                    Rec."Report Layout Color" := ColorInfo;
                end;

                trigger GetPickedColor(ColorInfo: Text)
                begin
                    Rec."Report Font Color" := ColorInfo;
                end;

                trigger ColorPickerControlReady()
                begin
                    CurrPage.ColorPickerAddInControl.getColorCode(recCompInfo."Report Layout Color");
                    CurrPage.ColorPickerAddInControl.getColorCodeForAnotherColorPicker(recCompInfo."Report Font Color");
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        recCompInfo.FindFirst();
    end;

    var
        recCompInfo: Record "Company Information";
}
