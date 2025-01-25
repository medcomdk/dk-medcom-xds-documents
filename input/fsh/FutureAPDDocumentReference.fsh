/* Profile: FutureAPDDKDocumentReference
Parent: MedComDocumentReference
Id: future-apd-dk-documentreference
Description: "A profile stating the rules, when exchanging a CDA Appointment (APD-DK) document."
* masterIdentifier.value = "urn:uuid:179b817d-9b0b-4265-9450-215e4562835a"
* masterIdentifier.system = "urn:ietf:rfc:3986"
* type from $ApdTypeCode (required) 
//* category.coding.system from $ClassCode (required)
//* content.attachment.contentType from $ContentType (required)
//* content.attachment.language from $Language (required)
//* content.format from $FormatCode (required)
* context.event from $ApdEventCode (required)
* context.facilityType from $ApdFacilityType (required)
* context.practiceSetting from $ApdPracticeSetting (required)
//* extension[homeCommunityid].valueCoding.system from $HomeCommunityID 
 */


/* Invariant: apd-dk-rule-1
Description: "Where formatCode is 'urn:ad:dk:medcom:appointmentsummary:full', the eventCode must be 'ALAL01' (hjertesygdomme)"
Severity: #error
Expression: "where(type.coding.where(system = 'http://medcomfhir.dk/ig/xdsmetadata/CodeSystem/dk-ihe-typecode-de-regenstrief').code = '56446-8').context.event.coding.code = 'ALAL01'"
*/

/* // Metadata instance
Instance: f2e1afb5-060e-41bf-859f-410b05b5dba4
InstanceOf: FutureAPDDKDocumentReference
Title: "Instance of a future APD-DK DocumentReference."
Description: "Instance of a future APD-DK DocumentReference, containing relevant metadata"
* masterIdentifier.value = "urn:uuid:179b817d-9b0b-4265-9450-215e4562835a"
* masterIdentifier.system = "urn:ietf:rfc:3986"
* status = $StatusCS#current "Current"
* type = $TypeCodeCS#56446-8 "Appointment Summary Document"
* category = $ClassCodeCS#001 "Klinisk rapport"
* content.attachment.contentType = $ContentTypeCS#text/xml "MimeType-text/xml"
* content.attachment.language = $LanguageCS#da "Danish"
* content.format = $FormatCodeCS#urn:ad:dk:medcom:apd-v2.9.0:full "DK APD schema"
* context.event = $EventCodeCS#ALAL03 "Psykiske lidelser og adfærdsmæssige forstyrrelser"
* context.facilityType = $FacilityTypeCS#554871000005105 "psykiatrienhed"
* context.practiceSetting = $PracticeSettingCS#394588006 "børne- og ungdomspsykiatri"
* extension[homeCommunityid].valueCoding = $HomeCommunityIDCS#1.2.208.176.43210.8.20 "TEST2" */
