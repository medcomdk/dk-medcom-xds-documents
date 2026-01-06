# Metadata for CDA Document

This implementation guide includes a core profile of the DocumentReference resource. The intension of this IG is to gather all general constraints in regards to CDA-metadata. Therefore several

## Maping from XDS metadata to FHIR Document Reference resource

The following mapping origins from [HL7's mapping between XDS metadata to FHIR DocumentReference resource](https://www.hl7.org/fhir/documentreference-mappings.html#xds). The list of ValueSets is added. These restrictions are also defined in the profile, which can be found under the tab 'Artifacts'. 

HomeCommunityId is not included in the mapping, why the extension MedCom XDS HomeCommunityID is created. The extension can be found under the tab 'Artifacts' and is included in the profile MedComMinimalDocumentReference. 

## CodeSystems and ValueSets
More information about ValueSets can be found in the [Terminology for XDS Metadata IG version 2.0.0](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata/branches/2.0/).

## Examples

| **Example** | **Purpose** | **Profile**|
|---|---|---|
| [HCOM DocumentReference example](DocumentReference-77787891-083a-4d19-9e56-423e7a223e30) | Illustrate a regular DocumentReference for HomeCareObservation | [HCOM DocumentReference profile](StructureDefinition-homecare-observation-documentreference)|

