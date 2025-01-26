ValueSet: MedComXds_HcoClassCodeVS
Id: medcom-dk-xds-hco-classcode-VS
Title: "DK IHE XDS HCO Message ClassCode Valueset"
Description: "Value set for the ClassCode attribute for DK HCO Message. ClassCode used in DK IHE XDS Document sharing"
* ^experimental = true
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-01-01" //1.2.208.184.100.9
* $ClassCodeCS#006 "Workflow"

ValueSet: MedComXds_HcoTypeCodeVS
Id: medcom-dk-xds-hco-typecode-VS
Title: "DK IHE XDS HCO Message TypeCode Valueset"
Description: "Value set for the TypeCode attribute for DK HCO Message. TypeCode used in DK IHE XDS Document sharing"
* ^experimental = true
* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-01-26"
* $MedComOID#HCOMsg "HomeCareObservation Message"

ValueSet: MedComXds_HcoFormatCodeVS
Id: medcom-dk-xds-hco-formatcode-VS
Title: "DK IHE XDS HCO Message FormatCode Valueset"
Description: "Value set for the FormatCode attribute for DK HCO Message. TypeCode used in DK IHE XDS Document sharing"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-03-01"
* $FormatCodeCS#urn:ad:dk:medcom:msg:hco-v1.1:full "DK HCO message"

ValueSet: MedComXds_HcoDkHomeCommunityIdVS
Id: medcom-dk-xds-hco-homeCommunityId-VS
Title: "DK IHE XDS HomeCommunityId"
Description: "List of operational and in production home communities (XCA) in Danish Document Sharing"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2016-11-01"
* $DanishxdsOID#1.2.208.176.8.1 "Common Danish DK IHE XDS domain. Integrating the Healthcare Enterprise (IHE) cross[X]-enterprise Document Sharing (XDS) domain"
