### Scope and usage 
The MedComDocumentComposition profile defines the structure and narrative content necessary for a document. However, a Composition alone does not constitute a document - the Composition must be the first `entry` in a Bundle where `Bundle.type = document`. Any other resources referenced from Composition must be included as subsequent entries in the Bundle. 

The Composition resource organizes clinical and administrative content into sections, each of which contains a narrative, and references other resources for supporting data.

Several elements in this profile map directly to IHE XDS DocumentEntry metadata to ensure compatibility with existing national and international document exchange infrastructures.

#### Author institution and author person
The author element allows up to two references and must always include exactly one author organization and optionally one author person.

**Author institution:** The slice author:institution is mandatory and restricts the reference to a MedComDocumentOrganization. This ensures that every document has one clear author organization responsible for its creation.

**Author person:** An additional author element that does not match the institutional slice is interpreted as an author person. If used, it MUST reference exactly one resource of the allowed types: MedComDocumentPractitioner, MedComDocumentPractitionerRole, MedComDocumentPatient, DkCoreRelatedPerson, or Device.

#### Mapping from IHE-XDS metadata to FHIR Composition
MedCom has developed a mapping. Find the [mapping from IHE XDS metadata to FHIR Composition here](https://medcomdk.github.io/dk-medcom-document/assets/documents/Mapping_from_IHE-XDS_metadata_to_FHIR.html).