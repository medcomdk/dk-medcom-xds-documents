Profile: PHADDKDocumentReference
Parent: CoreDocumentReference
Id: phad-dk-documentreference
Description: "A profile stating the rules, when exchanging a CDA Personal Health Attachment Document (PHAD-DK)."
* type from $PhadTypeCode (required) 
//* category.coding.system from $ClassCode (required)
//* content.attachment.contentType from $ContentType (required)
//* content.attachment.language from $Language (required)
* content.format from $PhadFormatCode (required)
* context.event from $PhadEventCode (required)
//* context.facilityType from $ApdFacilityType (required)
//* context.practiceSetting from $ApdPracticeSetting (required)
* extension.valueCoding from $PhadHomeCommunityID (required)
* extension.valueString = "1.0.0"
* subject 1..


/* Invariant: apd-dk-rule-1
Description: "Where formatCode is 'urn:ad:dk:medcom:appointmentsummary:full', the eventCode must be 'ALAL01' (hjertesygdomme)"
Severity: #error
Expression: "where(type.coding.where(system = 'http://medcomfhir.dk/ig/xdsmetadata/CodeSystem/dk-ihe-typecode-de-regenstrief').code = '56446-8').context.event.coding.code = 'ALAL01'"
*/

// Metadata instance
Instance: 6339367b-1a7b-4a7b-bd3f-80290750be27
InstanceOf: PHADDKDocumentReference
Title: "Instance of PHAD-DK DocumentReference."
Description: "Instance of PHAD-DK DocumentReference, containing relevant metadata"
* contained[+] = 42cb9200-f421-4d08-8391-7d51a2503cb4
* contained[+] = 8fa7df76-bec2-4fe2-9a44-750030a0eda0
* contained[+] = 37628912-7816-47a3-acd8-396b610be142
* masterIdentifier.value = "urn:uuid:bf1bb63b-d405-4dfe-9810-37b16b333a01"
* status = #current "Current"
* type = $LoincOID#56446-8 "Personal health attachment Document"
* authenticator = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* category = $DanishiheOID#001 "Klinisk rapport"
* author = Reference(8fa7df76-bec2-4fe2-9a44-750030a0eda0)
* subject = Reference(37628912-7816-47a3-acd8-396b610be142)
* content.attachment.contentType = $IANAMediaOID#text/xml "MimeType-text/xml"
* content.attachment.language = $IANALanguageOID#da "Danish"
* content.attachment.creation = "2024-04-05T13:28:17+01:00"
* content.attachment.hash = "da39a3ee5e6b4b0d3255bfef95601890afd80709"
* content.attachment.size = 3654
* content.attachment.url = "DOC001.XML"
* content.attachment.title = "Udskrivningsaftale" //Udskrivningsaftale eller Koordinationsaftale
* content.format = $MedComFormatOID#urn:ad:dk:medcom:phad-v1.0:full "DK CPD schema"
* context.event = $SKSOID#ALAL03 "Psykiske lidelser og adfærdsmæssige forstyrrelser"
* context.facilityType = $SnomedctOID#554871000005105 "psykiatrienhed"
* context.practiceSetting = $SnomedctOID#394588006 "børne- og ungdomspsykiatri"
* extension[0].url = "https://medcomfhir.dk/ig/ihexdsmetadata/StructureDefinition/medcom-xds-homecommunityid-extension"
* extension[0].valueCoding = $DanishxdsOID#1.2.208.176.43210.8.20 "TEST2"
* extension[1].url = "https://medcomfhir.dk/ig/ihexdsmetadata/StructureDefinition/medcom-xds-version-id-extension"
* extension[1].valueString = "1.0.0"


