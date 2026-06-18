Profile: MedComContainedDocumentReference
Parent: DkCoreMinimalDocumentReference
Id: medcom-contained-documentreference
Description: "A profile stating the rules, when exchanging a FHIR document in the Danish Healthcare sector using  IHE MHD and IHE XDS based document sharing."
* id 1.. MS

* masterIdentifier 1..1 MS
  * system MS
  * value 1..1 MS
  * ^short = "Globally unique identifier assigned to the document by the source of the document. In a FHIR Document, this corresponds to the Composition.identifier [XDS-metadata element: DocumentEntry.uniqueId] "

* identifier[entryUUID] 1..1 MS
  * ^short = "Globally unique identifier intended for internal document management. In a FHIR Document, this is recommended to be Bundle.id. [XDS-metadata element: DocumentEntry.entryUUID]"
  * value 1..1 MS 
    * obeys medcom-uuid
  * system 1..1 MS

* status MS 
  * ^short = "Represents the current status of the submitted document. It is always set to 'current' as a result of the successful submission of new documents. It MAY be changed to 'superseded' under the primary responsibility of the creating entity. [XDS-metadata element: DocumentEntry.availabilityStatus]"

* type 1..1 MS
  * ^short = "Specifies a specific type of document. [XDS-metadata element: DocumentEntry.typeCode]"
  * coding 1..1 MS
    * system 1.. MS
    * code 1.. MS
    * display 1.. MS
* type from $MedComXDSTypeCodeVS (required)

* authenticator 0..1 MS
  * ^short = "Represents a participant within the authorInstitution who has legally authenticated or attested the document. [XDS-metadata element: DocumentEntry.legalAuthenticator]"
  * ^type.aggregation = #contained

* category 1..1 MS 
* category from $MedComXDSClassCodeVS (required)
  * coding 1..1 MS
    * code 1.. MS
    * system 1.. MS
    * display 1.. MS
  * ^short = "Specifies the high-level use classification of the document type. [XDS-metadata element: DocumentEntry.classCode]"

* author ..2 MS
  * ^short = "Represents the organization or individual who authored the document. The slice author:institution ensures one mandatory organizational author. and the slice author:person allows for an optional individual author.
  [XDS-metadata element: DocumentEntry.author]"
  * ^type.aggregation = #contained
* author only Reference(MedComDocumentOrganization or MedComDocumentPractitioner or MedComDocumentPatient or DkCoreRelatedPerson or Device)
* author ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[0].path = "$this.resolve()"
  * ^slicing.rules = #open
* author contains
    institution 1..1 MS and
    person 0..1 MS
* author[institution] only Reference(MedComDocumentOrganization)
  * ^short = "The organization who authored the document. [XDS-metadata element: DocumentEntry.authorInstitution]"
* author[person] only Reference(MedComDocumentPractitioner or Device)
  * ^short = "The person or device who authored the document within the authorInstitution. [XDS-metadata element: DocumentEntry.authorPerson]"

* securityLabel 1..1 MS
  * coding 1..1 MS
    * system 1.. MS
    * code 1.. MS
  * ^short = " Specifies the level of confidentiality assigned to the document. [XDS-metadata element: DocumentEntry.confidentialityCode]"

* subject 1..1 MS
* subject only Reference(MedComDocumentPatient)
  * ^type.aggregation = #contained
  * ^short = "Represents the subject, also known as the patient or citizen, of the document.[XDS-metadata element: DocumentEntry.sourcePatientInfo, DocumentEntry.sourcePatientId] "

* content MS
  * attachment MS
    * creation 1.. MS
      * ^short = "Represents the date and time the author created the document. [XDS-metadata element: DocumentEntry.creationTime]"
      * obeys medcom-datetime-has-time-offset-zulu
    * contentType 1.. MS
      * ^short = "Describes the format of the document as a mime type. [XDS-metadata element: DocumentEntry.mimeType]"
    * contentType from $MedComXDSMimeTypeVS (required)
    * language 1.. MS
      * ^short = "Describes the human language of the content in the document. [XDS-metadata element: DocumentEntry.languageCode]"
    * language from $MedComXDSLanguageCodeVS (required)
    * hash 0.. MS
      * ^short = "The hash of the contents of the document is filled by the repository. [XDS-metadata element: DocumentEntry.hash]"
    * size 0.. MS
      * ^short = "The number of bytes of data that make up this attachment (before base64 encoding, if that is done). [XDS-metadata element: DocumentEntry.size]"
    * title 1.. MS
      * ^short = "A human readable title of the document. [XDS-metadata element: DocumentEntry.title] "
    * url MS
      * ^short = "A location where the data can be accessed. [XDS-metadata element: DocumentEntry.URI]"
  * format 1.. MS
    * ^short = "The formatCode specifies the technical format of the document. Along with the typeCode, it SHALL provide sufficient information to allow potential consumer to know if it will be able to process the document. The formatCode allows a receiving system (Document Consumer Actor) to identify the processing to be done and thus the correct representation of the content in the document. [DocumentEntry.formatCode]"
    * system 1.. MS
    * code 1.. MS
    * display 1.. MS
  * format from $MedComXDSFormatCodeVS (required)

* context 1.. MS
  * event 0.. MS 
    * coding.code 1.. MS
    * coding.system 1.. MS
  * event from $MedComXDSEventCodeVS (required)
    * ^short = "Represents the main clinical event documented for the patient contact. [XDS-metadata element: DocumentEntry.eventCodeList]"
  * period 1..1 MS
    * start 1.. MS
    * end MS
    * ^short = "Date and time of the clinical act that is being documented. [XDS-metadata element: DocumentEntry.serviceStartTime, DocumentEntry.serviceStopTime]"
  * facilityType 1.. MS
    * ^short = "This code represents the type of organizational setting of the clinical encounter during which the documented act occurred. [XDS-metadata element: DocumentEntry.healthcareFacilityTypeCode]"
    * coding 1..1 MS
      * code 1.. MS
      * system 1.. MS
      * display 1.. MS
  * facilityType from $MedComXDSHealthcareFacilityTypeCodeVS (required)
  * practiceSetting 1.. MS
    * ^short = "The type of clinical setting of the clinical encounter during which the documented act occurred. [XDS-metadata element: DocumentEntry.practiceSettingCode]"
    * coding 1..1 MS
      * code 1.. MS
      * system 1.. MS
      * display 1.. MS
  * practiceSetting from $MedComXDSPracticeSettingCodeVS (required)
  * related 0..* MS
    * ^short = "Related identifiers or resources. [XDS-metadata element: DocumentEntry.referenceIdList]"
  * sourcePatientInfo 1..1 MS
    * reference 1.. MS
    * identifier 1.. MS
    * ^short = "Information about the patient at the submission time. Must be the same reference as in DocumentReference.subject. [XDS-metadata element: DocumentEntry.sourcePatientId and DocumentEntry.sourcePatientInfo]"
  * sourcePatientInfo only Reference(MedComDocumentPatient)

* extension MS
* extension contains 
    medcom-document-homecommunityid-extension named homeCommunityid 0..1 MS
* extension[homeCommunityid]
  * valueCoding from $MedComXDSHomeCommunityIdVS (required)
  * ^short = "A unique identifier for a community where the document can be accessed. [XDS-metadata element: DocumentEntry.homeCommunityId] "
  * url MS



