Profile: CoreDocumentReference
Parent: DocumentReference
Id: core-documentreference
Description: "A profile stating the rules, when exchanging a CDA document."
* masterIdentifier.value 1..1 MS 
* masterIdentifier.value ^maxLength = 64
* masterIdentifier.system 1..1 MS 
* identifier 1.. MS
* identifier ^short = "The entryUUID for the document" 
* identifier obeys uuid
* status MS 
* status ^short = "Only reference current and superseeded"
// TypeCode
* type 1.. MS
* type.coding.system 1.. MS
* type.coding.code 1.. MS
* authenticator 1.. MS
* authenticator only Reference(XDSAuthorPerson)
// ClassCode
* category 1..1 MS 
* category from $ClassCode (extensible)
* category.coding.code 1.. MS
* category.coding.system 1.. MS
* category ^short = "The class of the document"
* author 1.. MS 
* author only Reference(XDSAuthorOrganization or XDSAuthorPerson)
* securityLabel 1.. MS  
* securityLabel = #N
* subject MS
* subject only Reference(XDSSourcePatient)
* content MS
* content.attachment.contentType 1.. MS
* content.attachment.contentType from $ContentType
* content.attachment.language 1.. MS
* content.attachment.language from $Language (extensible)
* content.attachment.creation 1.. MS
* content.attachment.hash 1.. MS
* content.attachment.hash ^short = "Must be of the type sha-1"
* content.format 1.. MS
/* * content.format.coding.code 1.. MS
* content.format.coding.system 1.. MS */
* content.attachment.size 1.. MS
* content.attachment.title 1.. MS
* content.attachment.url 1.. MS
* context 1.. MS
* context.event 1..1 MS 
* context.event.coding.code 1.. MS
* context.event.coding.system 1.. MS
* context.period MS
* context.period.start MS
* context.period.end MS
* context.facilityType 1.. MS
* context.facilityType.coding.code 1.. MS
* context.facilityType.coding.system 1.. MS
* context.facilityType.coding.system from $FacilityType (preferred)
* context.practiceSetting 1.. MS
* context.practiceSetting.coding.code 1.. MS
* context.practiceSetting.coding.system 1.. MS
* context.practiceSetting.coding.system from $PracticeSetting (preferred)
* context.related MS
* extension contains medcom-xds-homecommunityid-extension named homeCommunityid 1..1 MS SU


/* Invariant: apd-dk-rule-1
Description: "Where formatCode is 'urn:ad:dk:medcom:appointmentsummary:full', the eventCode must be 'ALAL01' (hjertesygdomme)"
Severity: #error
Expression: "where(type.coding.where(system = 'http://medcomfhir.dk/ig/xdsmetadata/CodeSystem/dk-ihe-typecode-de-regenstrief').code = '56446-8').context.event.coding.code = 'ALAL01'"
*/

Invariant: uuid
Description: "General UUID expression"
Severity: #error
Expression: "value.matches('[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}')"

