ValueSet: MedComXds_PHADDkFormatCode
Id: medcom-dk-xds-phad-formatcode-VS
Title: "PHAD-DK IHE FormatCode"
Description: "Code system for document format code used in national Document sharing. The value set for format code is based on code system DK_IHE_FormatCode. New formatCode will be added, when created."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2024-01-01"
* $MedComFormatOID#urn:ad:dk:medcom:phad-v1.0:full // "DK CPD schema" //12-05-2020

ValueSet: MedComXds_PHADDkTypeCodeVS
Id: medcom-dk-xds-phad-typecode-VS
Title: "DK IHE XDS PHAD Message TypeCode Valueset"
Description: "Value set for the TypeCode attribute for DK APD Message. TypeCode used in DK IHE XDS Document sharing"
* ^experimental = true
* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-01-26"
* $LoincOID#103140-0 "Personal health attachment Document" 

ValueSet: MedComXds_PHADDkHomeCommunityIdVS
Id: medcom-dk-xds-phad-homeCommunityId-VS
Title: "DK IHE XDS HomeCommunityId"
Description: "List of operational and in production home communities (XCA) in Danish Document Sharing"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2016-11-01"
* $DanishxdsOID#1.2.208.176.8.1 "Common Danish DK IHE XDS domain. Integrating the Healthcare Enterprise (IHE) cross[X]-enterprise Document Sharing (XDS) domain"
* $DanishxdsOID#1.2.208.193.100 "Primary healthcare domain"

