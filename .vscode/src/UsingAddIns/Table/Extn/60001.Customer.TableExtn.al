tableextension 60001 CustomerTableExtn extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(60000; Longitude; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(60001; Latitude; Text[250])
        {
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}