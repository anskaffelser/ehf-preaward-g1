<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:ns2="http://www.schematron-quickfix.com/validator/process" schemaVersion="iso" queryBinding="xslt2">

    <title>EHF Tendering 1.0</title>

    <ns uri="urn:oasis:names:specification:ubl:schema:xsd:Tender-2" prefix="ubl"/>
    <ns uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" prefix="cbc"/>
    <ns uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" prefix="cac"/>

    <pattern>
        <rule context="/ubl:Tender">
            <assert test="not(count(//*[not(node()[not(self::comment())])]) &gt; 0)" flag="fatal" id="NOGOV-T68-R001">A pre award catalogue MUST not contain empty elements.</assert>
            <assert test="(cbc:UBLVersionID)" flag="fatal" id="NOGOV-T68-R003">A tender MUST have a syntax identifier.</assert>
        </rule>
        <rule context="cbc:UBLVersionID">
            <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' 2.1 ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal" id="NOGOV-T68-R002">UBL version must be 2.1</assert>
        </rule>
        <rule context="//cac:PartyIdentification/cbc:ID">
            <assert test="(@schemeID)" flag="warning" id="NOGOV-T68-R007">A party identifier MUST have a schemeID attribute</assert>
        </rule>
        <rule context="//cac:PartyIdentification//schemeID">
            <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' FR:SIRENE SE:ORGNR FR:SIRET FI:OVT DUNS GLN DK:P IT:FTI NL:KVK IT:SIA IT:SECETI DK:CPR DK:CVR DK:SE DK:VANS IT:VAT IT:CF NO:ORGNR NO:VAT HU:VAT EU:REID AT:VAT AT:GOV IS:KT IBAN AT:KUR ES:VAT IT:IPA AD:VAT AL:VAT BA:VAT BE:VAT BG:VAT CH:VAT CY:VAT CZ:VAT DE:VAT EE:VAT GB:VAT GR:VAT HR:VAT IE:VAT LI:VAT LT:VAT LU:VAT LV:VAT MC:VAT ME:VAT MK:VAT MT:VAT NL:VAT PL:VAT PT:VAT RO:VAT RS:VAT SI:VAT SK:VAT SM:VAT TR:VAT VA:VAT NL:ION SE:VAT ZZZ ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal" id="NOGOV-T68-R006">SchemeID for party identifier must be from PEPPOL Policy for identifiers,
                policy 8 </assert>
        </rule>
        <rule context="//cbc:EndpointID">
            <assert test="(@schemeID)" flag="warning" id="NOGOV-T68-R005">An endpoint identifier MUST have a schemeID attribute</assert>
        </rule>
        <rule context="//cbc:EndpointID//@schemeID">
            <assert test="( ( not(contains(normalize-space(.),' ')) and contains( ' FR:SIRENE SE:ORGNR FR:SIRET FI:OVT DUNS GLN DK:P IT:FTI NL:KVK IT:SIA IT:SECETI DK:CPR DK:CVR DK:SE DK:VANS IT:VAT IT:CF NO:ORGNR NO:VAT HU:VAT EU:REID AT:VAT AT:GOV IS:KT IBAN AT:KUR ES:VAT IT:IPA AD:VAT AL:VAT BA:VAT BE:VAT BG:VAT CH:VAT CY:VAT CZ:VAT DE:VAT EE:VAT GB:VAT GR:VAT HR:VAT IE:VAT LI:VAT LT:VAT LU:VAT LV:VAT MC:VAT ME:VAT MK:VAT MT:VAT NL:VAT PL:VAT PT:VAT RO:VAT RS:VAT SI:VAT SK:VAT SM:VAT TR:VAT VA:VAT NL:ION SE:VAT ZZZ ',concat(' ',normalize-space(.),' ') ) ) )" flag="fatal" id="NOGOV-T68-R004">SchemeID for endpoint identifier must be from PEPPOL Policy for identifiers,
                policy 8 </assert>
        </rule>
        <rule context="//cac:PartyIdentification">
            <assert test="(cbc:ID)" flag="fatal" id="NOGOV-T68-R008">If Party identification is used, identifier MUST be sent</assert>
        </rule>
        <rule context="//cac:PartyName">
            <assert test="(cbc:Name)" flag="fatal" id="NOGOV-T68-R009">If Party Name is used, name MUST be sent</assert>
        </rule>
        <rule context="//cac:Price">
            <assert test="(cbc:PriceAmount)" flag="fatal" id="NOGOV-T68-R010">If Price is used, item net price MUST be sent</assert>
        </rule>
        <rule context="//cac:AllowanceCharge">
            <assert test="(cbc:ChargeIndicator) and (cbc:AllowanceChargeReason) and (cbc:Amount)" flag="fatal" id="NOGOV-T68-R011">If AllowanceCharge is used, charge indicator, reason and amount MUST all be sent</assert>
        </rule>
        <rule context="//cac:SellersItemIdentification">
            <assert test="(cbc:ID)" flag="fatal" id="NOGOV-T68-R012">If Sellers Item Identification is used, item sellers identifier MUST be sent</assert>
        </rule>
        <rule context="//cac:ManufacturersItemIdentification">
            <assert test="(cbc:ID)" flag="fatal" id="NOGOV-T68-R013">If Manufacturers Item Identification is used, manufacturer item identifier MUST be sent</assert>
        </rule>
        <rule context="//cac:StandardItemIdentification">
            <assert test="(cbc:ID)" flag="fatal" id="NOGOV-T68-R014">If Standard Item Identification is used, item starndard identifier MUST be sent</assert>
        </rule>
        <rule context="//cac:OriginCountry">
            <assert test="(cbc:IdentificationCode)" flag="fatal" id="NOGOV-T68-R015">If Origin country is used, item origin country code MUST be sent</assert>
        </rule>
        <rule context="//cac:Certificate">
            <assert test="(cbc:CertificateType) and (cbc:CertificateTypeCode)" flag="fatal" id="NOGOV-T68-R016">If Certificate is used, item label type and item label name MUST be sent</assert>
            <assert test="(cac:IssuerParty/cac:PartyName/cbc:Name)" flag="fatal" id="NOGOV-T68-R017">If Certificate is used, item label issuer party name MUST be sent</assert>
        </rule>
        <rule context="//cac:CallForTendersLineReference">
            <assert test="(cbc:LineID)" flag="fatal" id="NOGOV-T68-R018">If Call for Tenders Line Reference is used, requested deliverable identifier MUST be sent</assert>
        </rule>
        <rule context="//cbc:MinimumOrderQuantity">
            <assert test="(@unitCode)" flag="fatal" id="NOGOV-T68-R019">Minimum order quantity MUST have a unitCode</assert>
        </rule>
        <rule context="//cbc:MaximumOrderQuantity">
            <assert test="(@unitCode)" flag="fatal" id="NOGOV-T68-R020">Maximum order quantity MUST have a unitCode</assert>
        </rule>
        <rule context="//cac:CatalogueLine">
            <assert test="(cbc:OrderableIndicator)" flag="fatal" id="NOGOV-T68-R021">A Catalogue line MUST have an orderable indicator"/></assert>
            <assert test="((normalize-space(cbc:OrderableIndicator) = 'true') and (cbc:OrderableUnit)) or (string(cbc:OrderableIndicator) != 'true')" flag="fatal" id="NOGOV-T68-R022">If orderable indicator is true, orderable unit must be present</assert>
            <assert test="not(cbc:MaximumOrderQuantity) or not(cbc:MinimumOrderQuantity) or number(cbc:MaximumOrderQuantity) &gt;= number(cbc:MinimumOrderQuantity)" flag="fatal" id="NOGOV-T68-R023">The Minimum order quantity MUST be smaller than or equal to the Maximum order quantity.</assert>
        </rule>
    </pattern>
</schema>
