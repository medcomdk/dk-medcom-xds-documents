CodeSystem: MedComMessageCodesCS
Id: MedComMessageCodesCS
Title: "MedComMessageCodesCS"
Description: "Codesystem containing the type codes for HomeCareObservation documents (DA: Kommunale Prøvesvar)."
* ^url = "urn:oid:1.2.208.184.100.1"
* ^identifier.value = "1.2.208.184.100.1"
* ^status = #active
* #HCOM "HomeCareObservation message"

ValueSet: MedComMessageCodesVS
Id: MedComMessageCodesVS
Title: "MedComMessageCodesVS"
Description: "ValueSet containing the type codes for HomeCareObservation documents (DA: Kommunale Prøvesvar)."
* ^experimental = false
* ^version = "1.1.0"
* ^status = #active
* ^date = "2026-04-28"
* $loinc#11450-4 "Problem list - Reported"
* include codes from system MedComMessageCodesCS

// TODO: Remember to archive the document repo and IG once this IG is finished

CodeSystem: MedComIHE_ClassCode_TEMP
Id: MedCom-ihe-classcode-CS-TEMP
Title: "DK IHE ClassCode_TEMP"
Description: "_TEMP Danish Integrating the Healthcare Enterprise (IHE) metadata class codes"
* ^experimental = false
* ^version = "1.1.0"
* ^status = #active
* ^date = "2022-01-26"
* ^caseSensitive = false
* ^identifier.value = "1.2.208.184.100.9"
* #001 "Klinisk rapport"
* #006 "Workflow"

ValueSet: MedComIHE_CoreClassCode_TEMP
Id: MedCom-ihe-core-classcode-VS-TEMP
Title: "IHE ClassCode_TEMP"
Description: "_TEMP Value set for the classCode attribute. classCode used in DK IHE Document sharing"
* ^experimental = false
* ^version = "1.1.0"
* ^status = #active
* ^date = "2022-01-26"
* include codes from system MedComIHE_ClassCode_TEMP

ValueSet: MedComIHE_CoreMimeType_TEMP
Id: MedCom-ihe-core-mimetype-VS-TEMP
Title: "IHE MimeType_TEMP"
Description: "_TEMP Values for the document metadata attribute mimeType"
* ^experimental = false
* ^version = "1.0.2"
* ^status = #active
* ^date = "2015-01-04"
* $IANAMediaOID#text/xml "text/xml"
* $IANAMediaOID#application/fhir+json "application/fhir+json"
* $IANAMediaOID#application/fhir+xml "application/fhir+xml"

ValueSet: MedComIHE_CoreLanguageCode_TEMP
Id: MedCom-ihe-core-languagecode-VS-TEMP
Title: "IHE LanguageCode_TEMP"
Description: "_TEMP Tags for the Identification of Languages (RFC 3066)"
* ^experimental = false
* ^version = "1.0.2"
* ^status = #active
* ^date = "2015-01-01"
* $IANALanguageOID#da-DK "Danish (Denmark)"
* $IANALanguageOID#da "Danish"

CodeSystem: MedComFormatCodeCS
Id: MedComFormatCodeCS
Title: "MedComFormatCodeCS"
Description: "Codesystem containing the format codes for HomeCareObservation documents (DA: Kommunale Prøvesvar)."
* ^status = #active
* #urn:ad:dk:medcom:msg:hco-v1.1:full "DK HomeCareObservation message v1.1"
* #urn:ad:dk:medcom:msg:hco-v1.2:full "DK HomeCareObservation message v1.2"
* #urn:ad:dk:medcom:plr-v1.0:full "DK PLR schema"

ValueSet: MedComFormatCodeVS
Id: MedComFormatCodeVS
Title: "MedComFormatCodeVS"
Description: "Valueset containing the format codes for HomeCareObservation documents (DA: Kommunale Prøvesvar)."
* include codes from system MedComFormatCodeCS

