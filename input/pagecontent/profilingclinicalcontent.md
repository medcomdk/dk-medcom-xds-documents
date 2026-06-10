# Profiling Clinical Content in FHIR Document Standards

This page provides **inspiration and guidance** for stakeholders who are exploring how clinical content can be represented and exchanged as part of a FHIR Document standard.

The content is intended to support early discussions and considerations around how both structured and unstructured clinical information can be exchanged in a consistent and standards-based way within the healthcare sector.

The intention is to illustrate a **general and reusable modelling approach**. The described pattern can be applied when there is a need to establish a new FHIR Document standard for sharing clinical content, where the information may be represented as structured data, document-based content, files, images, or other base64-encoded unstructured content.

### When to use

It is relevant when there is a need to share clinical content in Documents that:

- Can be represented using a clinical FHIR resource, such as an `Observation`.
- Contains structured clinical data, unstructured content (file-based content, such as PDF documents or images), or a combination of both.

The described approach serves as a foundation that can be further constrained and profiled to form a concrete standard for a specific use case.

### Conceptual approach

Clinical content can be exchanged by using a **FHIR Document Bundle** as the overall container for the document.

Within this document structure, a profiled clinical resource, such as `MedComDocumentObservation`, can be used to represent the clinical artefact. The `Observation` provides the clinical context and may contain structured clinical information, while any associated file-based or otherwise unstructured content can be carried as well.

This approach makes it possible to represent a wide range of clinical content types within the same overall document pattern. Depending on the use case, the profiled resource may contain structured data, an attachment, or a combination of structured elements and attached content.

As a general principle, structured data should always be preferred when the relevant information can be represented meaningfully. Unstructured contentshould only be used when the information is not available in a structured form, or when the original clinical artefact needs to be preserved.

### What type of content can be represented?

In this context, clinical content may include, but is not limited to:

- Structured clinical data represented through FHIR elements, such as codes, values, dates, performers, interpretations, and references.
- Files such as PDF documents or images.
- Base64-encoded content in general.
- A combination of structured data and unstructured content.

The examples above are intentionally broad and are meant to illustrate possible types of clinical content that may be represented through profiling.

### Why profile clinical content this way?

Using a Document Bundle combined with profiled clinical resources, such as `MedComDocumentObservation`, allow to:

- Reuse established and widely supported FHIR patterns.
- Support both structured and unstructured clinical content within a consistent document structure.
- Preserve clinical context while allowing different types of content to be exchanged.
- Enable fast standardisation when new needs arise.

This makes the approach particularly suitable as a starting point when considering new use cases for sharing clinical data in FHIR Documents, whether the content is structured, unstructured, or a combination of both.