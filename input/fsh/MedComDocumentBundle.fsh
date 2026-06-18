Profile: MedComDocumentBundle
Parent: Bundle
Id: medcom-document-bundle
Description: "The Bundle profile for a document"
* id 1.. 
* id MS
* id obeys medcom-document-bundle-id-uuid
* identifier 1..1 MS
* type MS 
* type = #document
* type ^short = "Always a document"
* timestamp 1..1 MS
* timestamp obeys medcom-datetime-has-time-offset-zulu
* timestamp ^short = "[DocumentEntry.creationTime] Date and time that the FHIR Document is created."
* entry 1.. MS 
* entry.fullUrl 1..1 MS
* entry.resource 1.. MS