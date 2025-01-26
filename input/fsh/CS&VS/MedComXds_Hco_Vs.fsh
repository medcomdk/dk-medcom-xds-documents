ValueSet: MedComXds_HcoClassCode
Id: medcom-dk-xds-hco-classcode-VS
Title: "DK IHE XDS Message Valueset"
Description: "Value set for the classCode attribute for DK IHE XDS Message. ClassCode used in DK IHE XDS Document sharing"
* ^experimental = true
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-01-01" //1.2.208.184.100.9
* $ClassCodeCS#006 "Workflow"

ValueSet: MedComXds_HcoTypeCode
Id: medcom-dk-xds-hco-typecode-VS
Title: "IHE XDS TypeCode"
Description: "ValueSet containing TypeCode."
* ^experimental = true
* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-01-26"
* $TypeCodeCS#HCOMsg "HomeCareObservation Message"

ValueSet: MedComXds_HcoFormatCode
Id: medcom-dk-xds-hco-formatcode-VS
Title: "HCO-msg IHE XDS FormatCode"
Description: "HCO-msg: Code system for document format code used in national Document sharing. The value set for format code is based on code system DK_IHE_FormatCode."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-03-01"
* $FormatCodeCS#urn:ad:dk:medcom:msg:hco-v1.1:full "DK HCO message"

