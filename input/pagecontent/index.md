# Metadata for XDS Documents whether it is CDAs FHIR Documents or MedCom Messages

This implementation guide includes a core profile of the DocumentReference resource. The intension of this IG is to gather all general constraints in regards to CDA-metadata. Therefore several

## Mapping from XDS metadata to FHIR DocumentReference resource

The following mapping origins from [HL7's mapping between XDS metadata to FHIR DocumentReference resource](https://www.hl7.org/fhir/documentreference-mappings.html#xds). The list of ValueSets is added. These restrictions are also defined in the profile, which can be found under the tab 'Artifacts'. 

HomeCommunityId is not included in the mapping, why the extension MedCom XDS HomeCommunityID is created. The extension can be found under the tab 'Artifacts' and is included in the profile CoreDocumentReference. 

## CodeSystems and ValueSets
More information about ValueSets can be found in the [Terminology for XDS Metadata IG](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/).

## Examples

| **Example** | **Purpose** | **Profile**|
|---|---|---|
| [APDDKDocumentReference](./DocumentReference-94e65db8-2f0c-4a2c-a7c9-06a160d59a12) | Illustrate a regular DocumentReference for APD-DK | APDDKDocumentReference| 
| [APDDKDocumentReference](./DocumentReference-313a2475-3079-4054-b635-a96dea305877) | Illustrate an invalid DocumentReference for APD-DK | APDDKDocumentReference| 
| [FutureAPDDKDocumentReference](DocumentReference-f2e1afb5-060e-41bf-859f-410b05b5dba4) | Illustrate a DocumentReference for a future APD-DK v. 2.9.0| FutureAPDDKDocumentReference| 
| [QRDDKDocumentReference](DocumentReference-50d6fc3c-d95a-4d12-8e61-8d70584c1f4e) | Illustrate a regular DocumentReference for QRD-DK | QRDDKDocumentReference| 