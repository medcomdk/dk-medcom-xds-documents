### Scope and usage 

The MedComDocumentBundle profile describes the Bundle resource that shall be used in all MedCom FHIR Documents. MedComDocumentBundle is the container for the content in a document. As this profile is the used in a document, the element type shall always be 'document'. This entails that the first resource in the entry element shall be a MedComDocumentComposition.

#### Mapping from IHE-XDS metadata to FHIR Bundle
MedCom has developed a mapping. Find the [mapping from IHE XDS metadata to FHIR Bundle here](StructureDefinition-medcom-contained-documentreference-mappings.html#other-mappings).