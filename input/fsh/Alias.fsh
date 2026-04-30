/* Example of defining aliases (henviser til et CodeSystem eller ValueSet): 
Alias: $ActCodes = http://terminology.hl7.org/CodeSystem/v3-ActCode 
Alias: $RequestPriority = http://medcomfhir.dk/ig/terminology/ValueSet/medcom-careCommunication-requestPriority 
*/
Alias: $loinc = http://loinc.org
Alias: $MedComFormatOID = urn:oid:1.2.208.184.100.10
Alias: $sct = http://snomed.info/sct // Use Coding.version for specific editions/versions when needed.
Alias: $TypeCode =  http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-xds-typecode-VS

Alias: $QrdTypeCode = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-dk-xds-qrd-typecode-VS
Alias: $QrdEventCode = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-dk-xds-qrd-eventcodelist-VS
Alias: $QrdHomeCommunityID = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-xds-qrd-homeCommunityId-VS
Alias: $QrdFormatCode = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-xds-qrd-formatcode-VS

//used for instances
Alias: $ClassCodeCS = http://medcomfhir.dk/ig/xdsmetadata/CodeSystem/MedCom-xds-classcode-CS
Alias: $TypeCodeCS = http://medcomfhir.dk/ig/xdsmetadata/CodeSystem/MedCom-xds-LOINC-typecode-CS
Alias: $ContentTypeCS = http://medcomfhir.dk/ig/xdsmetadata/CodeSystem/MedCom-xds-mimeType-CS
Alias: $LanguageCS = http://medcomfhir.dk/ig/xdsmetadata/CodeSystem/MedCom-xds-LanguageCode-CS
Alias: $FormatCodeCS = http://medcomfhir.dk/ig/xdsmetadata/CodeSystem/MedCom-xds-formatcode-CS
Alias: $EventCodeCS = http://medcomfhir.dk/ig/xdsmetadata/CodeSystem/MedCom-xds-episodeOfCare-CS
Alias: $FacilityTypeCS = http://medcomfhir.dk/ig/xdsmetadata/CodeSystem/MedCom-xds-snomed-CS
Alias: $PracticeSettingCS = http://medcomfhir.dk/ig/xdsmetadata/CodeSystem/MedCom-xds-snomed-CS
Alias: $HomeCommunityIDCS = http://medcomfhir.dk/ig/xdsmetadata/CodeSystem/MedCom-xds-homeCommunityId-CS
Alias: $StatusCS = http://hl7.org/fhir/document-reference-status

Alias: $ApdTypeCode = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-dk-xds-apd-typecode-VS
Alias: $ApdEventCode = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-dk-xds-apd-eventcodelist-VS
Alias: $ApdHomeCommunityID = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-xds-apd-homeCommunityId-VS
Alias: $ApdFormatCode = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-xds-apd-formatcode-VS

Alias: $PhadTypeCode = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-dk-xds-phad-typecode-VS
Alias: $PhadEventCode = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-dk-xds-phad-eventcodelist-VS
Alias: $PhadHomeCommunityID = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-xds-phad-homeCommunityId-VS
Alias: $PhadFormatCode = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-xds-phad-formatcode-VS

Alias: $HcoTypeCode = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-dk-xds-hco-typecode-VS
Alias: $HcoHomeCommunityID = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-xds-hco-homeCommunityId-VS
Alias: $HcoFormatCode = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-xds-formatcode-VS

/* Example of defining aliases (henviser til et CodeSystem eller ValueSet): 
Alias: $ActCodes = http://terminology.hl7.org/CodeSystem/v3-ActCode 
Alias: $RequestPriority = http://medcomfhir.dk/ig/terminology/ValueSet/medcom-careCommunication-requestPriority 
*/
//Alias: $ClassCode = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-xds-apd-classcode-VS
Alias: $ClassCode = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-xds-classcode-VS

//Alias: $ContentType = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-xds-apd-mimetype-VS
Alias: $ContentType = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-xds-mimeType-VS

//Alias: $Language = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-xds-apd-languagecode-VS
Alias: $Language = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-xds-languagecode-VS

//Alias: $FormatCode = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-xds-apd-formatcode-VS
Alias: $FormatCode = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-xds-formatcode-VS

//Alias: $HomeCommunityID = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-xds-apd-homeCommunityId-VS
Alias: $HomeCommunityID = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-xds-homeCommunityId-VS

Alias: $PracticeSetting = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-xds-PracticeSettingCode-VS

Alias: $FacilityType = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-xds-HealthcareFacilityTypeCode-VS

Alias: $DanishXdsOID = urn:oid:1.2.208.184.100.9
Alias: $MedComXdsOID = urn:oid:1.2.208.184.100.1
Alias: $SKSOID = urn:oid:1.2.208.176.2.4
Alias: $NPUOID = urn:oid:1.2.208.176.2.1
Alias: $PROdkOID = urn:oid:1.2.208.176.7.3.1
Alias: $MedComFormatOID = urn:oid:1.2.208.184.100.10
Alias: $DanishxdsOID = urn:oid:1.2.208.176.8.1
Alias: $IANALanguageOID = urn:ietf:bcp:47
Alias: $IANAMediaOID = http://terminology.hl7.org/CodeSystem/v3-mediaType
Alias: $v3-ActCode3.0.0 = http://terminology.hl7.org/ValueSet/v3-ActCode|3.0.0

Alias: $MedComXDSTypeCodeVS = http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-xds-typecode-VS
Alias: $MedComIHECoreClassCodeVSTemp = http://medcomfhir.dk/ig/document/ValueSet/MedCom-ihe-core-classcode-VS-TEMP
Alias: $MedComIHEMimeTypeVSTemp = http://medcomfhir.dk/ig/document/ValueSet/MedCom-ihe-core-mimetype-VS-TEMP
Alias: $MedComLanguageCodeVSTemp = http://medcomfhir.dk/ig/document/ValueSet/MedCom-ihe-core-languagecode-VS-TEMP
Alias: $MedComHealthcareFacilityTypeCodeVSTemp = http://medcomfhir.dk/ig/document/ValueSet/MedCom-ihe-core-HealthcareFacilityTypeCode-VS-TEMP
Alias: $MedComPracticeSettingCodeVSTemp = http://medcomfhir.dk/ig/document/ValueSet/MedCom-ihe-core-PracticeSettingCode-VS-TEMP
Alias: $IHEHomeCommunityIdTEMP =  http://medcomfhir.dk/ig/document/ValueSet/MedCom-ihe-core-homeCommunityId-VS-TEMP
