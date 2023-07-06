Profile: APDDKDocumentReference
Parent: CoreDocumentReference
Id: apd-dk-documentreference
Description: "A profile stating the rules, when exchanging a CDA Appointment (APD-DK) document."
* ^version = "9.0.0"
* type from $TypeCode (required) 
//* category.coding.system from $ClassCode (required)
//* content.attachment.contentType from $ContentType (required)
//* content.attachment.language from $Language (required)
//* content.format from $FormatCode (required)
* context.event from $EventCode (required)
* context.facilityType from $FacilityType (required)
* context.practiceSetting from $PracticeSetting (required)
//* extension[homeCommunityid].valueCoding.system from $HomeCommunityID 



/* Invariant: apd-dk-rule-1
Description: "Where formatCode is 'urn:ad:dk:medcom:appointmentsummary:full', the eventCode must be 'ALAL01' (hjertesygdomme)"
Severity: #error
Expression: "where(type.coding.where(system = 'http://medcomfhir.dk/ig/xdsmetadata/CodeSystem/dk-ihe-typecode-de-regenstrief').code = '56446-8').context.event.coding.code = 'ALAL01'"
*/

// Metadata instance
Instance: 94e65db8-2f0c-4a2c-a7c9-06a160d59a12
InstanceOf: APDDKDocumentReference
Title: "Instance of APD-DK DocumentReference."
Description: "Instance of APD-DK DocumentReference, containing relevant metadata"
* status = $StatusCS#current "Current"
* type = $TypeCodeCS#56446-8 "Appointment Summary Document"
* category = $ClassCodeCS#001 "Klinisk rapport"
* content.attachment.contentType = $ContentTypeCS#text/xml "MimeType-text/xml"
* content.attachment.language = $LanguageCS#da "Danish"
* content.format = $FormatCodeCS#urn:ad:dk:medcom:apd-v2.0.1:full "DK APD schema"
* context.event = $EventCodeCS#ALAL03 "Psykiske lidelser og adfærdsmæssige forstyrrelser"
* context.facilityType = $FacilityTypeCS#554871000005105 "psykiatrienhed"
* context.practiceSetting = $PracticeSettingCS#394588006 "børne- og ungdomspsykiatri"
* extension[homeCommunityid].valueCoding = $HomeCommunityIDCS#1.2.208.176.43210.8.20 "TEST2"

// Metadata instance
Instance: 313a2475-3079-4054-b635-a96dea305877
InstanceOf: APDDKDocumentReference
Title: "Instance of APD-DK DocumentReference."
Description: "Invalid: language=#eng. Instance of APD-DK DocumentReference, containing relevant metadata"
* status = $StatusCS#current "Current"
* type = $TypeCodeCS#56446-8 "Appointment Summary Document"
* category = $ClassCodeCS#001 "Klinisk rapport"
* content.attachment.contentType = $ContentTypeCS#text/xml "MimeType-text/xml"
* content.attachment.language = $LanguageCS#eng "English"
* content.format = $FormatCodeCS#urn:ad:dk:medcom:apd-v2.0.1:full "DK APD schema"
* context.event = $EventCodeCS#ALAL03 "Psykiske lidelser og adfærdsmæssige forstyrrelser"
* context.facilityType = $FacilityTypeCS#554871000005105 "psykiatrienhed"
* context.practiceSetting = $PracticeSettingCS#394588006 "børne- og ungdomspsykiatri"
* extension[homeCommunityid].valueCoding = $HomeCommunityIDCS#1.2.208.176.43210.8.20 "TEST2"