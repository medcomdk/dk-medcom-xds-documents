# DK MedCom Document

This Implementation Guide (IG) is provided by MedCom to describe the use of FHIR ®© in document-based exchange of data in Danish healthcare. Profiles in this IG are used to define a general model for MedCom FHIR documents. The use case-specific profiles are maintained in individual IGs.

The profiles build upon the knowledge obtained through the use of CDA in Denmark and the work around [FHIR documents from HL7 International](https://hl7.org/fhir/R4/documents.html). Metadata associated with the documents and associated ValueSets, can be found in the [IG for XDS Metadata](https://medcomfhir.dk/ig/xdsmetadata/).

#### General Document Model

The figure below illustrates a general document model, which all MedCom documents will comply to. Document profiles in this IG are all prefixed with "MedComDocument". Besides the profiles shown in the figure, a MedCom document can also include some MedCom Core profiles and profiles made to support a specific use case. Altogether they constitute the actual content of a MedCom FHIR document. The following sections describe the overall purpose of each document profile.

<img alt="Shows the general MedCom document model. Structural overview of a MedCom Document Bundle, illustrating the relationships between Bundle, Composition, author (person and organization), subject (patient), and referenced resources such as Practitioner, PractitionerRole, Organization, RelatedPerson, Device, and use-case–specific content." src="./DocumentModel.svg" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

The figure shows the general MedCom document model. It is a structural overview of a MedCom Document Bundle, illustrating the relationships between Bundle, Composition, authorPerson, subject (patient), and referenced resources such as Practitioner, PractitionerRole, Organization, RelatedPerson, and use-case–specific content.

You will find a list of all MedCom Document profiles in the "Profiles" tab in the menu. 

### Governance and guidance

The [governance page](governance.html) provides information that is generic for MedCom FHIR Documents standards. This includes support of narrative test, validation, support xml and json format and more. To understand the document exchange, please go to the [use cases](usecases.html). It will provide an overview of the communication flow and involved actors on a general level. Furthermore, the 

### Contact

FHIR profiles are managed under MedCom: [Source code](https://github.com/medcomdk/dk-medcom-xds-documents). 

[MedCom](https://www.medcom.dk/) is responsible for this IG. 

If you have any questions, please contact <fhir@medcom.dk> or write to MedCom's stream in [Zulip](https://chat.fhir.org/#narrow/stream/315677-denmark.2Fmedcom.2FFHIRimplementationErfaGroup).