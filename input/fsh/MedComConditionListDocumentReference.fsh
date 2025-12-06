/*
Profile: MedComConditionListDocumentReference
Parent: MedComDocumentReference
Id: medcom-conditionlist-documentreference
Description: "A profile for the MedCom ConditionListDocumentReference resource."
* type from $PlrTypeCode (required) 
//* category.coding.system from $ClassCode (required)
//* content.attachment.contentType from $ContentType (required)
//* content.attachment.language from $Language (required)
* content.format from $PlrFormatCode (required)
//* content.attachment.contentType from $PlrContentType
//* context.event from $PcaEventCode (required)
//* context.facilityType from $ApdFacilityType (required)
//* context.practiceSetting from $ApdPracticeSetting (required)
* extension.valueCoding from $PlrHomeCommunityID (required)
* extension.valueString = "1.0.0"
* subject 1..

// Metadata instance
Instance: 94e65db8-2f0c-4a2c-a7c9-06a160d59a13
InstanceOf: MedComDocumentReference
Title: "DocumentReference instance"
Description: "DocumentReference instance"
* contained[+] = 1fcad31f-8967-4f49-b6af-7e64082e8fec
* contained[+] = fd3206c6-c265-49f9-82c3-8b4c96280403
* contained[+] = 69e475df-20c8-4f54-8cea-9843568205fd
* masterIdentifier.value = "urn:uuid:bf1bb63b-d405-4dfe-9810-37b16b333a01"
* status = #current "Current"
* identifier.value = "urn:uuid:"urn:uuid:7c596b9a-112e-4386-ae71-5ecdd3ed7c50"
* type = $LoincOID#11450-4 "Problem list - Reported"
* authenticator = Reference(1fcad31f-8967-4f49-b6af-7e64082e8fec)
* category = $DanishiheOID#001 "Klinisk rapport"
* author[institution] = Reference(fd3206c6-c265-49f9-82c3-8b4c96280403)
* subject = Reference(69e475df-20c8-4f54-8cea-9843568205fd)
* content.attachment.contentType = $IANAMediaOID#application/fhir+json "MimeType-application/fhir+json"
* securityLabel = #N
* content.attachment.language = $IANALanguageOID#da "Danish"
* content.attachment.creation = "2024-05-01T12:00:00+01:00"
* content.attachment.url = "DOC001.XML"
* content.attachment.title = "Diagnoseoversigt for 2509479989"
* content.format = $MedComFormatOID#urn:ad:dk:medcom:plr-v1.0:full "DK PLR schema"
* context.facilityType = $SnomedctOID#394761003 "almen lægepraksis"
* context.practiceSetting = $SnomedctOID#408443003 "almen medicin"
* context.sourcePatientInfo = Reference(69e475df-20c8-4f54-8cea-9843568205fd)
* extension[0].url = "http://medcomfhir.dk/ig/document/StructureDefinition/medcom-document-homecommunityid-extension"
* extension[0].valueCoding = $DanishxdsOID#1.2.208.176.8.1 "Common Danish IHE XDS domain. Integrating the Healthcare Enterprise (IHE) cross[X]-enterprise Document Sharing (XDS) domain"
* extension[1].url = "http://medcomfhir.dk/ig/document/StructureDefinition/medcom-document-version-id-extension"
* extension[1].valueString = "1.0.0"
*/