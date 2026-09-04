### Scope and usage 

The MedComDocumentPatient profile describes information about a patient or citizen used in a MedComs Document standard.
The MedComDocumentPatient is inherited from the [DkCorePatient](https://hl7.dk/fhir/core/3.2.0/StructureDefinition-dk-core-patient.html) profile defined by HL7 Denmark. It does not inherit from MedComCorePatient, as more elements, than desired for this purpose, are marked with MustSupport.

#### Required information

There are certain requirements to which data **MUST** be present in a FHIR document. These requirements come from the IHE XDS metadata standard (sourcePatientInfo attribute) that requires for a Danish CPR-number (unique identifier), given and family name, birthdate and gender to be present. Therefore, this information has a cardinality of 1.

Please read the guidance on the [Governance page](governance.html) for information on how to handle name and address protection (DA: navne- og adressebeskyttelse).

It is not allowed to add a replacement-CPR (Danish: erstatningsCPR), as this is not supported in the infrastructure.

#### Mapping of gender codes
In the [XDS-metadata standard](https://medcomfhir.dk/ig/xdsmetadata) there are three allowed codes to represent the patient's gender, whereas the [AdministrativeGender ValueSet](http://hl7.org/fhir/R4/valueset-administrative-gender.html) in this profile allows four codes. The code 'unknown' from the AdministrativeGender ValueSet must not be used. This is because the code 'other' maps more directly to the code 'undifferentiated' in the XDS-metadata standard. To support this, an invariant is added to the Patient.gender element. 

The mapping is shown below. 
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg"><thead>
  <tr>
    <th class="tg-0pky">XDS-metadata standard</th>
    <th class="tg-0pky">MedComDocumentPatient</th>
  </tr></thead>
<tbody>
  <tr>
    <td class="tg-0pky">female</td>
    <td class="tg-0pky">female</td>
  </tr>
  <tr>
    <td class="tg-0pky">male</td>
    <td class="tg-0pky">male</td>
  </tr>
  <tr>
    <td class="tg-0pky">undifferentiated</td>
    <td class="tg-0pky">other</td>
  </tr>
</tbody>
</table>