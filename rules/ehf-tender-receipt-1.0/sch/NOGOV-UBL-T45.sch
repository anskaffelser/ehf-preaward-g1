<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:ns2="http://www.schematron-quickfix.com/validator/process" schemaVersion="iso" queryBinding="xslt2">

    <title>EHF Tendering 1.0</title>

    <ns uri="urn:oasis:names:specification:ubl:schema:xsd:Tender-2" prefix="ubl"/>
    <ns uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" prefix="cbc"/>
    <ns uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" prefix="cac"/>

    <pattern>
        <rule context="/ubl:Tender">
            <assert test="not(count(//*[not(node()[not(self::comment())])]) &gt; 0)" flag="fatal" id="NOGOV-T45-R001">A tender receipt notification MUST not contain empty elements.</assert>
            <assert test="(cbc:UBLVersionID)" flag="fatal" id="NOGOV-T45-R003">A tender receipt notification MUST have a syntax identifier.</assert>
        </rule>
        <rule context="cbc:UBLVersionID">
            <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' 2.1 ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal" id="NOGOV-T45-R002">UBL version must be 2.1</assert>
        </rule>
        <rule context="//cac:PartyIdentification/cbc:ID">
            <assert test="(@schemeID)" flag="warning" id="NOGOV-T45-R007">A party identifier MUST have a schemeID attribute</assert>
        </rule>
        <rule context="//cac:PartyIdentification//@schemeID">
            <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' FR:SIRENE SE:ORGNR FR:SIRET FI:OVT DUNS GLN DK:P IT:FTI NL:KVK IT:SIA IT:SECETI DK:CPR DK:CVR DK:SE DK:VANS IT:VAT IT:CF NO:ORGNR NO:VAT HU:VAT EU:REID AT:VAT AT:GOV IS:KT IBAN AT:KUR ES:VAT IT:IPA AD:VAT AL:VAT BA:VAT BE:VAT BG:VAT CH:VAT CY:VAT CZ:VAT DE:VAT EE:VAT GB:VAT GR:VAT HR:VAT IE:VAT LI:VAT LT:VAT LU:VAT LV:VAT MC:VAT ME:VAT MK:VAT MT:VAT NL:VAT PL:VAT PT:VAT RO:VAT RS:VAT SI:VAT SK:VAT SM:VAT TR:VAT VA:VAT NL:ION SE:VAT ZZZ ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal" id="NOGOV-T45-R006">SchemeID for party identifier must be from PEPPOL Policy for identifiers,
                policy 8 </assert>
        </rule>
        <rule context="//cbc:EndpointID">
            <assert test="(@schemeID)" flag="warning" id="NOGOV-T45-R005">An endpoint identifier MUST have a schemeID attribute</assert>
        </rule>
        <rule context="//cbc:EndpointID//@schemeID">
            <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' FR:SIRENE SE:ORGNR FR:SIRET FI:OVT DUNS GLN DK:P IT:FTI NL:KVK IT:SIA IT:SECETI DK:CPR DK:CVR DK:SE DK:VANS IT:VAT IT:CF NO:ORGNR NO:VAT HU:VAT EU:REID AT:VAT AT:GOV IS:KT IBAN AT:KUR ES:VAT IT:IPA AD:VAT AL:VAT BA:VAT BE:VAT BG:VAT CH:VAT CY:VAT CZ:VAT DE:VAT EE:VAT GB:VAT GR:VAT HR:VAT IE:VAT LI:VAT LT:VAT LU:VAT LV:VAT MC:VAT ME:VAT MK:VAT MT:VAT NL:VAT PL:VAT PT:VAT RO:VAT RS:VAT SI:VAT SK:VAT SM:VAT TR:VAT VA:VAT NL:ION SE:VAT ZZZ ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal" id="NOGOV-T45-R004">SchemeID for endpoint identifier must be from PEPPOL Policy for identifiers,
                policy 8 </assert>
        </rule>
    </pattern>
</schema>
