Profile: MedComDocumentPatient
Parent: MedComCorePatient
Id: medcom-document-patient
Description: "A profile including requirements for a MedCom Document Patient."
* identifier 1..* MS

* identifier[cpr] 1.. MS
  * ^short = "Unique identification number for all citizens in Denmark, called civil person register (CPR-number)."
  * value 1..1 MS
  * system 1..1 MS

* identifier[x-ecpr] 0..0
* identifier[d-ecpr] 0..0

* name[official] 1..1
  * given 1..
  * family 1..

* birthDate 1.. MS
* birthDate ^short = "The date of birth of the patient, which is included due to requirements in XDS-metadata standard."
* gender 1.. MS
* gender ^short = "The gender of the patient, which is included due to requirements in XDS-metadata standard."

* insert ProducerShallPutInNarrative(birthDate)
* insert ProducerShallPutInNarrative(gender)