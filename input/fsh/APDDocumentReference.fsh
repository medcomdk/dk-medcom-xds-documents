/*
Profile: APDDKDocumentReference
Parent: MedComDocumentReference
Id: apd-dk-documentreference
Description: "A profile stating the rules, when exchanging a CDA Appointment (APD-DK) document."
* type from $ApdTypeCode (required) 
//* category.coding.system from $ClassCode (required)
//* content.attachment.contentType from $ContentType (required)
//* content.attachment.language from $Language (required)
* content.format from $ApdFormatCode (required)
* context.event from $ApdEventCode (required)
//* context.facilityType from $ApdFacilityType (required)
//* context.practiceSetting from $ApdPracticeSetting (required)
* extension.valueCoding from $ApdHomeCommunityID (required)
* extension.valueString = "1.0.0"
* subject 1..
*/

/* Invariant: apd-dk-rule-1
Description: "Where formatCode is 'urn:ad:dk:medcom:appointmentsummary:full', the eventCode must be 'ALAL01' (hjertesygdomme)"
Severity: #error
Expression: "where(type.coding.where(system = 'http://medcomfhir.dk/ig/xdsmetadata/CodeSystem/dk-ihe-typecode-de-regenstrief').code = '56446-8').context.event.coding.code = 'ALAL01'"
*/

// Metadata instance
/*
Instance: 94e65db8-2f0c-4a2c-a7c9-06a160d59a12
InstanceOf: APDDKDocumentReference
Title: "Instance of APD-DK DocumentReference."
Description: "Instance of APD-DK DocumentReference, containing relevant metadata"
//* identifier = 12c2deaf-389a-4f7d-8133-60b24c75cd7e
* contained[+] = 42cb9200-f421-4d08-8391-7d51a2503cb4
* contained[+] = 8fa7df76-bec2-4fe2-9a44-750030a0eda0
* contained[+] = 37628912-7816-47a3-acd8-396b610be142
* masterIdentifier.value = "urn:uuid:bf1bb63b-d405-4dfe-9810-37b16b333a01"
* status = #current "Current"
* type = $LoincOID#56446-8 "Appointment Summary Document"
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
* content.attachment.title = "Aftale for 0201919990"
* content.format = $MedComFormatOID#urn:ad:dk:medcom:apd-v2.0.1:full "DK APD schema"
* context.event = $SKSOID#ALAL03 "Psykiske lidelser og adfærdsmæssige forstyrrelser"
* context.sourcePatientInfo = Reference(37628912-7816-47a3-acd8-396b610be142)
* context.facilityType = $SnomedctOID#554871000005105 "psykiatrienhed"
* context.practiceSetting = $SnomedctOID#394588006 "børne- og ungdomspsykiatri"
* extension[0].url = "https://medcomfhir.dk/ig/ihexdsmetadata/StructureDefinition/medcom-xds-homecommunityid-extension"
* extension[0].valueCoding = $DanishxdsOID#1.2.208.176.43210.8.20 "TEST2"
* extension[1].url = "https://medcomfhir.dk/ig/ihexdsmetadata/StructureDefinition/medcom-xds-version-id-extension"
* extension[1].valueString = "1.0.0"
*/

