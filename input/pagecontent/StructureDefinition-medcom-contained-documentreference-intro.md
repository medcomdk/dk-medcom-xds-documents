### Scope and usage 

The MedComContainedDocumentReference profile is not intented to be exchanged until the infrastructure is ready to receive it, but can be used for validation of metadata associated with a document. This profile provides metadata about a document, this can be CDA, FHIR or PDF. It holds the required metadata from the IHE XDS metadata standard, and a [mapping between the two can be found on GitHub pages](https://medcomdk.github.io/dk-medcom-document/assets/documents/Mapping_from_IHE-XDS_metadata_to_FHIR.html). 

#### Rationale of the MedComContainedDocumentReference

This mapping has been developed to enable the future use of FHIR within the Danish document-sharing infrastructure, which currently relies on IHE XDS metadata. By aligning the Danish XDS metadata requirements with a profiled FHIR DocumentReference, the use of DocumentReference can be adopted seamlessly once the national infrastructure transitions towards FHIR-based exchange.

In the interim, mapping from IHE XDS to DocumentReference can already be used to support validation and quality assurance. Implementers can map the metadata they populate in the IHE XDS format to the corresponding elements in the relevant MedCom FHIR DocumentReference profile. Using FHIR’s native validation tooling, it is possible to verify that the supplied metadata conforms to the expected structure and constraints defined by the profile. This provides an immediate benefit, allowing organisations to prepare for a gradual migration to FHIR while maintaining compatibility with the existing XDS-based infrastructure.

Find the [mapping from IHE XDS metadata to FHIR DocumentReference here](https://medcomdk.github.io/dk-medcom-document/assets/documents/Mapping_from_IHE-XDS_metadata_to_FHIR.html).

#### Contained resources

This profile includes `contained` as part of its name because referenced resources **MUST** be contained inside the DocumentReference instance. The current Danish infrastructure is not designed to store or manage multiple separate FHIR resources, and containment ensures that all necessary metadata is delivered as a single, self-contained unit consistent with the existing XDS-based workflow.

#### Author institution and author person
The author element allows up to two references and must always include exactly one author organization and optionally one author person.

**Author institution:** The slice author:institution is mandatory and restricts the reference to a MedComDocumentOrganization. This ensures that every document has one clear author organization responsible for its creation.

**Author person:** An additional author element that does not match the institutional slice is interpreted as an author person. If used, it MUST reference exactly one resource of the allowed types: MedComDocumentPractitioner, MedComDocumentPractitionerRole, MedComDocumentPatient, DkCoreRelatedPerson, or Device.
