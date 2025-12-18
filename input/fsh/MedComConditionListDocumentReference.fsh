Profile: MedComConditionListDocumentReference
Parent: MedComContainedDocumentReference
Id: medcom-conditionlist-documentreference
Description: "A profile for the MedCom ConditionListDocumentReference resource."
* type.coding.system = $loinc (exactly) //RCH: OBS: Disse linjer er også kopieret til Composition.
* type.coding.code = #11450-4 (exactly)
* type.coding.display = "Problem list - Reported" (exactly) 
* content.format.system = $MedComFormatOID (exactly)
* content.format.code = #urn:ad:dk:medcom:plr-v1.0:full (exactly) 
* content.format.display = "DK PLR schema" (exactly)
//* content.attachment.contentType from $PlrContentType
//* context.event from $PcaEventCode (required)
//* context.facilityType from $ApdFacilityType (required)
//* context.practiceSetting from $ApdPracticeSetting (required)
//* extension[homeCommunityid].valueCoding from http://medcomfhir.dk/ig/xdsmetadata/ValueSet/MedCom-ihe-core-homeCommunityId-VS (required)
* extension[versionid].valueString = "1.0.0"
* subject 1..

// Metadata instance
Instance: 4daf727f-f116-4e49-ad31-4018f0cc638a
InstanceOf: MedComConditionListDocumentReference
Title: "DocumentReference instance"
Description: "DocumentReference instance"
* contained[+] = 1fcad31f-8967-4f49-b6af-7e64082e8fec
* contained[+] = fd3206c6-c265-49f9-82c3-8b4c96280403
* contained[+] = 69e475df-20c8-4f54-8cea-9843568205fd
* masterIdentifier.value = "urn:uuid:bf1bb63b-d405-4dfe-9810-37b16b333a01"
* masterIdentifier.system = "urn:ietf:rfc:3986"
* status = #current "Current"
* identifier[entryUUID].value = "urn:uuid:7c596b9a-112e-4386-ae71-5ecdd3ed7c50"
* type = $loinc#11450-4 "Problem list - Reported"
* authenticator = Reference(1fcad31f-8967-4f49-b6af-7e64082e8fec)
* category = $DanishiheOID#001 "Klinisk rapport"
* author = Reference(fd3206c6-c265-49f9-82c3-8b4c96280403)
* subject = Reference(69e475df-20c8-4f54-8cea-9843568205fd)
* content.attachment.contentType = $IANAMediaOID#application/fhir+json "MimeType-application/fhir+json"
* securityLabel = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N
* content.attachment.language = $IANALanguageOID#da "Danish"
* content.attachment.creation = "2024-05-01T12:00:00+01:00"
* content.attachment.url = "DOC001.XML"
* content.attachment.title = "Diagnoseoversigt for 2509479989"
* content.format = $MedComFormatOID#urn:ad:dk:medcom:plr-v1.0:full "DK PLR schema"
* context.facilityType = $sct#394761003 "almen lægepraksis"
* context.practiceSetting = $sct#408443003 "almen medicin"
* context.sourcePatientInfo = Reference(69e475df-20c8-4f54-8cea-9843568205fd)
* context.sourcePatientInfo.identifier.value = "2509479989"
* extension[+].url = "http://medcomfhir.dk/ig/document/StructureDefinition/medcom-document-homecommunityid-extension"
* extension[=].valueCoding = $DanishxdsOID#1.2.208.176.8.1 "Common Danish IHE XDS domain. Integrating the Healthcare Enterprise (IHE) cross[X]-enterprise Document Sharing (XDS) domain"
* extension[versionid].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DocumentReference.version"
* extension[versionid].valueString = "1.0.0"

Instance: fd3206c6-c265-49f9-82c3-8b4c96280403
InstanceOf: MedComDocumentOrganization
Usage: #example
Title: "Organization instance - 1st ConditionList"
Description: "Organization instance - 1st ConditionList - incl. SOR-ID and Ydernummer as identifiers"
* name = "MedCom Testcenter"
* identifier[SOR-ID].value = "325381000016008"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
 

Instance: 1fcad31f-8967-4f49-b6af-7e64082e8fec
InstanceOf: MedComDocumentPractitioner
Usage: #example
Title: "Practitioner instance - 1st ConditionList"
Description: "Practitioner instance - 1st ConditionList"
* name.use = #official
* name.family = "Vestergaard"
* name.given[0] = "Bo"
* name.given[1] = "Test"

Instance: 69e475df-20c8-4f54-8cea-9843568205fd
InstanceOf: MedComDocumentPatient
Title: "Patient instance - 1st ConditionList"
Description: "Patient instance - 1st ConditionList - Elmer Test Hansen"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Hansen"
* name[official].given[0] = "Elmer"
* name[official].given[1] = "Test"
* birthDate = "1947-09-25"
* gender = #male