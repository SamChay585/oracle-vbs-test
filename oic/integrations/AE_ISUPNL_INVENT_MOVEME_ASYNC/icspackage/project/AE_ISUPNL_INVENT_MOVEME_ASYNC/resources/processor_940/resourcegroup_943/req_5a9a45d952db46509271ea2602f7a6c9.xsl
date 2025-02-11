<?xml version = '1.0' encoding = 'UTF-8'?>
<!--User Editing Not Allowed for Sections: oracle-xsl-mapper:schema, top level xsl:params, version attribute of the stylesheet element. GENERATED BY OIC MAPPER, DO NOT DELETE THIS LINE-->
<!--User Editing Not Allowed for Sections: oracle-xsl-mapper:schema, top level xsl:params, version attribute of the stylesheet element. GENERATED BY OIC MAPPER, DO NOT DELETE THIS LINE--><xsl:stylesheet version="2.0" xml:id="id_1" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:nstrgmpr="http://xmlns.oracle.com/cloud/adapter/erp/GetPickSlipDetails_REQUEST/types" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:nssrcmpr="http://xmlns.oracle.com/cloud/adapter/REST/InvokeInventoryMovement_REQUEST/types" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes=" ora oracle-xsl-mapper dvm oraext xsi xsd fn xp20 nssrcmpr xsl ignore01 nsmpr0 nsmpr1 ns21 fn nssrcmpr nsmpr2 nsmpr3 nsmpr4 nsmpr5 nsmpr6 nsmpr7 nsmpr8 nsmpr9 nsmpr10 nsmpr11 nsmpr12 nsmpr13 ns21 nssrcmpr nsmpr14" xmlns:ignore01="http://www.oracle.com/XSL/Transform/java" ignore01:ignorexmlids="true" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:nsmpr0="http://xmlns.oracle.com/cloud/adapter/erp/GetIMLineDetails_REQUEST/types" xmlns:nsmpr1="http://www.oracle.com/2014/03/ic/integration/metadata" xmlns:ns21="http://xmlns.oracle.com/cloud/adapter/REST/InvokeInventoryMovement/types" xmlns:nsmpr2="http://xmlns.oracle.com/oxp/service/PublicReportService" xmlns:nsmpr3="http://xmlns.oracle.com/types/GetLots/1731600951472/OutboundSOAPRequestDocument" xmlns:nsmpr4="http://xmlns.oracle.com/cloud/adapter/stagefile/ReadLotsToStage_REQUEST/types" xmlns:nsmpr5="http://xmlns.oracle.com/cloud/adapter/erp/RunESSJobs_REQUEST/types" xmlns:nsmpr6="http://xmlns.oracle.com/cloud/adapters/fscmRestApp/MaterialTransactions" xmlns:nsmpr7="http://xmlns.oracle.com/cloud/adapters/fscmRestApp" xmlns:nsmpr8="http://xmlns.oracle.com/cloud/adapter/stagefile/WriteLotsToStage_REQUEST/types" xmlns:nsmpr9="http://xmlns.oracle.com/cloud/adapter/erp/getESSJobStatus_REQUEST/types" xmlns:nsmpr10="http://xmlns.oracle.com/cloud/adapter/REST/StitchLotItems/types" xmlns:nsmpr11="http://xmlns.oracle.com/cloud/adapter/REST/getESSJobStatus_REQUEST/types" xmlns:nsmpr12="http://xmlns.oracle.com/cloud/adapter/erp/GetProductDetails_REQUEST/types" xmlns:nsmpr13="http://xmlns.oracle.com/cloud/adapters/fscmRestApp/PickSlipDetails" xmlns:nsmpr14="http://xmlns.oracle.com/cloud/adapter/erp/GetPickSlipDetail_REQUEST/types">
   <oracle-xsl-mapper:schema xml:id="id_2">
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources xml:id="id_3">
         <oracle-xsl-mapper:source type="WSDL" xml:id="id_4">
            <oracle-xsl-mapper:schema location="../../application_13/outbound_14/resourcegroup_15/InvokeInventoryMovement_REQUEST.wsdl" xml:id="id_5"/>
            <oracle-xsl-mapper:rootElement name="execute" namespace="http://xmlns.oracle.com/cloud/adapter/REST/InvokeInventoryMovement_REQUEST/types" xml:id="id_6"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets xml:id="id_7">
         <oracle-xsl-mapper:target type="WSDL" xml:id="id_8">
            <oracle-xsl-mapper:schema location="../../application_928/inbound_929/resourcegroup_930/GetPickSlipDetails_REQUEST.wsdl" xml:id="id_9"/>
            <oracle-xsl-mapper:rootElement name="getAll" namespace="http://xmlns.oracle.com/cloud/adapter/erp/GetPickSlipDetails_REQUEST/types" xml:id="id_10"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
   </oracle-xsl-mapper:schema>
   <xsl:template match="/" xml:id="id_11">
      <nstrgmpr:getAll xml:id="id_12">
         <nstrgmpr:QueryParameters xml:id="id_33">
            <nstrgmpr:expand xml:id="id_89">
               <xsl:value-of xml:id="id_90" select="&quot;pickLines,pickLines.itemLots,pickLines.itemSerials,pickLines.itemLots.itemLotSerials&quot;"/>
            </nstrgmpr:expand>
            <nstrgmpr:query xml:id="id_36">
               <xsl:value-of xml:id="id_37" select="concat (&quot;MovementRequest=&quot;, /nssrcmpr:execute/ns21:request-wrapper/ns21:issueNumber )"/>
            </nstrgmpr:query>
         </nstrgmpr:QueryParameters>
      </nstrgmpr:getAll>
   </xsl:template>
</xsl:stylesheet>