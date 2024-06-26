<?xml version = '1.0' encoding = 'UTF-8'?>
<!--User Editing Not Allowed for Sections: oracle-xsl-mapper:schema, top level xsl:params, version attribute of the stylesheet element. GENERATED BY OIC MAPPER, DO NOT DELETE THIS LINE-->
<!--User Editing Not Allowed for Sections: oracle-xsl-mapper:schema, top level xsl:params, version attribute of the stylesheet element. GENERATED BY OIC MAPPER, DO NOT DELETE THIS LINE--><xsl:stylesheet version="2.0" xml:id="id_1" xmlns:nstrgmpr="http://xmlns.oracle.com/cloud/adapter/REST/UpdateRecord_REQUEST/types" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:nssrcmpr="http://xmlns.oracle.com/cloud/adapter/REST/UpdateStatus_REQUEST/types" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes=" ora oracle-xsl-mapper dvm oraext xsi xsd fn xp20 nssrcmpr xsl ignore01 nsmpr0 nsmpr1 fn" xmlns:ignore01="http://www.oracle.com/XSL/Transform/java" ignore01:ignorexmlids="true" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:nsmpr0="http://xmlns.oracle.com/cloud/adapter/REST/GetAllRecords_REQUEST/types" xmlns:nsmpr1="http://www.oracle.com/2014/03/ic/integration/metadata" xmlns:ns28="http://xml.oracle.com/types/REST/UpdateRecord_REQUEST" xmlns:ns29="http://xmlns.oracle.com/cloud/adapter/REST/UpdateRecord/types" xmlns:ns20="http://xmlns.oracle.com/cloud/adapter/REST/UpdateStatus/types">
   <oracle-xsl-mapper:schema xml:id="id_2">
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources xml:id="id_3">
         <oracle-xsl-mapper:source type="WSDL" xml:id="id_4">
            <oracle-xsl-mapper:schema location="../../application_13/outbound_14/resourcegroup_15/UpdateStatus_REQUEST.wsdl" xml:id="id_5"/>
            <oracle-xsl-mapper:rootElement name="execute" namespace="http://xmlns.oracle.com/cloud/adapter/REST/UpdateStatus_REQUEST/types" xml:id="id_6"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets xml:id="id_7">
         <oracle-xsl-mapper:target type="WSDL" xml:id="id_8">
            <oracle-xsl-mapper:schema location="../../application_77/inbound_78/resourcegroup_79/UpdateRecord_REQUEST.wsdl" xml:id="id_9"/>
            <oracle-xsl-mapper:rootElement name="execute" namespace="http://xmlns.oracle.com/cloud/adapter/REST/UpdateRecord_REQUEST/types" xml:id="id_10"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
   </oracle-xsl-mapper:schema>
   <xsl:param name="InvoiceID" xml:id="id_27"/>
   <xsl:template match="/" xml:id="id_11">
      <nstrgmpr:execute xml:id="id_12">
         <nstrgmpr:TemplateParameters xml:id="id_32">
            <ns28:InvoiceStatus_Id xml:id="id_33">
               <xsl:value-of xml:id="id_34" select="$InvoiceID"/>
            </ns28:InvoiceStatus_Id>
         </nstrgmpr:TemplateParameters>
         <ns29:request-wrapper xml:id="id_35">
            <ns29:invoiceNumber xml:id="id_36">
               <xsl:value-of xml:id="id_37" select="/nssrcmpr:execute/ns20:request-wrapper/ns20:InvoiceNumber"/>
            </ns29:invoiceNumber>
            <ns29:source xml:id="id_38">
               <xsl:value-of xml:id="id_39" select="/nssrcmpr:execute/ns20:request-wrapper/ns20:Source"/>
            </ns29:source>
            <ns29:invoiceTotal xml:id="id_40">
               <xsl:value-of xml:id="id_41" select="/nssrcmpr:execute/ns20:request-wrapper/ns20:InvoiceTotal"/>
            </ns29:invoiceTotal>
            <ns29:invoiceDate xml:id="id_42">
               <xsl:value-of xml:id="id_43" select="/nssrcmpr:execute/ns20:request-wrapper/ns20:InvoiceDate"/>
            </ns29:invoiceDate>
            <ns29:invoiceCurrency xml:id="id_44">
               <xsl:value-of xml:id="id_45" select="/nssrcmpr:execute/ns20:request-wrapper/ns20:InvoiceCurrency"/>
            </ns29:invoiceCurrency>
            <ns29:supplier xml:id="id_46">
               <xsl:value-of xml:id="id_47" select="/nssrcmpr:execute/ns20:request-wrapper/ns20:Supplier"/>
            </ns29:supplier>
            <ns29:status xml:id="id_48">
               <xsl:value-of xml:id="id_49" select="/nssrcmpr:execute/ns20:request-wrapper/ns20:Status"/>
            </ns29:status>
            <ns29:invoiceAssignee xml:id="id_50">
               <xsl:value-of xml:id="id_51" select="/nssrcmpr:execute/ns20:request-wrapper/ns20:InvoiceAssignee"/>
            </ns29:invoiceAssignee>
            <ns29:lastUpdateDateTime xml:id="id_52">
               <xsl:value-of xml:id="id_53" select="fn:current-dateTime ()"/>
            </ns29:lastUpdateDateTime>
         </ns29:request-wrapper>
      </nstrgmpr:execute>
   </xsl:template>
</xsl:stylesheet>