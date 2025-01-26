/*
Profile: QRDDKDocumentReference
Parent: MedComDocumentReference
Id: qrd-dk-documentreference
Description: "A profile stating the rules, when exchanging a CDA Questionnaire Response Document (QRD-DK)."
* type.coding from $QrdTypeCode (required) 
//* category.coding.system from $ClassCode (required)
//* content.attachment.contentType from $ContentType (required)
//* content.attachment.language from $Language (required)
* content.format from $QrdFormatCode (required)
* context.event from $QrdEventCode (extensible)
* subject 1..
//* context.facilityType.coding.system from $QrdFacilityType (required)
//* context.practiceSetting.coding.system from $QrdPracticeSetting (required)
* extension.valueCoding from $QrdHomeCommunityID (required)
* extension.valueString = "1.0.0"
*/

/* Invariant: apd-dk-rule-1
Description: "Where formatCode is 'urn:ad:dk:medcom:appointmentsummary:full', the eventCode must be 'ALAL01' (hjertesygdomme)"
Severity: #error
Expression: "where(type.coding.where(system = 'http://medcomfhir.dk/ig/xdsmetadata/CodeSystem/dk-ihe-typecode-de-regenstrief').code = '56446-8').context.event.coding.code = 'ALAL01'"
*/

/*
// Metadata instance
Instance: 50d6fc3c-d95a-4d12-8e61-8d70584c1f4e
InstanceOf: QRDDKDocumentReference
Title: "Instance of QRD-DK DocumentReference."
Description: "Instance of QRD-DK DocumentReference, containing relevant metadata"
//* identifier = 12c2deaf-389a-4f7d-8133-60b24c75cd7g
* contained[+] = 42cb9200-f421-4d08-8391-7d51a2503cb4
* contained[+] = 8fa7df76-bec2-4fe2-9a44-750030a0eda0
* contained[+] = 37628912-7816-47a3-acd8-396b610be142
* masterIdentifier.value = "urn:uuid:c8f1acf0-2e28-11e6-bdf4-0800200c9a66"
* status = #current "Current"
* type = $LoincOID#74465-6 "Questionnaire Response Document"
* authenticator = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* category = $DanishXdsOid#001 "Klinisk rapport"
* author[institution] = Reference(8fa7df76-bec2-4fe2-9a44-750030a0eda0)
* subject = Reference(37628912-7816-47a3-acd8-396b610be142)
* securityLabel = #N
* content.attachment.contentType = $IANAMediaOID#text/xml "MimeType-text/xml"
* content.attachment.language = $IANALanguageOID#da "Danish"
* content.attachment.creation = "2023-09-08T13:28:17+01:00"
* content.attachment.hash = "da39a3ee5e6b4b0d3255bfef95601890afd80709"
* content.attachment.size = 3654
* content.attachment.url = "DOC001.XML"
* content.attachment.title = "Spørgeskemabesvarelse for 0201919990"
* content.format = $MedComFormatOID#urn:ad:dk:medcom:qrd-v1.3:full "DK QRD schema"
* context.event = $SKSOID#ALAL03 "Psykiske lidelser og adfærdsmæssige forstyrrelser"
* context.sourcePatientInfo = Reference(37628912-7816-47a3-acd8-396b610be142)
* context.facilityType = $SnomedctOID#554871000005105 "psykiatrienhed"
* context.practiceSetting = $SnomedctOID#394588006 "børne- og ungdomspsykiatri"
* extension[0].url = "https://medcomfhir.dk/ig/ihexdsmetadata/StructureDefinition/medcom-xds-homecommunityid-extension"
* extension[0].valueCoding = $DanishxdsOID#1.2.208.176.43210.8.20 "TEST2"
* extension[1].url = "https://medcomfhir.dk/ig/ihexdsmetadata/StructureDefinition/medcom-xds-version-id-extension"
* extension[1].valueString = "1.0.0"
*/