ValueSet: MedComXds_QRDDkFormatCode
Id: medcom-dk-xds-qrd-formatcode-VS
Title: "QRD-DK IHE FormatCode"
Description: "QRD-DK: Code system for document format code used in national Document sharing. The value set for format code is based on code system DK_IHE_FormatCode. New formatCode will be added, when created."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-02-11"
* $MedComFormatOID#urn:ad:dk:medcom:qrd-v1.1:full // "DK QRD schema"
* $MedComFormatOID#urn:ad:dk:medcom:qrd-v1.2:full // "DK QRD schema" //19-05-2015
* $MedComFormatOID#urn:ad:dk:medcom:qrd-v1.3:full // "DK QRD schema" //11-02-2022 

ValueSet: MedComXds_QRDDkTypeCodeVS
Id: medcom-dk-xds-qrd-typecode-VS
Title: "DK IHE XDS qrd Message TypeCode Valueset"
Description: "Value set for the TypeCode attribute for DK APD Message. TypeCode used in DK IHE XDS Document sharing"
* ^experimental = true
* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-01-26"
* $LoincOID#74465-6 "Questionnaire Response Document"

ValueSet: MedComXds_QRDDkHomeCommunityIdVS
Id: medcom-dk-xds-qrd-homeCommunityId-VS
Title: "DK IHE XDS HomeCommunityId"
Description: "List of operational and in production home communities (XCA) in Danish Document Sharing"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2016-11-01"
* $DanishxdsOID#1.2.208.176.8.1 "Common Danish DK IHE XDS domain. Integrating the Healthcare Enterprise (IHE) cross[X]-enterprise Document Sharing (XDS) domain"
* $DanishxdsOID#1.2.208.193.100 "Primary healthcare domain"

