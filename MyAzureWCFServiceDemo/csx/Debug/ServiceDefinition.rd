<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="MyAzureWCFServiceDemo" generation="1" functional="0" release="0" Id="29add9ca-8c0c-4463-bcf7-e81e9856a68a" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="MyAzureWCFServiceDemoGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="PositiveAffirmationsWCFServiceWebRole:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/MyAzureWCFServiceDemo/MyAzureWCFServiceDemoGroup/LB:PositiveAffirmationsWCFServiceWebRole:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="PositiveAffirmationsWCFServiceWebRole:APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="">
          <maps>
            <mapMoniker name="/MyAzureWCFServiceDemo/MyAzureWCFServiceDemoGroup/MapPositiveAffirmationsWCFServiceWebRole:APPINSIGHTS_INSTRUMENTATIONKEY" />
          </maps>
        </aCS>
        <aCS name="PositiveAffirmationsWCFServiceWebRoleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/MyAzureWCFServiceDemo/MyAzureWCFServiceDemoGroup/MapPositiveAffirmationsWCFServiceWebRoleInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:PositiveAffirmationsWCFServiceWebRole:Endpoint1">
          <toPorts>
            <inPortMoniker name="/MyAzureWCFServiceDemo/MyAzureWCFServiceDemoGroup/PositiveAffirmationsWCFServiceWebRole/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapPositiveAffirmationsWCFServiceWebRole:APPINSIGHTS_INSTRUMENTATIONKEY" kind="Identity">
          <setting>
            <aCSMoniker name="/MyAzureWCFServiceDemo/MyAzureWCFServiceDemoGroup/PositiveAffirmationsWCFServiceWebRole/APPINSIGHTS_INSTRUMENTATIONKEY" />
          </setting>
        </map>
        <map name="MapPositiveAffirmationsWCFServiceWebRoleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/MyAzureWCFServiceDemo/MyAzureWCFServiceDemoGroup/PositiveAffirmationsWCFServiceWebRoleInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="PositiveAffirmationsWCFServiceWebRole" generation="1" functional="0" release="0" software="C:\Users\kathl\Dropbox\Projects\MyAzureWCFServiceDemo\MyAzureWCFServiceDemo\csx\Debug\roles\PositiveAffirmationsWCFServiceWebRole" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="APPINSIGHTS_INSTRUMENTATIONKEY" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;PositiveAffirmationsWCFServiceWebRole&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;PositiveAffirmationsWCFServiceWebRole&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/MyAzureWCFServiceDemo/MyAzureWCFServiceDemoGroup/PositiveAffirmationsWCFServiceWebRoleInstances" />
            <sCSPolicyUpdateDomainMoniker name="/MyAzureWCFServiceDemo/MyAzureWCFServiceDemoGroup/PositiveAffirmationsWCFServiceWebRoleUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/MyAzureWCFServiceDemo/MyAzureWCFServiceDemoGroup/PositiveAffirmationsWCFServiceWebRoleFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="PositiveAffirmationsWCFServiceWebRoleUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="PositiveAffirmationsWCFServiceWebRoleFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="PositiveAffirmationsWCFServiceWebRoleInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="23b14252-ba63-4de1-9e89-e803be721ddc" ref="Microsoft.RedDog.Contract\ServiceContract\MyAzureWCFServiceDemoContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="dc3fb653-fdd8-4e4f-b0d8-5619e54ef8a4" ref="Microsoft.RedDog.Contract\Interface\PositiveAffirmationsWCFServiceWebRole:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/MyAzureWCFServiceDemo/MyAzureWCFServiceDemoGroup/PositiveAffirmationsWCFServiceWebRole:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>