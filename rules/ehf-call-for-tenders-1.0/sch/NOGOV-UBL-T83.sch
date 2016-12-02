<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:ns2="http://www.schematron-quickfix.com/validator/process" schemaVersion="iso" queryBinding="xslt2">

    <title>EHF Call for Tenders 1.0</title>

    <ns uri="urn:oasis:names:specification:ubl:schema:xsd:CallForTenders-2" prefix="ubl"/>
    <ns uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" prefix="cbc"/>
    <ns uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" prefix="cac"/>

    <pattern>
        <rule context="/ubl:CallForTenders">
            <assert test="not(count(//*[not(node()[not(self::comment())])]) &gt; 0)" flag="fatal"
                id="NOGOV-T83-R001">A call for tenders MUST not contain empty elements.</assert>
            <assert test="(cbc:UBLVersionID)" flag="fatal" id="NOGOV-T83-R003">A call for tenders
                MUST have a syntax identifier.</assert>
        </rule>
        <rule context="/ubl:IssueTime">
            <assert test="(count(timezone-from-time(cbc:IssueTime)) &gt; 0)" flag="fatal"
                id="NOGOV-T83-R009">Issue time must include timezone information.</assert>
        </rule>
        <rule context="cbc:UBLVersionID">
            <assert
                test="((not(contains(normalize-space(.), ' ')) and contains(' 2.1 ', concat(' ', normalize-space(.), ' '))))"
                flag="fatal" id="NOGOV-T83-R002">UBL version must be 2.1</assert>
        </rule>
        <rule context="//cac:DocumentReference/cbc:LocaleCode">
            <assert
                test="((not(contains(normalize-space(.), ' ')) and contains(' aa ab ae af ak am an ar as av ay az ba be bg bh bi bm bn bo br bs ca ca ce ch co cr cs cu cu cu cu cu cv cy da de dv dv dv dz ee el en eo es es et eu fa ff fi fj fo fr fy ga gd gd gl gn gu gv ha he hi ho hr ht ht hu hy hz ia id ie ie ig ii ii ik io is it iu ja jv ka kg ki ki kj kj kk kl kl km kn ko kr ks ku kv kw ky ky la lb lb lg li li li ln lo lt lu lv mg mh mi mk ml mn mr ms mt my na nb nb nd nd ne ng nl nl nn nn no nr nr nv nv ny ny ny oc oj om or os os pa pa pi pl ps ps pt qu rm rn ro ro ro ru rw sa sc sd se sg si si sk sl sm sn so sq sr ss st su sv sw ta te tg th ti tk tl tn to tr ts tt tw ty ug ug uk ur uz ve vi vo wa wo xh yi yo za za zh zu ', concat(' ', normalize-space(.), ' '))))"
                flag="fatal" id="NOGOV-T83-R008">Language codes must be from ISO 639-1</assert>
        </rule>
        <rule context="//cac:PartyIdentification/cbc:ID">
            <assert test="(@schemeID)" flag="warning" id="NOGOV-T83-R007">A party identifier MUST
                have a schemeID attribute</assert>
        </rule>
        <rule context="//cac:PartyIdentification//schemeID">
            <assert
                test="((not(contains(normalize-space(.), ' ')) and contains(' FR:SIRENE SE:ORGNR FR:SIRET FI:OVT DUNS GLN DK:P IT:FTI NL:KVK IT:SIA IT:SECETI DK:CPR DK:CVR DK:SE DK:VANS IT:VAT IT:CF NO:ORGNR NO:VAT HU:VAT EU:REID AT:VAT AT:GOV IS:KT IBAN AT:KUR ES:VAT IT:IPA AD:VAT AL:VAT BA:VAT BE:VAT BG:VAT CH:VAT CY:VAT CZ:VAT DE:VAT EE:VAT GB:VAT GR:VAT HR:VAT IE:VAT LI:VAT LT:VAT LU:VAT LV:VAT MC:VAT ME:VAT MK:VAT MT:VAT NL:VAT PL:VAT PT:VAT RO:VAT RS:VAT SI:VAT SK:VAT SM:VAT TR:VAT VA:VAT NL:ION SE:VAT ZZZ ', concat(' ', normalize-space(.), ' '))))"
                flag="fatal" id="NOGOV-T83-R006">SchemeID for party identifier must be from PEPPOL
                Policy for identifiers, policy 8 </assert>
        </rule>
        <rule context="//cbc:EndpointID">
            <assert test="(@schemeID)" flag="warning" id="NOGOV-T83-R005">An endpoint identifier
                MUST have a schemeID attribute</assert>
        </rule>
        <rule context="//cbc:EndpointID//@schemeID">
            <assert
                test="((not(contains(normalize-space(.), ' ')) and contains(' FR:SIRENE SE:ORGNR FR:SIRET FI:OVT DUNS GLN DK:P IT:FTI NL:KVK IT:SIA IT:SECETI DK:CPR DK:CVR DK:SE DK:VANS IT:VAT IT:CF NO:ORGNR NO:VAT HU:VAT EU:REID AT:VAT AT:GOV IS:KT IBAN AT:KUR ES:VAT IT:IPA AD:VAT AL:VAT BA:VAT BE:VAT BG:VAT CH:VAT CY:VAT CZ:VAT DE:VAT EE:VAT GB:VAT GR:VAT HR:VAT IE:VAT LI:VAT LT:VAT LU:VAT LV:VAT MC:VAT ME:VAT MK:VAT MT:VAT NL:VAT PL:VAT PT:VAT RO:VAT RS:VAT SI:VAT SK:VAT SM:VAT TR:VAT VA:VAT NL:ION SE:VAT ZZZ ', concat(' ', normalize-space(.), ' '))))"
                flag="fatal" id="NOGOV-T83-R004">SchemeID for endpoint identifier must be from
                PEPPOL Policy for identifiers, policy 8 </assert>
        </rule>
    </pattern>
</schema>
