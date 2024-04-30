<?xml version = '1.0' encoding = 'UTF-8'?>
<!--User Editing Not Allowed for Sections: oracle-xsl-mapper:schema, top level xsl:params, version attribute of the stylesheet element. GENERATED BY OIC MAPPER, DO NOT DELETE THIS LINE-->
<!--User Editing Not Allowed for Sections: oracle-xsl-mapper:schema, top level xsl:params, version attribute of the stylesheet element. GENERATED BY OIC MAPPER, DO NOT DELETE THIS LINE--><xsl:stylesheet version="2.0" xml:id="id_1" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:nssrcmpr="http://xmlns.oracle.com/cloud/adapter/REST/UpdateInvoice_REQUEST/types" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:nstrgmpr="http://xmlns.oracle.com/cloud/adapter/collocatedics/UpdateCompleteStatus_REQUEST/types" exclude-result-prefixes=" ora nssrcmpr oracle-xsl-mapper dvm oraext xsi xsd fn xp20 xsl ignore01 nsmpr0 nsmpr1 fn" xmlns:ignore01="http://www.oracle.com/XSL/Transform/java" ignore01:ignorexmlids="true" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:nsmpr0="http://xmlns.oracle.com/cloud/adapter/erp/CreateInvoice_REQUEST/types" xmlns:nsmpr1="http://www.oracle.com/2014/03/ic/integration/metadata" xmlns:ns30="http://www.oracle.rest.converters.autogeneratedns.com/collocatedics/UpdateCompleteStatus_REQUEST" xmlns:ns23="http://xmlns.oracle.com/cloud/adapter/REST/UpdateInvoice/types">
   <oracle-xsl-mapper:schema xml:id="id_2">
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources xml:id="id_3">
         <oracle-xsl-mapper:source type="WSDL" xml:id="id_4">
            <oracle-xsl-mapper:schema location="../../application_13/outbound_14/resourcegroup_15/UpdateInvoice_REQUEST.wsdl" xml:id="id_5"/>
            <oracle-xsl-mapper:rootElement name="execute" namespace="http://xmlns.oracle.com/cloud/adapter/REST/UpdateInvoice_REQUEST/types" xml:id="id_6"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets xml:id="id_7">
         <oracle-xsl-mapper:target type="WSDL" xml:id="id_8">
            <oracle-xsl-mapper:schema location="../../application_111/inbound_112/resourcegroup_113/UpdateCompleteStatus_REQUEST.wsdl" xml:id="id_9"/>
            <oracle-xsl-mapper:rootElement name="POST" namespace="http://xmlns.oracle.com/cloud/adapter/collocatedics/UpdateCompleteStatus_REQUEST/types" xml:id="id_10"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
   </oracle-xsl-mapper:schema>
   <xsl:template match="/" xml:id="id_11">
      <nstrgmpr:POST xml:id="id_12">
         <nstrgmpr:components.schemas.request-wrapper xml:id="id_32">
            <ns30:ID xml:id="id_33">
               <xsl:value-of xml:id="id_34" select="/nssrcmpr:execute/ns23:request-wrapper/ns23:id"/>
            </ns30:ID>
            <ns30:InvoiceNumber xml:id="id_35">
               <xsl:value-of xml:id="id_36" select="/nssrcmpr:execute/ns23:request-wrapper/ns23:InvoiceNumber"/>
            </ns30:InvoiceNumber>
            <ns30:Source xml:id="id_68">
               <xsl:value-of xml:id="id_69" select="&quot;Outlook&quot;"/>
            </ns30:Source>
            <ns30:InvoiceTotal xml:id="id_39">
               <xsl:value-of xml:id="id_40" select="/nssrcmpr:execute/ns23:request-wrapper/ns23:InvoiceAmount"/>
            </ns30:InvoiceTotal>
            <ns30:InvoiceDate xml:id="id_41">
               <xsl:value-of xml:id="id_42" select="/nssrcmpr:execute/ns23:request-wrapper/ns23:InvoiceDate"/>
            </ns30:InvoiceDate>
            <ns30:InvoiceCurrency xml:id="id_37">
               <xsl:value-of xml:id="id_38" select="/nssrcmpr:execute/ns23:request-wrapper/ns23:InvoiceCurrency"/>
            </ns30:InvoiceCurrency>
            <ns30:Supplier xml:id="id_43">
               <xsl:value-of xml:id="id_44" select="/nssrcmpr:execute/ns23:request-wrapper/ns23:Supplier"/>
            </ns30:Supplier>
            <ns30:Status xml:id="id_45">
               <xsl:value-of xml:id="id_46" select="&quot;Complete&quot;"/>
            </ns30:Status>
            <ns30:LastUpdateDateTime xml:id="id_47">
               <xsl:value-of xml:id="id_48" select="fn:current-dateTime ()"/>
            </ns30:LastUpdateDateTime>
         </nstrgmpr:components.schemas.request-wrapper>
      </nstrgmpr:POST>
   </xsl:template>
</xsl:stylesheet>