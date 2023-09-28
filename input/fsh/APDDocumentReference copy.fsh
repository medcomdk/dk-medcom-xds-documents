Profile: HomeCareObservationDocumentReference
Parent: CoreDocumentReference
Id: homecare-observation-documentreference
Description: "A profile stating the rules, when exchanging a document including homecare observation (DA: Kommunale Prøvesvar)."
* masterIdentifier.value = "urn:uuid:fe27d893-6b9e-4e3d-91b0-72d033ce5c07"
* masterIdentifier.system = "urn:ietf:rfc:3986"
* type from $ApdTypeCode (required) 
//* category.coding.system from $ClassCode (required)
//* content.attachment.contentType from $ContentType (required)
//* content.attachment.language from $Language (required)
* content.format from $ApdFormatCode (required)
* context.event from $ApdEventCode (required)
//* context.facilityType from $ApdFacilityType (required)
//* context.practiceSetting from $ApdPracticeSetting (required)
* extension.valueCoding from $ApdHomeCommunityID (required)
* subject 1..


/* // Metadata instance
Instance: 94e65db8-2f0c-4a2c-a7c9-06a160d59a12
InstanceOf: APDDKDocumentReference
Title: "Instance of APD-DK DocumentReference."
Description: "Instance of APD-DK DocumentReference, containing relevant metadata"
* masterIdentifier.value = "urn:uuid:bf1bb63b-d405-4dfe-9810-37b16b333a01"
* masterIdentifier.system = "urn:ietf:rfc:3986"
* identifier.value = "5bcafe6e-dc75-4bfb-bb09-e46f366eb0ee"
* status = #current "Current"
* type = $LoincOID#56446-8 "Appointment Summary Document"
* authenticator = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* category = $DanishiheOID#001 "Klinisk rapport"
* author = Reference(8fa7df76-bec2-4fe2-9a44-750030a0eda0)
* subject = Reference(37628912-7816-47a3-acd8-396b610be142)
* content.attachment.contentType = $IANAMediaOID#text/xml "MimeType-text/xml"
* content.attachment.language = $IANALanguageOID#da "Danish"
* content.attachment.creation = "2023-09-08T13:28:17+01:00"
* content.attachment.hash = "da39a3ee5e6b4b0d3255bfef95601890afd80709"
* content.attachment.size = 3654
* content.attachment.url = "DOC001.XML"
* content.attachment.title = "Aftale for 0201919990"
* content.format = $MedComFormatOID#urn:ad:dk:medcom:apd-v2.0.1:full "DK APD schema"
* context.event = $SKSOID#ALAL03 "Psykiske lidelser og adfærdsmæssige forstyrrelser"
* context.facilityType = $SnomedctOID#554871000005105 "psykiatrienhed"
* context.practiceSetting = $SnomedctOID#394588006 "børne- og ungdomspsykiatri"
* extension.url = "https://medcomfhir.dk/ig/ihexdsmetadata/StructureDefinition/medcom-xds-homecommunityid-extension"
* extension.valueCoding = $DanishxdsOID#1.2.208.176.43210.8.20 "TEST2" */
