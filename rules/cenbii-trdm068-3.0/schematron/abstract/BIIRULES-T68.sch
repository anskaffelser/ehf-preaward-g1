<!-- Schematron rules generated automatically by Validex Generator Midran ltd -->
<!-- Abstract rules for T68 -->
<!-- Timestamp: 2015-11-25 14:13:13 +0100 -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="T68">
  <rule context="$ContractType">
    <assert test="$BII3-T68-R028" flag="fatal" id="BII3-T68-R028">[BII3-T68-R028]-A contract type code MUST have a list identifier attribute 'UNCL1001'</assert>
  </rule>
  <rule context="$CountryCode">
    <assert test="$BII3-T68-R025" flag="fatal" id="BII3-T68-R025">[BII3-T68-R025]-List identifier for country code must be 'ISO3166-1:Alpha2'</assert>
  </rule>
  <rule context="$DocumentType">
    <assert test="$BII3-T68-R026" flag="fatal" id="BII3-T68-R026">[BII3-T68-R026]-A document type code MUST have a list identifier attribute 'UNCL1001'</assert>
  </rule>
  <rule context="$HandlingUnit">
    <assert test="$BII3-T68-R018" flag="fatal" id="BII3-T68-R018">[BII3-T68-R018]-The Handling unit minimum storage humidity MUST be smaller than or equal to the Handling unit maximum storage humidity.</assert>
    <assert test="$BII3-T68-R019" flag="fatal" id="BII3-T68-R019">[BII3-T68-R019]-The Handling unit minimum storage temperature MUST be smaller than or equal to the Handling unit maximum storage temperature.</assert>
  </rule>
  <rule context="$Item">
    <assert test="$BII3-T68-R013" flag="fatal" id="BII3-T68-R013">[BII3-T68-R013]-A Pre-award Catalogue line item MUST have an item name</assert>
  </rule>
  <rule context="$ItemClassification">
    <assert test="$BII3-T68-R014" flag="fatal" id="BII3-T68-R014">[BII3-T68-R014]-If item classification is used, item classification code MUST be sent</assert>
  </rule>
  <rule context="$ItemProperty">
    <assert test="$BII3-T68-R015" flag="fatal" id="BII3-T68-R015">[BII3-T68-R015]-If item property is used, both property name and value MUST be present</assert>
  </rule>
  <rule context="$LineValidityPeriod">
    <assert test="$BII3-T68-R016" flag="fatal" id="BII3-T68-R016">[BII3-T68-R016]-A Catalogue Line Validity Period MUST include start date and end date</assert>
    <assert test="$BII3-T68-R020" flag="fatal" id="BII3-T68-R020">[BII3-T68-R020]-The Period start date of the Catalogue line validity period MUST be before the Period end date.</assert>
  </rule>
  <rule context="$PreawardCatalogue">
    <assert test="$BII3-T68-R001" flag="fatal" id="BII3-T68-R001">[BII3-T68-R001]-A Pre-award Catalogue MUST have a customization identifier</assert>
    <assert test="$BII3-T68-R002" flag="fatal" id="BII3-T68-R002">[BII3-T68-R002]-A Pre-award Catalogue MUST have a profile identifier</assert>
    <assert test="$BII3-T68-R003" flag="fatal" id="BII3-T68-R003">[BII3-T68-R003]-A Pre-award Catalogue MUST have an identifier</assert>
    <assert test="$BII3-T68-R004" flag="fatal" id="BII3-T68-R004">[BII3-T68-R004]-A Pre-award Catalogue MUST have the procurement project identifier</assert>
    <assert test="$BII3-T68-R005" flag="fatal" id="BII3-T68-R005">[BII3-T68-R005]-A Pre-award Catalogue MUST have issue date</assert>
    <assert test="$BII3-T68-R006" flag="fatal" id="BII3-T68-R006">[BII3-T68-R006]-Validity Period for the Pre-award Catalogue MUST be stated</assert>
    <assert test="$BII3-T68-R008" flag="fatal" id="BII3-T68-R008">[BII3-T68-R008]-Catalogue provider MUST be specified</assert>
    <assert test="$BII3-T68-R009" flag="fatal" id="BII3-T68-R009">[BII3-T68-R009]-Catalogue receiver MUST be specified</assert>
    <assert test="$BII3-T68-R010" flag="fatal" id="BII3-T68-R010">[BII3-T68-R010]-A Pre-award Catalogue MUST have at least one catalogue line</assert>
  </rule>
  <rule context="$PreawardCatalogueLine">
    <assert test="$BII3-T68-R011" flag="fatal" id="BII3-T68-R011">[BII3-T68-R011]-Each pre-award catalogue line MUST have a line identifier</assert>
    <assert test="$BII3-T68-R012" flag="fatal" id="BII3-T68-R012">[BII3-T68-R012]-Each pre-award catalogue line MUST specify at least one item detail</assert>
    <assert test="$BII3-T68-R022" flag="fatal" id="BII3-T68-R022">[BII3-T68-R022]-The Minimum order quantity MUST be smaller than or equal to the Maximum order quantity.</assert>
  </rule>
  <rule context="$PriceValidityPeriod">
    <assert test="$BII3-T68-R017" flag="fatal" id="BII3-T68-R017">[BII3-T68-R017]-A Catalogue Price Validity Period MUST include start date and end date</assert>
    <assert test="$BII3-T68-R021" flag="fatal" id="BII3-T68-R021">[BII3-T68-R021]-The Period start date of the Price validity period MUST be before the Period end date.</assert>
  </rule>
  <rule context="$UNDGCode">
    <assert test="$BII3-T68-R029" flag="fatal" id="BII3-T68-R029">[BII3-T68-R029]-A UNDG code MUST have a list identifier attribute 'UNCL8273'</assert>
  </rule>
  <rule context="$ValidityPeriod">
    <assert test="$BII3-T68-R007" flag="fatal" id="BII3-T68-R007">[BII3-T68-R007]-A Catalogue Validity Period MUST include start date and end date</assert>
    <assert test="$BII3-T68-R023" flag="fatal" id="BII3-T68-R023">[BII3-T68-R023]-The Period start date of the Catalogue validity period MUST be before the Period end date.</assert>
  </rule>
  <rule context="$PriceType">
    <assert test="$BII3-T68-R030" flag="fatal" id="BII3-T68-R030">[BII3-T68-R030]-A Price Type code MUST have a list identifier attribute 'UNCL5387'</assert>
  </rule>
</pattern>
