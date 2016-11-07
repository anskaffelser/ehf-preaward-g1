<?xml version="1.0" encoding="UTF-8"?>
<!-- 

        	UBL syntax binding to the T83   
            Schematron rules generated automatically by Validex Generator Midran ltd
            Abstract business rules for transaction T83
            Timestamp: 2015-11-25 14:13:29 +0100
     -->
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:CallForTenders-2" queryBinding="xslt2">
  <title>BIIRULES  T83 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:CallForTenders-2"/>
  <phase id="BIIRULEST83_phase">
    <active pattern="UBL-T83"/>
  </phase>
  <phase id="codelist_phase">
    <active pattern="CodesT83"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <include href="abstract/BIIRULES-T83.sch"/>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <include href="UBL/BIIRULES-UBL-T83.sch"/>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <include href="codelist/BIIRULESCodesT83-UBL.sch"/>
</schema>
