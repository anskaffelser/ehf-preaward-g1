<?xml version="1.0" encoding="UTF-8"?>
<!-- 

        	UBL syntax binding to the T90   
            Schematron rules generated automatically by Validex Generator Midran ltd
            Abstract business rules for transaction T90
            Timestamp: 2015-11-25 14:13:44 +0100
     -->
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:Tender-2" queryBinding="xslt2">
  <title>BIIRULES  T90 bound to UBL</title>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Tender-2"/>
  <phase id="BIIRULEST90_phase">
    <active pattern="UBL-T90"/>
  </phase>
  <phase id="codelist_phase">
    <active pattern="CodesT90"/>
  </phase>
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <include href="abstract/BIIRULES-T90.sch"/>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <include href="UBL/BIIRULES-UBL-T90.sch"/>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <include href="codelist/BIIRULESCodesT90-UBL.sch"/>
</schema>