ValueSet: MedComIHE_CoreHealthcareFacilityTypeCode_TEMP
Id: MedCom-ihe-core-HealthcareFacilityTypeCode-VS-TEMP
Title: "IHE HealthcareFacilityTypeCode_TEMP"
Description: "_TEMP Value set for healthcare facility type code represents the type of organizational setting of the clinical encounter during which the documented act occurred."
* ^experimental = false
* ^version = "1.0.2"
* ^status = #active
* ^date = "2024-01-19"
* $DanishSnomed#557511000005107 "akupunkturklinik"
* $DanishSnomed#550871000005101 "akutmodtageenhed"
* $DanishSnomed#394761003 "almen lægepraksis"
* $DanishSnomed#264372000 "apotek"
* $DanishSnomed#557501000005109 "apoteksfilial"
* $DanishSnomed#554851000005102 "asylcenter"
* $DanishSnomed#557531000005103 "bandagistklinik"
* $DanishSnomed#20078004 "behandlingscenter for stofmisbrugere"
* $DanishSnomed#722173008 "behandlingsenhed i fængsel eller arresthus"
* $DanishSnomed#309964003 "billeddiagnostisk enhed"
* $DanishSnomed#554221000005108 "bosted"
* $DanishSnomed#56781000005109 "center for misbrugsbehandling"
* $DanishSnomed#557881000005104 "COVID-19-testenhed"
* $DanishSnomed#554031000005103 "diætistklinik"
* $DanishSnomed#557891000005101 "enhed for aktivitetstilbud"
* $DanishSnomed#546821000005103 "ergoterapiklinik"
* $DanishSnomed#702871004 "fertilitetsklinik"
* $DanishSnomed#554061000005105 "fodterapeutklinik"
* $DanishSnomed#557901000005102 "forebyggende hjemmebesøgsenhed"
* $DanishSnomed#550861000005106 "fysioterapi- og ergoterapiklinik"
* $DanishSnomed#547011000005103 "fysioterapiklinik"
* $DanishSnomed#546811000005109 "genoptræningsenhed"
* $DanishSnomed#554881000005108 "handicap- og psykiatrienhed"
* $DanishSnomed#554861000005100 "handicapenhed"
* $DanishSnomed#554821000005109 "hjemmeplejeenhed"
* $DanishSnomed#550621000005101 "hjemmesygeplejeenhed"
* $DanishSnomed#284546000 "hospice"
* $DanishSnomed#22232009 "hospital"
* $DanishSnomed#702824005 "hørecenter"
* $DanishSnomed#309904001 "intensivenhed"
* $DanishSnomed#557591000005104 "internetbaseret sundhedsydelse"
* $DanishSnomed#554411000005101 "jobcenter"
* $DanishSnomed#550631000005103 "jordemoderklinik"
* $DanishSnomed#550641000005106 "kiropraktorklinik"
* $DanishSnomed#557521000005101 "klinik for alternativ behandling"
* $DanishSnomed#550851000005109 "klinisk enhed"
* $DanishSnomed#547211000005108 "kommune"
* $DanishSnomed#557561000005105 "konsulentvirksomhed"
* $DanishSnomed#557541000005106 "kosmetisk klinik"
* $DanishSnomed#550651000005108 "lægelaboratorium"
* $DanishSnomed#550661000005105 "lægevagt"
* $DanishSnomed#551611000005102 "operationsgang"
* $DanishSnomed#557581000005102 "optikervirksomhed"
* $DanishSnomed#557671000005101 "osteopatiklinik"
* $DanishSnomed#309939001 "palliativ enhed"
* $DanishSnomed#42665001 "plejehjem"
* $DanishSnomed#550891000005100 "privat"
* $DanishSnomed#554211000005102 "præhospitalsenhed"
* $DanishSnomed#554871000005105 "psykiatrienhed"
* $DanishSnomed#550711000005101 "psykologisk rådgivningsklinik"
* $DanishSnomed#556841000005105 "pædagogisk psykologisk rådgivning (PPR)"
* $DanishSnomed#702916001 "rehabiliteringsenhed"
* $DanishSnomed#225728007 "skadestue"
* $DanishSnomed#550671000005100 "speciallægepraksis"
* $DanishSnomed#264361005 "sundhedscenter"
* $DanishSnomed#554041000005106 "sundhedsforvaltning"
* $DanishSnomed#554021000005101 "sundhedsplejen"
* $DanishSnomed#554071000005100 "sygehusapotek"
* $DanishSnomed#703069008 "sygeplejeklinik"
* $DanishSnomed#550681000005102 "tandlægepraksis"
* $DanishSnomed#550691000005104 "tandplejeklinik"
* $DanishSnomed#550701000005104 "tandteknisk klinik"
* $DanishSnomed#554231000005106 "vaccinationsklinik"
* $DanishSnomed#554051000005108 "zoneterapiklinik"
* $DanishSnomed#550811000005108 "administrativ enhed"

