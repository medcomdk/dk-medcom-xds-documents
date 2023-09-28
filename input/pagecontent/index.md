# Metadata for CDA Document

This implementation guide includes a core profile of the DocumentReference resource. The intension of this IG is to gather all general constraints in regards to CDA-metadata. Therefore several

## Maping from XDS metadata to FHIR Document Reference resource

The following mapping origins from [HL7's mapping between XDS metadata to FHIR DocumentReference resource](https://www.hl7.org/fhir/documentreference-mappings.html#xds). The list of ValueSets is added. These restrictions are also defined in the profile, which can be found under the tab 'Artifacts'. 

HomeCommunityId is not included in the mapping, why the [extension MedCom XDS HomeCommunityID](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata-core/StructureDefinition-medcom-xds-homecommunityid-extension.html). The extension can be found under the tab 'Artifacts' and is included in the profile CoreDocumentReference

## CodeSystems and ValueSets
For each coded element in the DocumentReference profil, a ValueSet is included with a possible set of codes for each type of document. Codes included in the ValueSets origin one from the systems listed below. 

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-c3ow{border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-fymr{border-color:inherit;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-7btt{border-color:inherit;font-weight:bold;text-align:center;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-fymr">OID</th>
    <th class="tg-7btt">Name</th>
    <th class="tg-fymr">Description</th>
    <th class="tg-7btt">OID Owner</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0pky">1.2.208.184.100.9</td>
    <td class="tg-c3ow">classcode</td>
    <td class="tg-0pky">Danish Integrating the Healthcare Enterprise (IHE) metadata class codes</td>
    <td class="tg-c3ow">MedCom</td>
  </tr>
  <tr>
    <td class="tg-0pky">1.2.208.184.100.1</td>
    <td class="tg-c3ow">message-codes</td>
    <td class="tg-0pky">Message codes administered by MedCom</td>
    <td class="tg-c3ow">MedCom</td>
  </tr>
  <tr>
    <td class="tg-0pky">1.2.208.184.100.10</td>
    <td class="tg-c3ow">formatcode</td>
    <td class="tg-0pky">Danish Integrating the Healthcare Enterprise (IHE) metadata format codes</td>
    <td class="tg-c3ow">MedCom</td>
  </tr>
  <tr>
    <td class="tg-0pky">2.16.840.1.113883.6.96</td>
    <td class="tg-c3ow">SCT</td>
    <td class="tg-0pky">Systematized Nomenclature Of MEDicine (SNOMED) Clinical Terms (CT)</td>
    <td class="tg-c3ow">HL7</td>
  </tr>
  <tr>
    <td class="tg-0pky">2.16.840.1.113883.6.1</td>
    <td class="tg-c3ow">LOINC</td>
    <td class="tg-0pky">Logical Observation Identifier Names and Codes (LOINC)</td>
    <td class="tg-c3ow">HL7</td>
  </tr>
  <tr>
    <td class="tg-0pky">2.16.840.1.113883.5.79</td>
    <td class="tg-c3ow">mediaType</td>
    <td class="tg-0pky">mediaType</td>
    <td class="tg-c3ow">HL7</td>
  </tr>
  <tr>
    <td class="tg-0pky">2.16.840.1.113883.6.121</td>
    <td class="tg-c3ow">ieft3066</td>
    <td class="tg-0pky">Tags for the Identification of Languages</td>
    <td class="tg-c3ow">HL7</td>
  </tr>
  <tr>
    <td class="tg-0pky">2.16.840.1.113883.5.25</td>
    <td class="tg-c3ow">Confidentiality</td>
    <td class="tg-0pky">Confidentiality</td>
    <td class="tg-c3ow">HL7</td>
  </tr>
  <tr>
    <td class="tg-0pky">1.2.208.176.2.4</td>
    <td class="tg-c3ow">SKS</td>
    <td class="tg-0pky">Danish collection of code systems in national health reporting (in Danish, Sundhedsvæsenets Klassifikations System (SKS))</td>
    <td class="tg-c3ow">Danish Health Data Authority</td>
  </tr>
  <tr>
    <td class="tg-0pky">1.2.208.176.2.1</td>
    <td class="tg-c3ow">NPU</td>
    <td class="tg-0pky">Nomenclature for Properties and Units (NPU) terminology in Danish</td>
    <td class="tg-c3ow">Danish Health Data Authority</td>
  </tr>
  <tr>
    <td class="tg-0pky">1.2.208.176.7.3.1</td>
    <td class="tg-c3ow">schema-list</td>
    <td class="tg-0pky">Questionnaires used in the Danish Patient Reported Outcome (PRO)</td>
    <td class="tg-c3ow">Danish Health Data Authority</td>
  </tr>
  <tr>
    <td class="tg-0pky">1.2.208.176.8.1</td>
    <td class="tg-c3ow">ihe</td>
    <td class="tg-0pky">Integrating the Healthcare Enterprise (IHE) cross[X]-enterprise Document Sharing (XDS) domain</td>
    <td class="tg-c3ow">Danish Health Data Authority</td>
  </tr>
</tbody>
</table>

## Examples

| **Example** | **Purpose** | **Profile**|
|---|---|---|
| [APDDKDocumentReference](./DocumentReference-94e65db8-2f0c-4a2c-a7c9-06a160d59a12) | Illustrate a regular DocumentReference for APD-DK | APDDKDocumentReference| 
| [APDDKDocumentReference](./DocumentReference-313a2475-3079-4054-b635-a96dea305877) | Illustrate an invalid DocumentReference for APD-DK | APDDKDocumentReference| 
| [FutureAPDDKDocumentReference](DocumentReference-f2e1afb5-060e-41bf-859f-410b05b5dba4) | Illustrate a DocumentReference for a future APD-DK v. 2.9.0| FutureAPDDKDocumentReference| 
| [QRDDKDocumentReference](DocumentReference-50d6fc3c-d95a-4d12-8e61-8d70584c1f4e) | Illustrate a regular DocumentReference for QRD-DK | QRDDKDocumentReference| 