Instance: 42cb9200-f421-4d08-8391-7d51a2503cb4
InstanceOf: MedComDocumentPractitioner
Title: "XDS document bundled Author Person"
Description: "Instance of a XDS document bundled  author person"
Usage: #example
* name.given = "Sidsel"
* name.family = "Andersen"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a6c11dab-a9e9-46b8-9bb3-fe06d6587e07"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Sidsel Andersen</div>"

Instance: 8fa7df76-bec2-4fe2-9a44-750030a0eda0
InstanceOf: MedComDocumentOrganization
Title: "XDS document bundled Author Organization"
Description: "Instance of a XDS document bundled  author organization"
Usage: #example
* identifier[SOR-ID].value = "61741000016007"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægerne Hasseris Bymidte"
* text.status = #generated  
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Lægerne Hasseris Bymidte, SOR-ID: 61741000016007</div>"

Instance: 37628912-7816-47a3-acd8-396b610be142
InstanceOf: MedComDocumentPatient
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
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Else Test Lauridsen, CPR: 0201919990</div>"

