<?xml version = '1.0' encoding = 'UTF-8'?>
<!--User Editing Not Allowed for Sections: oracle-xsl-mapper:schema, top level xsl:params, version attribute of the stylesheet element. GENERATED BY OIC MAPPER, DO NOT DELETE THIS LINE-->
<!--User Editing Not Allowed for Sections: oracle-xsl-mapper:schema, top level xsl:params, version attribute of the stylesheet element. GENERATED BY OIC MAPPER, DO NOT DELETE THIS LINE--><xsl:stylesheet version="2.0" xml:id="id_1" xmlns:nssrcmpr="http://xmlns.oracle.com/cloud/adapter/REST/FileRead_REQUEST/types" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:nstrgmpr="http://xmlns.oracle.com/cloud/adapter/REST/GetExtractedDataFromBucket_REQUEST/types" exclude-result-prefixes=" nssrcmpr ora oracle-xsl-mapper dvm oraext xsi xsd fn xp20 xsl ignore01 nsmpr0 nsmpr1 fn" xmlns:ignore01="http://www.oracle.com/XSL/Transform/java" ignore01:ignorexmlids="true" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:nsmpr0="http://xmlns.oracle.com/cloud/adapter/REST/ProcessInvoice_REQUEST/types" xmlns:nsmpr1="http://www.oracle.com/2014/03/ic/integration/metadata" xmlns:ns27="http://xml.oracle.com/types/REST/GetExtractedDataFromBucket_REQUEST" xmlns:ns23="http://xmlns.oracle.com/cloud/adapter/REST/ProcessInvoice/types">
   <oracle-xsl-mapper:schema xml:id="id_2">
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources xml:id="id_3">
         <oracle-xsl-mapper:source type="WSDL" xml:id="id_4">
            <oracle-xsl-mapper:schema location="../../application_13/outbound_14/resourcegroup_15/FileRead_REQUEST.wsdl" xml:id="id_5"/>
            <oracle-xsl-mapper:rootElement name="execute" namespace="http://xmlns.oracle.com/cloud/adapter/REST/FileRead_REQUEST/types" xml:id="id_6"/>
         </oracle-xsl-mapper:source>
      <oracle-xsl-mapper:source type="WSDL" xml:id="id_13">
            <oracle-xsl-mapper:schema location="../../application_20/inbound_21/resourcegroup_22/ProcessInvoice_REQUEST.wsdl" xml:id="id_14"/>
            <oracle-xsl-mapper:rootElement name="executeResponse" namespace="http://xmlns.oracle.com/cloud/adapter/REST/ProcessInvoice_REQUEST/types" xml:id="id_15"/>
            <oracle-xsl-mapper:param name="ProcessInvoice" xml:id="id_16"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL" xml:id="id_17">
            <oracle-xsl-mapper:schema location="../../application_20/inbound_21/resourcegroup_22/ProcessInvoice_REQUEST.wsdl" xml:id="id_18"/>
            <oracle-xsl-mapper:rootElement name="execute" namespace="http://xmlns.oracle.com/cloud/adapter/REST/ProcessInvoice_REQUEST/types" xml:id="id_19"/>
            <oracle-xsl-mapper:param name="ProcessInvoice_REQUEST" xml:id="id_20"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets xml:id="id_7">
         <oracle-xsl-mapper:target type="WSDL" xml:id="id_8">
            <oracle-xsl-mapper:schema location="../../application_37/inbound_38/resourcegroup_39/GetExtractedDataFromBucket_REQUEST.wsdl" xml:id="id_9"/>
            <oracle-xsl-mapper:rootElement name="execute" namespace="http://xmlns.oracle.com/cloud/adapter/REST/GetExtractedDataFromBucket_REQUEST/types" xml:id="id_10"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
   </oracle-xsl-mapper:schema>
   <xsl:param name="ProcessInvoice" xml:id="id_25"/>
   <xsl:param name="ProcessInvoice_REQUEST" xml:id="id_26"/>
   <xsl:template match="/" xml:id="id_11">
      <nstrgmpr:execute xml:id="id_12">
         <nstrgmpr:TemplateParameters xml:id="id_31">
            <ns27:namespaceName xml:id="id_32">
               <xsl:value-of xml:id="id_33" select="$ProcessInvoice_REQUEST/nsmpr0:execute/ns23:request-wrapper/ns23:outputLocation/ns23:namespaceName"/>
            </ns27:namespaceName>
            <ns27:bucketName xml:id="id_34">
               <xsl:value-of xml:id="id_35" select="$ProcessInvoice_REQUEST/nsmpr0:execute/ns23:request-wrapper/ns23:outputLocation/ns23:bucketName"/>
            </ns27:bucketName>
            <ns27:objectName xml:id="id_36">
               <xsl:value-of xml:id="id_37" select="concat ($ProcessInvoice_REQUEST/nsmpr0:execute/ns23:request-wrapper/ns23:outputLocation/ns23:prefix, &quot;/&quot;, $ProcessInvoice/nsmpr0:executeResponse/ns23:response-wrapper/ns23:id, &quot;/_/results/defaultObject.json&quot; )"/>
            </ns27:objectName>
         </nstrgmpr:TemplateParameters>
      </nstrgmpr:execute>
   </xsl:template>
</xsl:stylesheet>