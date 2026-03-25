
Instance: e16a8fb2-41dd-42b7-8a06-9c3977c4c7a5
InstanceOf: HomeCareObservationDocumentReference
Description: "DocumentReference for HCOM: 08f964c-72ac-4a32-a0eb-128a861d441d (Bundle.id)"
Usage: #example
* contained[0] = 84b20d13-c7ee-417f-906d-c54ec3639d56
* contained[+] = 988cbb72-2054-4d15-8c53-84665b65b4b6
* contained[+] = a7b72c02-0baa-40f2-82a3-eee59d203764
* extension[+].url = "http://medcomfhir.dk/ig/document/StructureDefinition/medcom-document-homecommunityid-extension"
* extension[=].valueCoding = $DanishxdsOID#1.2.208.176.8.1 "Common Danish IHE XDS domain. Integrating the Healthcare Enterprise (IHE) cross[X]-enterprise Document Sharing (XDS) domain"
* extension[versionid].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DocumentReference.version"
* extension[versionid].valueString = "2.0"
* masterIdentifier.value = "urn:uuid:0936d58d-2073-4074-994e-eb04f476166a"
* masterIdentifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7a0873b2-28e2-4d1f-94b6-b5b64695c59f"
* status = #current "Current"
* type = $MedComXdsOID#HCOM "HomeCareObservation Message"
* category = $DanishXdsOID#006 "Workflow"
* subject = Reference(a7b72c02-0baa-40f2-82a3-eee59d203764)
* author = Reference(988cbb72-2054-4d15-8c53-84665b65b4b6)
* authenticator = Reference(84b20d13-c7ee-417f-906d-c54ec3639d56)
* securityLabel.coding.code = #N
* content.attachment.contentType = $IANAMediaOID#application/fhir+json "MimeType-application/fhir+json"
* content.attachment.language = $IANALanguageOID#da "Danish"
* content.attachment.url = "HomeCareObservation.json"
* content.attachment.size = 3654
* content.attachment.hash = "da39a3ee5e6b4b0d3255bfef95601890afd80709"
* content.attachment.title = "Kommunale prøvesvar for 2509479989"
* content.attachment.creation = "2026-01-16T10:05:15+01:00"
* content.format = $MedComFormatOID#urn:ad:dk:medcom:hcom-v1.1:full "DK HomeCareObservation message"
//* context.event = $MedComEventOID#ALAL02 "Hjertesygdomme"
* context.facilityType = $sct#550621000005101 "hjemmesygeplejeenhed"
* context.practiceSetting = $sct#658161000005107 "hjemmesygepleje"
* context.sourcePatientInfo = Reference(a7b72c02-0baa-40f2-82a3-eee59d203764)

Instance: 84b20d13-c7ee-417f-906d-c54ec3639d56
InstanceOf: MedComDocumentPractitioner
Usage: #inline
* meta.profile = "http://medcomfhir.dk/ig/document/StructureDefinition/medcom-document-practitioner"
* name.family = "Svendsen"
* name.given[0] = "Trine"
* name.given[1] = "Kirkegaard"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a6c11dab-a9e9-46b8-9bb3-fe06d6587e07"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Trine Kirkegaard Svendsen</div>"

Instance: 988cbb72-2054-4d15-8c53-84665b65b4b6
InstanceOf: MedComDocumentOrganization
Usage: #inline
* meta.profile = "http://medcomfhir.dk/ig/document/StructureDefinition/medcom-document-organization"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "937961000016000"
* name = "Ehmi Sender"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Ehmi Sender, SOR-ID: 937961000016000</div>"

Instance: a7b72c02-0baa-40f2-82a3-eee59d203764
InstanceOf: MedComDocumentPatient
Usage: #inline
* meta.profile = "http://medcomfhir.dk/ig/document/StructureDefinition/medcom-document-patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"
* name[official].given[0] = "Bruno"
* gender = #male
* birthDate = "1947-09-25"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Elmer Bruno, CPR: 2509479989</div>"
