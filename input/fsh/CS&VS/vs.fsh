ValueSet: MedComXds_MsgClassCode
Id: medcom-dk-xds-msg-classcode-VS
Title: "IHE XDS ClassCode"
Description: "Value set for the classCode attribute. classCode used in DK IHE Document sharing"
* ^experimental = true
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-01-01" //1.2.208.184.100.9
* $DanishXdsOid#006 "Workflow"

ValueSet: MedComXds_HcoTypeCode
Id: medcom-dk-xds-hco-typecode-VS
Title: "IHE XDS TypeCode"
Description: "ValueSet containing TypeCode."
* ^experimental = true
* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-01-26"
* $LoincOID#55188-7 "Patient data Document"

ValueSet: MedComXds_HcoFormatCode
Id: medcom-dk-xds-hco-formatcode-VS
Title: "HCO-msg IHE XDS FormatCode"
Description: "HCO-msg: Code system for document format code used in national Document sharing. The value set for format code is based on code system DK_IHE_FormatCode."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-03-01"
* $MedComFormatOID#urn:ad:dk:medcom:plr-v1.0:full

/*
Alias: $HcoEventCode = http://medcomfhir.dk/ig/xdsdocuments/ValueSet/medcom-dk-xds-hco-eventcodelist-VS
Alias: $HcoHomeCommunityID = http://medcomfhir.dk/ig/xdsdocuments/ValueSet/medcom-dk-xds-hco-homeCommunityId-VS
Alias: $HcoFormatCode = http://medcomfhir.dk/ig/xdsdocuments/ValueSet/medcom-dk-xds-hco-formatcode-VS
*/