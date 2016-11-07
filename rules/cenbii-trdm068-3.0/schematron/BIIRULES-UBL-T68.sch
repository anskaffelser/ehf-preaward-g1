<?xml version="1.0" encoding="UTF-8"?>
<!-- 

        	UBL syntax binding to the T68   
            Schematron rules generated automatically by Validex Generator Midran ltd
            Abstract business rules for transaction T68
            Timestamp: 2015-11-25 14:13:14 +0100
     -->
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:Catalogue-2" queryBinding="xslt2">
  <title>BIIRULES  T68 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Catalogue-2"/>
  <phase id="BIIRULEST68_phase">
    <active pattern="UBL-T68"/>
  </phase>
  <phase id="codelist_phase">
    <active pattern="CodesT68"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <include href="abstract/BIIRULES-T68.sch"/>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <include href="UBL/BIIRULES-UBL-T68.sch"/>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <include href="codelist/BIIRULESCodesT68-UBL.sch"/>
</schema>
