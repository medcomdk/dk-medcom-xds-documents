Profile: HomeCareObservationDocumentReference
Parent: CoreDocumentReference
Id: homecare-observation-documentreference
Description: "A profile stating the rules, when exchanging a document including homecare observation (DA: Kommunale Prøvesvar)."
* masterIdentifier.value = "urn:uuid:fe27d893-6b9e-4e3d-91b0-72d033ce5c07"
* masterIdentifier.system = "urn:ietf:rfc:3986"
* type from $HcoTypeCode (required) 
* content.format from $HcoFormatCode (required)
* context.event from $HcoEventCode (required)
* extension.valueCoding from $HcoHomeCommunityID (required)
* extension.valueString = "1.1.0"
* subject 1..


// Metadata instance
Instance: 77787891-083a-4d19-9e56-423e7a223e30
InstanceOf: HomeCareObservationDocumentReference
Title: "Instance of HomeCareObservation DocumentReference."
Description: "Instance of HomeCareObservation DocumentReference containing relevant metadata"
* contained[+] = 42cb9200-f421-4d08-8391-7d51a2503cb4
* contained[+] = 8fa7df76-bec2-4fe2-9a44-750030a0eda0
* contained[+] = 37628912-7816-47a3-acd8-396b610be142
* masterIdentifier.value = "urn:uuid:fe27d893-6b9e-4e3d-91b0-72d033ce5c07"
* masterIdentifier.system = "urn:ietf:rfc:3986"
* identifier.value = "12c2deaf-389a-4f7d-8133-60b24c75cd7f"
* status = #current "Current"
* type = $LoincOID#55188-7 "Patient data Document" // Danish XDS typecode must be updated
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
* content.attachment.title = "Kommunale prøvesvar for 0201919990"
* content.format = $MedComFormatOID#urn:ad:dk:medcom:pdd-v1.0.1:full "DK PDD document" // Danish XDS typecode must be updated
* context.event = $SKSOID#ALAL02 "Hjertesygdomme" // Danish XDS typecode must be updated
* context.facilityType = $SnomedctOID#550621000005101 "hjemmesygeplejeenhed" // Danish XDS typecode must be updated
* context.practiceSetting = $SnomedctOID#658161000005107 "hjemmesygepleje" // Danish XDS typecode must be updated
* extension[0].url = "https://medcomfhir.dk/ig/ihexdsmetadata/StructureDefinition/medcom-xds-homecommunityid-extension"
* extension[0].valueCoding = $DanishxdsOID#1.2.208.176.43210.8.20 "TEST2"
* extension[1].url = "https://medcomfhir.dk/ig/ihexdsmetadata/StructureDefinition/medcom-xds-version-id-extension"
* extension[1].valueString = "1.1.0"
