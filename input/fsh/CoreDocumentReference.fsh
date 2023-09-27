Profile: CoreDocumentReference
Parent: DocumentReference
Id: core-documentreference
Description: "A profile stating the rules, when exchanging a CDA document."
* masterIdentifier.value 1..1 MS //??
* masterIdentifier.value ^maxLength = 64
* masterIdentifier.system 1..1 MS //??
* identifier MS //1..1
* identifier ^short = "The entryUUID for the document" 
* identifier obeys uuid
* status MS 
* status ^short = "Only reference current and superseeded?"
// TypeCode
* type 1.. MS
* type.coding.system 1.. MS
//* type.coding.system from $TypeCode //(required) 
* type.coding.code 1.. MS
* authenticator MS //1..
* authenticator only Reference(Practitioner)
// ClassCode
* category 1..1 MS 
* category from $ClassCode (extensible)
* category.coding.code 1.. MS
* category.coding.system 1.. MS
//* category.coding.display 1.. MS - 
* category ^short = "The class of the document"
* author //1.. MS
* author only Reference(Organization or Practitioner)
* securityLabel //1.. MS 
* securityLabel = #N
* subject MS //1..
* subject only Reference(Patient)
* content MS
* content.attachment.contentType 1.. MS
* content.attachment.contentType from $ContentType
* content.attachment.language 1.. MS
* content.attachment.language from $Language (extensible)
* content.attachment.creation MS //1..
* content.attachment.hash MS //1..
* content.attachment.hash ^short = "Must be of the type sha-1"
* content.format 1.. MS
* content.format from $FormatCode (extensible)
* content.attachment.size MS //1..
* content.attachment.title MS //1..
* content.attachment.url MS //1..
* context 1.. MS
* context.event 1..1 MS 
* context.event.coding.code 1.. MS
* context.event.coding.system 1.. MS
* context.period MS
* context.period.start MS
* context.period.end MS
//* context.event.coding.system from $EventCode (extensible)
* context.facilityType 1.. MS
* context.facilityType.coding.code 1.. MS
* context.facilityType.coding.system 1.. MS
//* context.facilityType.coding.system from $FacilityType (extensible)
* context.practiceSetting 1.. MS
* context.practiceSetting.coding.code 1.. MS
* context.practiceSetting.coding.system 1.. MS
* context.related MS
//* context.practiceSetting.coding.system from $PracticeSetting (extensible)
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

