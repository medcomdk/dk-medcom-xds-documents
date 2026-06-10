### Scope and usage 

The MedComDocumentPatient profile describes information about a patient or citizen used in a MedComs Document standard.
The MedComDocumentPatient is inherited from the [DkCorePatient](https://hl7.dk/fhir/core/3.2.0/StructureDefinition-dk-core-patient.html) profile defined by HL7 Denmark. It does not inherit from MedComCorePatient, as more elements, than desired for this purpose, are marked with MustSupport.

#### Required information

There are certain requirements to which data **MUST** be present in a FHIR document. These requirements come from the IHE XDS metadata standard (sourcePatientInfo attribute) that requires for a Danish CPR-number (unique identifier), given and family name, birthdate and gender to be present. Therefore, this information has a cardinality of 1.

If the document source lacks data for either the patient's given name or family name, the missing field(s) **MUST** be populated with `ADRESSEBESKYTTET`. This approach ensures that unavailable name components are replaced, as the absence of a given or family name often results from name and address protection (Da: Navne- og adressebeskyttelse).

It is not allowed to add a replacement-CPR (Danish: erstatningsCPR), as this is not supported in the infrastructure.