ValueSet: MedComIHE_CorePracticeSettingCode_TEMP
Id: MedCom-ihe-core-PracticeSettingCode-VS-TEMP
Title: "IHE PracticeSettingCode_TEMP"
Description: "_TEMP Values used for the document metadata attribute practiceSettingCode, which is an attribute specifying the clinical specialty where the act that resulted in the document was performed (e.g., Family Practice, Laboratory, Radiology). The value set is based on a subset of the code list from the SOR lookup table 'SOR-Kliniske specialer' (https://sor.sum.dsdn.dk/lookupdata/#clinical_speciality, accessable on Sundhedsdatanettet (SDN)), which is based on SNOMED codes. "
* ^experimental = false
* ^version = "1.0.1"
* ^status = #active
* ^date = "2024-06-20"
* $DanishSnomed#773568002 "akutmedicin"
* $DanishSnomed#408443003 "almen medicin"
* $DanishSnomed#394577000 "anæstesiologi"
* $DanishSnomed#394821009 "arbejdsmedicin"
* $DanishSnomed#394588006 "børne_ og ungdomspsykiatri"
* $DanishSnomed#394582007 "dermato_venerologi"
* $DanishSnomed#394914008 "diagnostisk radiologi"
* $DanishSnomed#394583002 "endokrinologi"
* $DanishSnomed#394811001 "geriatri"
* $DanishSnomed#394585009 "gynækologi og obstetrik"
* $DanishSnomed#408472002 "hepatologi"
* $DanishSnomed#394803006 "hæmatologi"
* $DanishSnomed#394807007 "infektionsmedicin"
* $DanishSnomed#419192003 "intern medicin"
* $DanishSnomed#394579002 "kardiologi"
* $DanishSnomed#408463005 "karkirurgi"
* $DanishSnomed#394609007 "kirurgi"
* $DanishSnomed#551411000005104 "kirurgisk gastroenterologi"
* $DanishSnomed#394596001 "klinisk biokemi"
* $DanishSnomed#394600006 "klinisk farmakologi"
* $DanishSnomed#394601005 "klinisk fysiologi og nuklearmedicin (snomed: klinisk fysiologi)"
* $DanishSnomed#394580004 "klinisk genetik"
* $DanishSnomed#421661004 "klinisk immunologi"
* $DanishSnomed#408454008 "klinisk mikrobiologi"
* $DanishSnomed#394809005 "klinisk neurofysiologi"
* $DanishSnomed#394592004 "klinisk onkologi"
* $DanishSnomed#418112009 "lungesygdomme"
* $DanishSnomed#394805004 "medicinsk allergologi"
* $DanishSnomed#394584008 "medicinsk gastroenterologi"
* $DanishSnomed#394589003 "nefrologi"
* $DanishSnomed#394610002 "neurokirurgi"
* $DanishSnomed#394591006 "neurologi"
* $DanishSnomed#394812008 "odontologi (snomed: odontologiske specialer)"
* $DanishSnomed#394594003 "oftalmologi"
* $DanishSnomed#394608004 "ortodonti"
* $DanishSnomed#394801008 "ortopædisk kirurgi"
* $DanishSnomed#394604002 "oto_rhino_laryngologi"
* $DanishSnomed#394915009 "patologisk anatomi og cytologi"
* $DanishSnomed#394611003 "plastikkirurgi"
* $DanishSnomed#394587001 "psykiatri"
* $DanishSnomed#394537008 "pædiatri"
* $DanishSnomed#394810000 "reumatologi"
* $DanishSnomed#394581000 "samfundsmedicin"
* $DanishSnomed#394605001 "tand_, mund_ og kæbekirurgi"
* $DanishSnomed#394603008 "thoraxkirurgi"
* $DanishSnomed#408448007 "tropemedicin"
* $DanishSnomed#394612005 "urologi"
* $DanishSnomed#658171000005102 "hjemmepleje"
* $DanishSnomed#658161000005107 "hjemmesygepleje"
* $DanishSnomed#658151000005105 "sundhedsfremme og forebyggelse"
* $DanishSnomed#658191000005101 "sundhedspleje"
* $DanishSnomed#658201000005103 "kommunal tandpleje"
* $DanishSnomed#658141000005108 "genoptræning efter hospitalsophold"
* $DanishSnomed#658181000005104 "hjælpemiddelområdet"

CodeSystem: MedComIHE_HomeCommunityId_TEMP
Id: MedCom-ihe-homeCommunityId-CS-TEMP
Title: "_TEMP IHE XDS Affinity Domain"
Description: "_TEMPIHE XDS Affinity Domains who has agreed to share healthcare related documents in Denmark"
* ^experimental = false
* ^version = "1.0.2"
* ^status = #active
* ^date = "2020-08-21"
* ^caseSensitive = false
* #1.2.208.176.8.1 "Common Danish IHE XDS domain. Integrating the Healthcare Enterprise (IHE) cross[X]-enterprise Document Sharing (XDS) domain" 
* #1.2.208.193.100 "Primary healthcare domain"

ValueSet: MedComIHE_CoreDkHomeCommunityId_TEMP
Id: MedCom-ihe-core-homeCommunityId-VS-TEMP
Title: "_TEMP IHE HomeCommunityId"
Description: "_TEMP List of operational and in production home communities (XCA) in Danish Document Sharing"
* ^experimental = false
* ^version = "1.0.2"
* ^status = #active
* ^date = "2020-08-21"
* MedComIHE_HomeCommunityId_TEMP#1.2.208.176.8.1 "Common Danish IHE XDS domain. Integrating the Healthcare Enterprise (IHE) cross[X]-enterprise Document Sharing (XDS) domain"
* MedComIHE_HomeCommunityId_TEMP#1.2.208.193.100 "Primary healthcare domain"