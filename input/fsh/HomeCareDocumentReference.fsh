Profile: HomeCareObservationDocumentReference
Parent: MedComMinimalDocumentReference
Id: homecare-observation-documentreference
Description: "A profile stating the rules, when exchanging a document including homecare observation (DA: Kommunale Prøvesvar)."
* type from $HcoTypeCode (required) 
* content.format from $HcoFormatCode (required)
* context.event from $HcoEventCode (required)
* extension.valueCoding from $HcoHomeCommunityID (required)
* extension.valueString = "1.1.0"
* subject 1..

Invariant: hcom-dk-rule-1
Description: "Where typeCode is '$MedComOID#HCOM', the content.attachment.contentType (mimeType) must be $IANAMediaOID#application/fhir+xml or $IANAMediaOID#application/fhir+json"
Severity: #error
Expression: "where(type.coding.where(system = 'http://medcomfhir.dk/ig/xdsmetadata/CodeSystem/MedCom-ihe-typecode-CS').code = 'HCOM').content.attachment.contentType = $IANAMediaOID#application/fhir+json or where(type.coding.where(system = 'http://medcomfhir.dk/ig/xdsmetadata/CodeSystem/MedCom-ihe-typecode-CS').code = 'HCOM').content.attachment.contentType = $IANAMediaOID#application/fhir+xml"

Invariant: hcom-dk-rule-2
Description: "Where typeCode is '$MedComOID#HCOM', the content.format must be $MedComFormatOID#urn:ad:dk:medcom:hcom-v1.2:full"
Severity: #error
Expression: "where(type.coding.where(system = 'http://medcomfhir.dk/ig/xdsmetadata/CodeSystem/MedCom-ihe-typecode-CS').code = 'HCOM').content.format = $MedComFormatOID#urn:ad:dk:medcom:hcom-v1.2:full"


// Metadata instance
Instance: 77787891-083a-4d19-9e56-423e7a223e30
InstanceOf: HomeCareObservationDocumentReference
Title: "Instance of HomeCareObservation DocumentReference."
Description: "Instance of HomeCareObservation DocumentReference containing relevant metadata"
* identifier.value = "urn:uuid:2b18ebb3-0a14-40a4-b1f1-68769cf08cfe"
* contained[+] = 42cb9200-f421-4d08-8391-7d51a2503cb4
* contained[+] = 8fa7df76-bec2-4fe2-9a44-750030a0eda0
* contained[+] = 37628912-7816-47a3-acd8-396b610be142
* masterIdentifier.value = "urn:uuid:fe27d893-6b9e-4e3d-91b0-72d033ce5c07"
* masterIdentifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5941658d-b927-4641-ac6a-52636497063f"
* status = #current "Current"
* type = $MedComOID#HCOM "HomeCareObservation message" // Danish XDS typecode must be updated
* authenticator = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* category = $DanishiheOID#002 "Workflow"
* securityLabel = #N
* author = Reference(8fa7df76-bec2-4fe2-9a44-750030a0eda0)
* subject = Reference(37628912-7816-47a3-acd8-396b610be142)
* content.attachment.contentType = $IANAMediaOID#application/fhir+xml "MimeType-application/fhir+xml"
//* content.attachment.contentType = $IANAMediaOID#application/fhir+json "MimeType-application/fhir+json"
* content.attachment.language = $IANALanguageOID#da "Danish"
* content.attachment.creation = "2025-12-18T13:28:17+01:00" 
* content.attachment.hash = "da39a3ee5e6b4b0d3255bfef95601890afd80709"
* content.attachment.size = 3654
* content.attachment.url = "http://medcomfhir.dk/ig/homecareobservation/StructureDefinition/medcom-homecareobservation-message"
* content.attachment.title = "Kommunale prøvesvar for 0201919990"
* content.format = $MedComFormatOID#urn:ad:dk:medcom:hcom-v1.2:full "DK HomeCareObservation message" // Danish XDS typecode must be updated
* context.facilityType = $sct#550621000005101 "hjemmesygeplejeenhed" // Danish XDS typecode must be updated
* context.practiceSetting = $sct#658161000005107 "hjemmesygepleje" // Danish XDS typecode must be updated
* context.sourcePatientInfo.identifier.value = "0201919990"
* context.sourcePatientInfo = Reference(37628912-7816-47a3-acd8-396b610be142)
* extension[+].url = "http://medcomfhir.dk/ig/document/StructureDefinition/medcom-document-homecommunityid-extension"
* extension[=].valueCoding = $DanishxdsOID#1.2.208.176.8.1 "Common Danish IHE XDS domain. Integrating the Healthcare Enterprise (IHE) cross[X]-enterprise Document Sharing (XDS) domain"
* extension[versionid].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DocumentReference.version"
* extension[versionid].valueString = "1.1.0"