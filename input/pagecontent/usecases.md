# General technical use cases: Providing and retrieving documents from an IHE XDS infrastructure


## Versioning

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>Version</th>
      <th>Initials</th>
      <th>Date</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1.0.0-rc1</td>
      <td>RCH/TMS</td>
      <td>18-07-2024</td>
      <td>Ready for review</td>
    </tr>
    <tr>
      <td>1.0.0</td>
      <td>RCH/TMS</td>
      <td>12-09-2024</td>
      <td>Initial publication.</td>
    </tr>
  </tbody>
</table>

## Table of contents

- [1 Introduction](#1-introduction)
  - [1.1 Background and purpose](#11-background-and-purpose)
  - [1.2 Audience](#12-audience)
  - [1.3 References](#13-references)
  - [1.4 Terms](#14-terms)
  - [1.5 Scope](#15-scope)
  - [1.6 Reading guide](#16-reading-guide)
- [2 Overview of use cases](#2-overview-of-use-cases)
  - [2.1 Overview of primary and alternative use cases](#21-overview-of-primary-and-alternative-use-cases)
  - [2.2 Corrective use cases](#22-corrective-use-cases)
- [3 Use cases](#3-use-cases)
  - [3.1 Provide documents](#31-provide-documents)
  - [3.2 Retrieve documents](#32-retrieve-documents)
- [4 Corrective use cases](#4-corrective-use-cases)
  - [4.1 Replacement](#41-replacement)
  - [4.2 Deprecate](#42-deprecate)
- [5 Rules for the systems on which the use cases are based](#5-rules-for-the-systems-on-which-the-use-cases-are-based)

# 1 Introduction

This document contains technical use cases for sharing of documents over an IHE-XDS infrastructure. The use case descriptions are intended to supplement other documentation and should therefore be read in conjunction with this (see section 1.3 References).

## 1.1 Background and purpose

The purpose of these use cases is to describe the technical requirements associated with providing and retrieving documents. Further the use cases describe the flow of events that happens when communicating with an IHE-XDS infrastructure. The use cases are therefore created based on the ITI call defined by IHE. Not all ITI calls are described in this document, only the once described in the introduction to document sharing, see References.

This document is created to ensure a common way of supporting communication with an IHE-XDS infrastructure.

## 1.2 Audience

The document targets both IT system vendors and implementation managers in regions and municipalities.

## 1.3 References

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>Material</th>
      <th>Version</th>
      <th>Link/reference</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Introduction to document sharing</td>
      <td>1.0</td>
      <td>https://medcom.dk/wp-content/uploads/2023/01/Kom-godt-igang-med-dokumentdeling-1.4-interactive-1.pdf</td>
      <td>A document containing basic description of document sharing on the national infrastructure in Denmark.</td>
    </tr>
    <tr>
      <td>IHE XDS</td>
      <td>20.0</td>
      <td>https://profiles.ihe.net/ITI/TF/Volume2/</td>
      <td>The technical framework describing actors and transactions requirements for the IHE IT Infrastructure (ITI) profiles.</td>
    </tr>
    <tr>
      <td>Metadata standard</td>
      <td>0.96</td>
      <td>https://svn.medcom.dk/svn/releases/Standarder/IHE/DK_profil_metadata/</td>
      <td>The metadata standard defines the metadata that must and may be present when providing and retrieving documents from the NSP.</td>
    </tr>
    <tr>
      <td>NSP</td>
      <td>-</td>
      <td>https://www.nspop.dk/display/Web3/Introduktion+til+NSP-platformen</td>
      <td>An overview of the components in the Danish national service platform (NSP), owned by the Danish Health Data Authority.</td>
    </tr>
    <tr>
      <td>NSP (document sharing)</td>
      <td>-</td>
      <td>https://www.nspop.dk/pages/releaseview.action?pageId=154772568</td>
      <td>An overview of the document sharing options in NSP.</td>
    </tr>
  </tbody>
</table>

## 1.4 Terms

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>Term</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>IHE</td>
      <td>Integrating the Healthcare Enterprise (IHE) is an organization that has described a technical framework for implementation of standards to achieve system integration</td>
    </tr>
    <tr>
      <td>XDS</td>
      <td>Cross-Enterprise Domain Sharing (XDS) describes a way of sharing documents in a standardized format enabling different application to provide and retrieve the documents.</td>
    </tr>
    <tr>
      <td>ITI</td>
      <td>IHE IT Infrastructure (ITI) technical framework describes how to communicate over the XDS infrastructure.</td>
    </tr>
    <tr>
      <td>Document</td>
      <td>A document is an immutable set of information with a fixed presentation that is authored and/or attested by humans, organizations and/or devices. Documents built in this fashion may be exchanged between systems and persisted in document storage and management systems, including systems such as IHE XDS.</td>
    </tr>
    <tr>
      <td>Metadata</td>
      <td>Metadata is data about the data, in this case a document. When providing or retrieving a document, the metadata is used to identify the right document.</td>
    </tr>
    <tr>
      <td>Stable document</td>
      <td>A stable document is a document that is available for retrieval. This document will be in a repository and the associated metadata will be in a registry.</td>
    </tr>
    <tr>
      <td>On-Demand document</td>
      <td>An On-Demand document is created when requested. The associated metadata will be in a registry.</td>
    </tr>
    <tr>
      <td>Repository</td>
      <td>A repository is a database for storing stable documents and register documents in an appropriate registry. It assigns a uniqueId to documents for subsequent retrieval by a document consumer</td>
    </tr>
    <tr>
      <td>Registry</td>
      <td>A registry stores metadata for each registered document, which makes it possible to point out in which repository a document is stored.</td>
    </tr>
    <tr>
      <td>Document source</td>
      <td>Is the actor in terms of an application that produces and publishes a document. It is responsible for sending documents to the document repository, and supply metadata to the document repository for subsequent registration of the documents with the document registry Actor. An implementation of the document source shall be able to submit documents. Whether a submission contains a single document, or multiple documents depends on workflows, policies, and other external factors which are outside of the scope of this document. Inspiration taken from: https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html#10.1.1</td>
    </tr>
    <tr>
      <td>Document consumer</td>
      <td>Is the actor in terms of an application that queries a Document Registry and for documents meeting certain criteria, retrieves selected documents from one or more document repository. Inspiration taken from: https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html#10.1.1</td>
    </tr>
    <tr>
      <td>Patient identity source</td>
      <td>The patient identity source is a provider of unique identifier for each patient and maintains a collection of identity traits. The patient identity source facilitates the validation of patient identifiers by the registry in its interactions with other actors. Inspiration taken from: https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html#10.1.1</td>
    </tr>
  </tbody>
</table>

## 1.5 Scope

The use cases in this document describe the technical actions, that are initiated by an end user’s interaction with the system. The user can either provide information to an application, resulting in a document being registered or request some information, which result in documents being requested and retrieved by an application. Therefore, the use cases are divided into two; “providing use cases” and “retrieving use cases”.

This document does not concern legislation and requirements regarding logging, authorization, blocking and so on. That concerns the actual implementation of the infrastructure, such as the NSP, see References. Furthermore, the IHE-XDs infrastructure is agnostic to the type of document being exchanged, which also accounts for these use cases, as they allow for e.g. CDA, FHIR documents or another format to be exchanged. In the current implementation on the NSP, these different types of documents must include the same type of metadata, see References.

Figure 1 illustrates some of the ITI calls described in this document. A document source, in the lower left corner can provide a document to a repository, which is then registered in the registry. The document source can also be an On-Demand source, that provides documents On-Demand and the associated metadata from the registry. A document consumer can then query for a document in the registry and if the document exists or can be created, the consumer can retrieve the document from the document repository or On-Demand document Source. The ITI-calls from the document administrator (ITI-62 and ITI-86) are not described in this document, as they are not relevant for the provider and consumer. For the same reason, the ITI-calls from the Patient Identity source (ITI-8 and ITI-44) are not described.

<figure>
  <img src="./figure-01.png" alt="Illustration of document flow using the ITI calls" />
  <figcaption>Figure 1. Illustration of document flow using the ITI calls. Illustration is taken from: https://medcom.dk/wp-content/uploads/2023/01/Kom-godt-igang-med-dokumentdeling-1.4-interactive-1.pdf</figcaption>
</figure>

## 1.6 Reading guide

The use cases in the document describe a detailed course of the end user’s interaction with the system during various incidents/events. The background for the use cases is a number of (business) rules for use, which are described in section 5 Rules for the provider of documents on which the use cases are based.

A distinction is made between three different types of use cases:

- Primary use cases: For each incident, one primary use case will be described, which describes the normal process of the user's interaction with the system in the user interface.
- Alternative use cases: If there are deviations from the normal process, the primary use case will refer to alternative (independently described) use cases.
- Corrective use cases: Likewise, corrective actions for the process (typically corrections and cancellations) will be referred to corrective (independently described) use cases from the primary use case. The corrective use cases will typically be generic across different use cases.

All use cases are divided into:

- Provider (S)-use case: Describes the use case from the sender's perspective (S = Sender/provider).
- Retriever (R)-use case: Describes the use case from the receiver’s perspective (R = Receiver/retriever).

Primary use cases are made up of the elements below[^1].

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>Element</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>ID</td>
      <td>Unique ID</td>
    </tr>
    <tr>
      <td>Name</td>
      <td>Activity in imperative</td>
    </tr>
    <tr>
      <td>Initiator</td>
      <td>Name of the initiator (can be an end user (e.g., nurse or medical secretary) or a System operator (e.g., a received HospitalNotification)</td>
    </tr>
    <tr>
      <td>Purpose</td>
      <td>Brief description of the business-related purpose, as well as any delimitation to other use cases.</td>
    </tr>
    <tr>
      <td>Conditions for initiation</td>
      <td>The conditions for initiation that must be met for the scenario/use case to go through/completed to the end.</td>
    </tr>
    <tr>
      <td>Reason for initiation</td>
      <td>The event or incident which triggers the user’s actions in the scenario/use case.</td>
    </tr>
    <tr>
      <td>Actions</td>
      <td>The sequence of actions that leads – without interruption – from the reason for initiation to the result.</td>
    </tr>
    <tr>
      <td>Result</td>
      <td>The desired business-related target/purpose</td>
    </tr>
    <tr>
      <td>Alternative actions (A)</td>
      <td>Description of any alternative actions that deviate from the actions in the normal course (with reference/link to alternative use case(s).</td>
    </tr>
    <tr>
      <td>Corrective actions (CANC/CORR)</td>
      <td>Description of corrective actions that are taken when a course ends with an error situation or with a resumption (with reference/link to corrective use case(s). For example, corrections or cancellations.</td>
    </tr>
    <tr>
      <td>Comments</td>
      <td>Any comments on the use case</td>
    </tr>
  </tbody>
</table>

**Table 1.** Overview of the elements included in the primary use cases.

[^1]: The use cases have been prepared with inspiration from KOMBIT’s method manual for use cases.

Alternative use cases will always refer to a use case with a normal course, which is why the previous elements; initiator, purpose, starting conditions/conditions for initiation and reason for initiation, will not appear in the alternative use cases. Alternative use cases are therefore made up of the following elements:

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>Element</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>ID</td>
      <td>Unique ID</td>
    </tr>
    <tr>
      <td>Name</td>
      <td>Activity in imperative</td>
    </tr>
    <tr>
      <td>Reference to the use case that this use case is an alternative to</td>
      <td>Use case ID of the primary use case to which this use case is an alternative</td>
    </tr>
    <tr>
      <td>Actions</td>
      <td>The sequence of actions that leads – without interruption – from the reason for initiation to the result.</td>
    </tr>
    <tr>
      <td>Result</td>
      <td>The desired business-related target/purpose</td>
    </tr>
    <tr>
      <td>Corrective actions (CANC/CORR)</td>
      <td>Description of corrective actions that are taken when a course ends with an error situation or with a resumption (with reference/link to corrective use case(s). For example, corrections or cancellations.</td>
    </tr>
    <tr>
      <td>Comments</td>
      <td>Any comments on the use case</td>
    </tr>
  </tbody>
</table>

**Table 2.** Overview of the elements included in the alternative use cases.

# 2 Overview of use cases

## 2.1 Overview of primary and alternative use cases

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>Incident</th>
      <th>Provider (S) use case</th>
      <th>Retriever (R) use case</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Stable</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>S1: Provide and Register Document [ITI-41 and ITI-42]</td>
      <td>S1</td>
      <td></td>
    </tr>
    <tr>
      <td>S1.A1: Request to document repository is flawed</td>
      <td>S1.A1</td>
      <td></td>
    </tr>
    <tr>
      <td>S1.A2: Request to document registry is flawed</td>
      <td>S1.A2</td>
      <td></td>
    </tr>
    <tr>
      <td>R1: Retrieve Stored Query (Stable/On-Demand) [ITI-18]</td>
      <td></td>
      <td>R1</td>
    </tr>
    <tr>
      <td>R2: Retrieve Document Set (Stable) [ITI-43]</td>
      <td></td>
      <td>R2</td>
    </tr>
    <tr>
      <td>On-Demand</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>S2: Register On-Demand Document Entry [ITI-61] – not mandatory to support</td>
      <td>S2</td>
      <td></td>
    </tr>
    <tr>
      <td>S2.A1: Request to document registry is flawed</td>
      <td>S2.A1</td>
      <td></td>
    </tr>
    <tr>
      <td>R3: Retrieve Document Set (On-Demand) [ITI-43]</td>
      <td></td>
      <td>R3</td>
    </tr>
  </tbody>
</table>

## 2.2 Corrective use cases

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>Incident</th>
      <th>Sender/provider (S) use case</th>
      <th>Receiver/retriever (R) use case</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>S.CORR: Update Document Set Replace (Stable) [ITI-57]</td>
      <td>S.CORR</td>
      <td></td>
    </tr>
    <tr>
      <td>S.CORR.A1: Request to document repository is flawed</td>
      <td>S.CORR.A1</td>
      <td></td>
    </tr>
    <tr>
      <td>S.CORR.A2: Request to document registry is flawed</td>
      <td>S.CORR.A2</td>
      <td></td>
    </tr>
    <tr>
      <td>S.CANC: Update Document Set Deprecate (Stable) [ITI-57]</td>
      <td>S.CANC</td>
      <td></td>
    </tr>
    <tr>
      <td>S.CANC.A1: Request to document registry is flawed</td>
      <td>S.CANC.A1</td>
      <td></td>
    </tr>
  </tbody>
</table>

# 3 Use cases

## 3.1 Provide documents

### 3.1.1 S1: Provide and Register Document [ITI-41 and ITI-42]

The use case S1, presented as a sequence diagram, can be found in Figure 2.

<figure>
  <img src="./figure-02.png" alt="Sequence diagram of use case S1" />
  <figcaption>Figure 2. Sequence diagram of use case S1.</figcaption>
</figure>

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>Field</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Use case S1</td>
      <td>Provide and Register Document [ITI-41 and ITI-42]</td>
    </tr>
    <tr>
      <td>Initiating part</td>
      <td>Content provider</td>
    </tr>
    <tr>
      <td>Purpose</td>
      <td>To submit one or more valid, stable document(s) and associated metadata.</td>
    </tr>
    <tr>
      <td>Starting Conditions/Prerequisites</td>
      <td>The content provider and document source are authorized and have access to share the document(s).</td>
    </tr>
    <tr>
      <td>Initiating event</td>
      <td>The content provider, based on a human decision or the application of a certain rule of automatic operation, wants to submit (a) stable document(s).</td>
    </tr>
    <tr>
      <td>Actions</td>
      <td>1. Document source collects one or more documents and associated metadata in a request.<br>2. Document source submits the document(s) and associated metadata in the request to the document repository.<br>3. Document repository processes the request and stores the document(s).<br>4. Document repository submits metadata for the document(s) in a request to document registry.<br>5. Document registry validates the provided metadata.<br>6. Document registry stores relevant metadata for each document.<br>7. Document registry returns a successful response to document repository.<br>8. Document repository returns a successful response to the document source.</td>
    </tr>
    <tr>
      <td>End result</td>
      <td>Document(s) and associated metadata are correctly submitted to the document repository and the document registry.</td>
    </tr>
    <tr>
      <td>Alternative actions</td>
      <td>S1.A1: Request to document repository is flawed<br>S1.A2: Request to document registry is flawed</td>
    </tr>
    <tr>
      <td>Corrective actions</td>
      <td>S.CORR<br>S.CANC</td>
    </tr>
    <tr>
      <td>Comments</td>
      <td>Created based on descriptions from IHE: https://profiles.ihe.net/ITI/TF/Volume2/ITI-41.html#3.41.4</td>
    </tr>
  </tbody>
</table>

#### 3.1.1.1 S1.A1: Request to document repository is flawed

The alternative use case S1.A1, presented as a sequence diagram, can be found in Figure 3.

<figure>
  <img src="./figure-03.png" alt="Sequence diagram for use case S1.A1" />
  <figcaption>Figure 3. Sequence diagram for use case S1.A1.</figcaption>
</figure>

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>Field</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Alternative use case S1.A1</td>
      <td>Request to document repository is flawed.</td>
    </tr>
    <tr>
      <td>Reference to the use case to which this use case is an alternative</td>
      <td>S1</td>
    </tr>
    <tr>
      <td>Actions</td>
      <td>1. Document source collects a document and associated metadata in a request<br>2. Document source submits the document and associated metadata in the request to the document repository<br>3. Document repository processes the request and identifies an error.<br>4. Document repository returns an error response to the document source</td>
    </tr>
    <tr>
      <td>End result</td>
      <td>A failure response is returned to the document source.</td>
    </tr>
    <tr>
      <td>Corrective actions</td>
      <td></td>
    </tr>
  </tbody>
</table>

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>Field</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Comments</td>
      <td>Action 3: According the IHE rules, the request is expected to be rejected in the following scenarios (https://profiles.ihe.net/ITI/TF/Volume2/ITI-41.html#3.41.4.1.3)<br><br>Submission must be rejected when:<br>- Hash attribute isn’t present in the metadata or if the value differs from the calculated hash of the received document.<br>- Size attribute isn’t present in the metadata or if the value differs from the octet count of the received document.<br>- Patient id is invalid.<br><br>Submission should be rejected when:<br>- DocumentEntry is included, but document content is missing (e.g. no Document element with matching id)<br><br>Submission may be rejected when:<br>- Document is included, but the DocumentEntry is missing.<br><br>Action 4: The response from the document repository should contain an errormessage, clearly describing why the request is invalid.</td>
    </tr>
  </tbody>
</table>

#### 3.1.1.2 S1.A2: Request to document registry is flawed

The alternative use case S1.A2, presented as a sequence diagram, can be found in Figure 4.

<figure>
  <img src="./figure-04.png" alt="Sequence diagram for use case S1.A2" />
  <figcaption>Figure 4. Sequence diagram for use case S1.A2.</figcaption>
</figure>

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>Field</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Alternative use case S1.A2</td>
      <td>Request to document registry is flawed.</td>
    </tr>
    <tr>
      <td>Reference to the use case to which this use case is an alternative</td>
      <td>S1</td>
    </tr>
    <tr>
      <td>Actions</td>
      <td>1. Document source collects one or more documents and associated metadata in a request.<br>2. Document source submits the document(s) and associated metadata in the request to the document repository.<br>3. Document repository processes the request and stores the document(s).<br>4. Document repository submits metadata for the document(s) in a request to document registry.<br>5. Document registry validates the provided metadata.<br>6. Document registry returns a response with an error or warning to the document repository.<br>7. Document repository returns a response to the document source including the errors or warnings from the registry.</td>
    </tr>
    <tr>
      <td>End result</td>
      <td>A failure response is returned to the document source.</td>
    </tr>
    <tr>
      <td>Corrective actions</td>
      <td></td>
    </tr>
    <tr>
      <td>Comments</td>
      <td></td>
    </tr>
  </tbody>
</table>

### 3.1.2 S2: Register On-Demand Document Entry [ITI-61] - not mandatory to support

The use case S2, presented as a sequence diagram, can be found in Figure 5.

<figure>
  <img src="./figure-05.png" alt="Sequence diagram for use case S2" />
  <figcaption>Figure 5. Sequence diagram for use case S2.</figcaption>
</figure>

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>Field</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Use case S2</td>
      <td>Register On-Demand Document Entry [ITI-61]</td>
    </tr>
    <tr>
      <td>Initiating part</td>
      <td>Content provider</td>
    </tr>
    <tr>
      <td>Purpose</td>
      <td>To register metadata concerning an On-Demand document in a document registry.</td>
    </tr>
    <tr>
      <td>Starting Conditions/Prerequisites</td>
      <td>The content provider and On-Demand document source are authorized and have access to share the metadata for an On-Demand document.</td>
    </tr>
    <tr>
      <td>Initiating event</td>
      <td>An On-Demand document source is triggered to register the document in the document registry.</td>
    </tr>
    <tr>
      <td>Actions</td>
      <td>1. On-Demand document source submits a request with metadata to the document registry.<br>2. Document registry validates the provided metadata<br>3. Document registry stores relevant metadata for the document.<br>4. Document registry returns a successful response to On-Demand document source</td>
    </tr>
    <tr>
      <td>End result</td>
      <td>Document registry contains relevant metadata, enabling document queries.</td>
    </tr>
    <tr>
      <td>Alternative actions</td>
      <td>S2.A1: Request to document registry is flawed</td>
    </tr>
    <tr>
      <td>Corrective actions</td>
      <td></td>
    </tr>
    <tr>
      <td>Comments</td>
      <td>Created based on descriptions from IHE: https://profiles.ihe.net/ITI/TF/Volume2/ITI-61.html#3.61 Not all metadata provided for stable documents is available for On-Demand documents, e.g. hash and size which cannot be calculated. See all exceptions here: https://profiles.ihe.net/ITI/TF/Volume2/ITI-61.html#3.61.4.1.2.</td>
    </tr>
  </tbody>
</table>

#### 3.1.2.1 S2.A1: Request to document registry is flawed

The alternative use case S2.A1, presented as a sequence diagram, can be found in Figure 6.

<figure>
  <img src="./figure-06.png" alt="Sequence diagram for use case S2.A1" />
  <figcaption>Figure 6. Sequence diagram for use case S2.A1.</figcaption>
</figure>

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>Field</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Alternative use case S2.A1</td>
      <td>Request to document registry is flawed.</td>
    </tr>
    <tr>
      <td>Reference to the use case to which this use case is an alternative</td>
      <td>S2</td>
    </tr>
    <tr>
      <td>Actions</td>
      <td>1. On-Demand document source submits a request with metadata to the document registry.<br>2. Document registry validates the provided metadata<br>3. Document registry rejects the metadata including a description of the error.<br>4.</td>
    </tr>
    <tr>
      <td>End result</td>
      <td>A failure response is returned to the document source.</td>
    </tr>
    <tr>
      <td>Corrective actions</td>
      <td></td>
    </tr>
    <tr>
      <td>Comments</td>
      <td>Action 3: After the registry has rejected the metadata, the document registry must roll back any changes made.</td>
    </tr>
  </tbody>
</table>

## 3.2 Retrieve documents

### 3.2.1 R1: Retrieve Stored Query (Stable/On-Demand) [ITI-18]

The use case R1, presented as a sequence diagram, can be found in Figure 7.

<figure>
  <img src="./figure-07.png" alt="Sequence diagram for use case R1" />
  <figcaption>Figure 7. Sequence diagram for use case R1.</figcaption>
</figure>

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>Field</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Use case R1</td>
      <td>Retrieve Stored Query (stable) [ITI-18]</td>
    </tr>
    <tr>
      <td>Initiating part</td>
      <td>Content retriever</td>
    </tr>
    <tr>
      <td>Purpose</td>
      <td>To identify if relevant document metadata is available in the document registry. ITI-18 is a predecessor for ITI-43.</td>
    </tr>
    <tr>
      <td>Starting Conditions/Prerequisites</td>
      <td>Document consumer wants to query and/or retrieve document metadata.</td>
    </tr>
    <tr>
      <td>Initiating event</td>
      <td>Document consumer is triggered to perform the query.</td>
    </tr>
    <tr>
      <td>Actions</td>
      <td>1. Document consumer identifies relevant search parameters<br>2. Document consumer submits the request to the document registry<br>3. Document registry verifies the included parameters.<br>4. Document registry returns the relevant metadata in a response to the document consumer for zero-to-many documents.</td>
    </tr>
    <tr>
      <td>End result</td>
      <td>The document consumer has received metadata for zero-to-many documents from the registry.</td>
    </tr>
    <tr>
      <td>Alternative actions</td>
      <td></td>
    </tr>
    <tr>
      <td>Corrective actions</td>
      <td></td>
    </tr>
    <tr>
      <td>Comments</td>
      <td>The request can be declined if an unknown query ID is used or required parameters are missing. https://profiles.ihe.net/ITI/TF/Volume2/ITI-18.html#3.18.4.1.3<br><br>Action 1: Relevant search parameters are at least patientId, formatCode and objectType. More search parameters may be included to specify the search.</td>
    </tr>
    <tr>
      <td>Field</td>
      <td>Description</td>
    </tr>
    <tr>
      <td>---</td>
      <td>---</td>
    </tr>
    <tr>
      <td>Use case R1</td>
      <td>Retrieve Stored Query (stable) [ITI-18]<br>Action 4: If no document is available, this information will be returned in the response from the document registry.</td>
    </tr>
  </tbody>
</table>

### 3.2.2 R2: Retrieve Document Set (Stable) [ITI-43]

The use case R2, presented as a sequence diagram, can be found in Figure 8.

<figure>
  <img src="./figure-08.png" alt="Sequence diagram for use case R2" />
  <figcaption>Figure 8. Sequence diagram for use case R2.</figcaption>
</figure>

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>Field</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Use case R2</td>
      <td>Retrieve Document Set (Stable) [ITI-43]</td>
    </tr>
    <tr>
      <td>Initiating part</td>
      <td>Content retriever</td>
    </tr>
    <tr>
      <td>Purpose</td>
      <td>To retrieve a (set of) document(s) from the document repository.</td>
    </tr>
    <tr>
      <td>Starting Conditions/Prerequisites</td>
      <td>An ITI-18 call has been performed with information about where to retrieve the requested document(s).</td>
    </tr>
    <tr>
      <td>Initiating event</td>
      <td>The document consumer has obtained necessary document metadata information from use case R1.</td>
    </tr>
    <tr>
      <td>Actions</td>
      <td>1. Document consumer submits a request to the document repository based on the information returned in use case R1.<br>2. Document repository validates the request<br>3. Document repository returns the requested document(s) in a response</td>
    </tr>
    <tr>
      <td>End result</td>
      <td>The document consumer has received the document(s) from the document repository.</td>
    </tr>
    <tr>
      <td>Alternative actions</td>
      <td></td>
    </tr>
    <tr>
      <td>Corrective actions</td>
      <td></td>
    </tr>
    <tr>
      <td>Comments</td>
      <td>Action 1: HomecommunityId, repositoryUniqueId, and documentUniqueId must be included in the request. https://profiles.ihe.net/ITI/TF/Volume2/ITI-43.html#3.43.4.1.2<br><br>Action 3: The document repository must return a response with an error code if the requested documents cannot be retrieved or if the request is invalid. https://profiles.ihe.net/ITI/TF/Volume2/ITI-43.html#3.43.4.1.3</td>
    </tr>
  </tbody>
</table>

### 3.2.3 R3: Retrieve Document Set (On-Demand) [ITI-43]

The use case R3, presented as a sequence diagram, can be found in Figure 9.

<figure>
  <img src="./figure-09.png" alt="Sequence diagram for use case R3" />
  <figcaption>Figure 9. Sequence diagram for use case R3.</figcaption>
</figure>

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>Field</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Use case R3</td>
      <td>Retrieve Document Set (On-Demand) [ITI-43]</td>
    </tr>
    <tr>
      <td>Initiating part</td>
      <td>Content retriever</td>
    </tr>
    <tr>
      <td>Purpose</td>
      <td>To retrieve a (set of) document(s) from the On-Demand document source.</td>
    </tr>
    <tr>
      <td>Starting Conditions/Prerequisites</td>
      <td>An ITI-18 call has been performed with information about where to retrieve the requested document(s).</td>
    </tr>
    <tr>
      <td>Initiating event</td>
      <td>The document consumer has obtained necessary document(s) metadata information from use case R1.</td>
    </tr>
    <tr>
      <td>Actions</td>
      <td>1. Document consumer submits a request to the On-Demand document source based on the information returned in use case R1.<br>2. On-Demand document source validates the request.<br>3. The On-Demand document is produced by the On-Demand document source.<br>4. On-Demand document source returns the requested document(s) in a response.</td>
    </tr>
    <tr>
      <td>End result</td>
      <td>The document consumer has received document(s) from the requested On-Demand document source.</td>
    </tr>
    <tr>
      <td>Alternative actions</td>
      <td></td>
    </tr>
    <tr>
      <td>Corrective actions</td>
      <td></td>
    </tr>
    <tr>
      <td>Comments</td>
      <td>Action 1: HomecommunityId, repositoryUniqueId, and documentUniqueId must be included in the request. https://profiles.ihe.net/ITI/TF/Volume2/ITI-43.html#3.43.4.1.2<br><br>Action 2: The On-Demand document source must return a response with an error code if the requested documents cannot be retrieved or if the request is invalid. https://profiles.ihe.net/ITI/TF/Volume2/ITI-43.html#3.43.4.1.3</td>
    </tr>
  </tbody>
</table>

# 4 Corrective use cases

## 4.1 Replacement

### 4.1.1 S.CORR: Update Document Set Replace (Stable) [ITI-57]

The use case S.CORR, presented as a sequence diagram, can be found in Figure 10.

<figure>
  <img src="./figure-10.png" alt="Sequence diagram for use case S.CORR" />
  <figcaption>Figure 10. Sequence diagram for use case S.CORR.</figcaption>
</figure>

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>Field</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Use case S.CORR</td>
      <td>Update Document Set (stable) [ITI-57]</td>
    </tr>
    <tr>
      <td>Initiating part</td>
      <td>Content provider</td>
    </tr>
    <tr>
      <td>Purpose</td>
      <td>To replace an existing document, including its metadata in the document repository and registry.</td>
    </tr>
    <tr>
      <td>Starting Conditions/Prerequisites</td>
      <td>A document already exists in the document repository and requires a replacement. The document administrator has the necessary authorization and access to perform the replacement.</td>
    </tr>
    <tr>
      <td>Initiating event</td>
      <td>The content provider and/ or document administrator identifies the need to replace an existing document</td>
    </tr>
    <tr>
      <td>Actions</td>
      <td>1. Document administrator prepares the updated document and associated metadata.<br>2. Document administrator sends an update request to the document repository with the updated document and associated metadata.<br>3. Document repository processes the request<br>4. Document repository sends the update request to the document registry.<br>5. Document registry validates the updated metadata<br>6. Document registry creates a new set of metadata.<br>7. Document registry updates the availabilityStatus to ‘deprecated’ for the document being replaced.<br>8. Document registry returns a successful response to the document repository<br>9. Document repository replaces the documents.<br>10. Document repository returns a successful response to the document administrator.</td>
    </tr>
    <tr>
      <td>End result</td>
      <td>The document and its metadata are successfully replaced. The replaced document now has the availabilityStatus ‘deprecated’. The deprecated document still exists.</td>
    </tr>
    <tr>
      <td>Alternative actions</td>
      <td>S.CORR.A1: Request to document repository is flawed<br>S.CORR.A2: Request to document registry is flawed</td>
    </tr>
    <tr>
      <td>Comments</td>
      <td>https://profiles.ihe.net/ITI/TF/Volume2/ITI-57.html</td>
    </tr>
  </tbody>
</table>

#### 4.1.1.1 S.CORR.A1: Request to document repository is flawed

The alternative use case S.CORR.A1, presented as a sequence diagram, can be found in Figure 11.

<figure>
  <img src="./figure-11.png" alt="Sequence diagram for use case S.CORR.A1" />
  <figcaption>Figure 11. Sequence diagram for use case S.CORR.A1.</figcaption>
</figure>

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>Field</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Alternative use case</td>
      <td>Request to document repository is flawed.</td>
    </tr>
    <tr>
      <td>S.CORR.A1</td>
      <td></td>
    </tr>
    <tr>
      <td>Reference to the use case to which this use case is an alternative</td>
      <td>S.CORR</td>
    </tr>
    <tr>
      <td>Actions</td>
      <td>1. Document administrator prepares the updated document and associated metadata.<br>2. Document administrator sends an update request to the document repository with the updated document and associated metadata.<br>3. Document repository processes the request and finds the request invalid.<br>4. Document repository rejects the request for update.</td>
    </tr>
    <tr>
      <td>End result</td>
      <td>A failure response is returned to the document administrator.</td>
    </tr>
    <tr>
      <td>Corrective actions</td>
      <td></td>
    </tr>
    <tr>
      <td>Comments</td>
      <td></td>
    </tr>
  </tbody>
</table>

#### 4.1.1.2 S.CORR.A2: Request to document registry is flawed

The alternative use case S.CORR.A2, presented as a sequence diagram, can be found in Figure 12.

<figure>
  <img src="./figure-12.png" alt="Sequence diagram for use case S.CORR.A2" />
  <figcaption>Figure 12. Sequence diagram for use case S.CORR.A2.</figcaption>
</figure>

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>Field</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Alternative use case</td>
      <td>Request to document registry is flawed.</td>
    </tr>
    <tr>
      <td>S.CORR.A2</td>
      <td></td>
    </tr>
    <tr>
      <td>Reference to the use case to which this use case is an alternative</td>
      <td>S.CORR</td>
    </tr>
    <tr>
      <td>Actions</td>
      <td>1. Document administrator prepares the updated document and associated metadata.<br>2. Document administrator sends an update request to the document repository with the updated document and associated metadata.<br>3. Document repository processes the request<br>4. Document repository sends the update request to the document registry.<br>5. Document registry validates request and metadata and finds one or both invalid.<br>6. Document registry rejects the request to the document repository<br>7. Document repository returns the failure response to the document administrator.</td>
    </tr>
    <tr>
      <td>End result</td>
      <td>A failure response is returned to the document administrator.</td>
    </tr>
    <tr>
      <td>Corrective actions</td>
      <td></td>
    </tr>
    <tr>
      <td>Comments</td>
      <td></td>
    </tr>
  </tbody>
</table>

## 4.2 Deprecate

### 4.2.1 S.CANC: Update Document Set Deprecate (Stable) [ITI-57]

The use case S.CANC, presented as a sequence diagram, can be found in Figure 13.

<figure>
  <img src="./figure-13.png" alt="Sequence diagram for use case S.CANC" />
  <figcaption>Figure 13. Sequence diagram for use case S.CANC.</figcaption>
</figure>

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>Field</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Use case<br>S.CANC</td>
      <td>Update Document Set Deprecate (stable) [ITI-57]</td>
    </tr>
    <tr>
      <td>Initiating part</td>
      <td>Document Administrator</td>
    </tr>
    <tr>
      <td>Purpose</td>
      <td>To deprecate a document.</td>
    </tr>
    <tr>
      <td>Starting Conditions/Prerequisites</td>
      <td>A document already exists in the document repository. The document administrator has the necessary authorization and access to perform the deprecation.</td>
    </tr>
    <tr>
      <td>Initiating event</td>
      <td>The content provider and/or document administrator wants to deprecate an existing document.</td>
    </tr>
    <tr>
      <td>Actions</td>
      <td>1. Document administrator sends a request to document registry deprecate a document that is placed in a document repository.<br>2. Document registry processes the request.<br>3. Document registry updates the availabilityStatus to ‘deprecated’ for the document.<br>4. Document registry returns a successful response to the document administrator.</td>
    </tr>
    <tr>
      <td>End result</td>
      <td>The document is marked as deprecated.</td>
    </tr>
    <tr>
      <td>Alternative actions</td>
      <td>S.CANC.A1: Request to document registry is flawed</td>
    </tr>
    <tr>
      <td>Comments</td>
      <td>https://profiles.ihe.net/ITI/TF/Volume2/ITI-57.html</td>
    </tr>
  </tbody>
</table>

#### 4.2.1.1 S.CANC.A1: Request to document registry is flawed

The alternative use case S.CANC.A1, presented as a sequence diagram, can be found in Figure 14.

<figure>
  <img src="./figure-14.png" alt="Sequence diagram for use case S.CANC.A1" />
  <figcaption>Figure 14. Sequence diagram for use case S.CANC.S1.</figcaption>
</figure>

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>Field</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Alternative use case</td>
      <td>Request to document registry is flawed.</td>
    </tr>
    <tr>
      <td>S.CANC.A1</td>
      <td></td>
    </tr>
    <tr>
      <td>Reference to the use case to which this use case is an alternative</td>
      <td>S.CANC</td>
    </tr>
    <tr>
      <td>Actions</td>
      <td>1. Document administrator sends a request to document registry deprecate a document that is placed in a document repository.<br>2. Document registry processes the request.<br>3. Document registry rejects the request to the document administrator.</td>
    </tr>
    <tr>
      <td>End result</td>
      <td>A failure response is returned to the document administrator.</td>
    </tr>
    <tr>
      <td>Corrective actions</td>
      <td></td>
    </tr>
    <tr>
      <td>Comments</td>
      <td></td>
    </tr>
  </tbody>
</table>

# 5 Rules for the systems on which the use cases are based

## 5.1 Rules for the provider of documents on which the use cases are based

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>ID</th>
      <th>Rule</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>PD01</td>
      <td>Valid metadata, document and request must be provided.</td>
    </tr>
    <tr>
      <td>PD02</td>
      <td>Only documents for valid Danish CPR-numbers must be provided.</td>
    </tr>
  </tbody>
</table>

## 5.2 Rules for the retriever of documents on which the use cases are based

<table border="1" cellspacing="0" cellpadding="6">
  <thead>
    <tr>
      <th>ID</th>
      <th>Rule</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>RD01</td>
      <td>Retrieving or querying document consumers must obey patient privacy legislation.</td>
    </tr>
  </tbody>
</table>
