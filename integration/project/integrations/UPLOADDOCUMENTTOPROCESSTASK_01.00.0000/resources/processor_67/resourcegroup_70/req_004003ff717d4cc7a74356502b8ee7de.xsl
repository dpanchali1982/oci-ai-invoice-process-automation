<?xml version = '1.0' encoding = 'UTF-8'?>
<!--User Editing Not Allowed for Sections: oracle-xsl-mapper:schema, top level xsl:params, version attribute of the stylesheet element. GENERATED BY OIC MAPPER, DO NOT DELETE THIS LINE-->
<!--User Editing Not Allowed for Sections: oracle-xsl-mapper:schema, top level xsl:params, version attribute of the stylesheet element. GENERATED BY OIC MAPPER, DO NOT DELETE THIS LINE--><xsl:stylesheet version="2.0" xml:id="id_1" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:nssrcmpr="http://xmlns.oracle.com/cloud/adapter/REST/AttachDocument_REQUEST/types" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:nstrgmpr="http://xmlns.oracle.com/cloud/adapter/REST/GetTasksByProcessInstanceID_REQUEST/types" exclude-result-prefixes=" ora nssrcmpr oracle-xsl-mapper dvm oraext xsi xsd fn xp20 xsl ignore01 nsmpr0" xmlns:ignore01="http://www.oracle.com/XSL/Transform/java" ignore01:ignorexmlids="true" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:nsmpr0="http://www.oracle.com/2014/03/ic/integration/metadata" xmlns:ns27="http://xml.oracle.com/types/REST/GetTasksByProcessInstanceID_REQUEST" xmlns:ns23="http://xml.oracle.com/types/REST/AttachDocument_REQUEST">
   <oracle-xsl-mapper:schema xml:id="id_2">
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources xml:id="id_3">
         <oracle-xsl-mapper:source type="WSDL" xml:id="id_4">
            <oracle-xsl-mapper:schema location="../../application_13/outbound_14/resourcegroup_15/AttachDocument_REQUEST.wsdl" xml:id="id_5"/>
            <oracle-xsl-mapper:rootElement name="execute" namespace="http://xmlns.oracle.com/cloud/adapter/REST/AttachDocument_REQUEST/types" xml:id="id_6"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets xml:id="id_7">
         <oracle-xsl-mapper:target type="WSDL" xml:id="id_8">
            <oracle-xsl-mapper:schema location="../../application_46/inbound_47/resourcegroup_48/GetTasksByProcessInstanceID_REQUEST.wsdl" xml:id="id_9"/>
            <oracle-xsl-mapper:rootElement name="execute" namespace="http://xmlns.oracle.com/cloud/adapter/REST/GetTasksByProcessInstanceID_REQUEST/types" xml:id="id_10"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
   </oracle-xsl-mapper:schema>
   <xsl:template match="/" xml:id="id_11">
      <nstrgmpr:execute xml:id="id_12">
         <nstrgmpr:QueryParameters xml:id="id_21">
            <ns27:assignment xml:id="id_22">
               <xsl:value-of xml:id="id_23" select="&quot;GROUP&quot;"/>
            </ns27:assignment>
            <xsl:for-each xml:id="id_25" select="/nssrcmpr:execute/nssrcmpr:QueryParameters/ns23:processInstanceId">
               <ns27:processInstanceId xml:id="id_26">
                  <xsl:value-of xml:id="id_27" select="."/>
               </ns27:processInstanceId>
            </xsl:for-each>
         </nstrgmpr:QueryParameters>
      </nstrgmpr:execute>
   </xsl:template>
</xsl:stylesheet>