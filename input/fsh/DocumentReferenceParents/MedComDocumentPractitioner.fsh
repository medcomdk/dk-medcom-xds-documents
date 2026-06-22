Profile: MedComDocumentPractitioner
Parent: MedComCorePractitioner
Id: medcom-document-practitioner
Description: "A profile including requirements for a MedCom Document Practitioner"
* identifier 1..1 MS 
  * value 1..1 MS 
  * system 1..1 MS
  * ^short = "Globally unique, stable identifier for this resource. The same identifier SHALL be used when this resource is recreated from the same source data." 
* name 1.. 
  * given 1.. MS
  * family 1.. MS
  * ^short = "The name of the practitioner. It is recommended to use the official name of the practitioner."
