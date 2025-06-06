Instance: 42cb9200-f421-4d08-8391-7d51a2503cb4
InstanceOf: MedComCoreDocumentPractitioner
Title: "XDS document bundled Author Person"
Description: "Instance of a XDS document bundled  author person"
Usage: #example
* name.given = "Sidsel"
* name.family = "Andersen"

Instance: 8fa7df76-bec2-4fe2-9a44-750030a0eda0
InstanceOf: MedComCoreDocumentOrganization
Title: "XDS document bundled Author Organization"
Description: "Instance of a XDS document bundled  author organization"
Usage: #example
* identifier[SOR-ID].value = "61741000016007"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægerne Hasseris Bymidte"

Instance: 37628912-7816-47a3-acd8-396b610be142
InstanceOf: MedComCoreDocumentPatient
Title: "XDS document bundled Source Patient"
Description: "Instance of a XDS document bundled  source patient"
Usage: #example
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "0201919990"
* name[official].use = #official
* name[official].family = "Lauridsen"
* name[official].given[0] = "Else"
* name[official].given[+] = "Test"
* gender = #female
* birthDate = "1991-02-02"
