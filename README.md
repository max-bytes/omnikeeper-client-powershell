# okclient - the PowerShell module for the Landscape omnikeeper REST API

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This PowerShell module is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v1
- SDK version: 21.0.0-rc6
- Build package: org.openapitools.codegen.languages.PowerShellClientCodegen

<a name="frameworks-supported"></a>
## Frameworks supported
- PowerShell 6.2 or later

<a name="dependencies"></a>
## Dependencies

<a name="installation"></a>
## Installation


To install from the source, run the following command to build and install the PowerShell module locally:
```powershell
Build.ps1
Import-Module -Name '.\src\okclient' -Verbose
```

To avoid function name collision, one can use `-Prefix`, e.g. `Import-Module -Name '.\src\okclient' -Prefix prefix`

To uninstall the module, simply run:
```powershell
Remove-Module -FullyQualifiedName @{ModuleName = "okclient"; ModuleVersion = "21.0.0-rc6"}
```

<a name="tests"></a>
## Tests

To install and run `Pester`, please execute the following commands in the terminal:

```powershell
Install-module -name Pester -force

Invoke-Pester
```

For troubleshooting, please run `$DebugPreference = 'Continue'` to turn on debugging and disable it with `$DebugPreference = 'SilentlyContinue'` when done with the troubleshooting.

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OKAnsibleInventoryScanIngestApi* | [**Invoke-OKAnsibleInventoryScanIngestIngestAnsibleInventoryScan**](docs/OKAnsibleInventoryScanIngestApi.md#Invoke-OKAnsibleInventoryScanIngestIngestAnsibleInventoryScan) | **POST** /api/v{version}/Ingest/AnsibleInventoryScan | 
*OKAttributeValueImageApi* | [**Invoke-OKAttributeValueImageGet**](docs/OKAttributeValueImageApi.md#Invoke-OKAttributeValueImageGet) | **GET** /api/v{version}/AttributeValueImage | 
*OKAttributeValueImageApi* | [**Invoke-OKAttributeValueImagePost**](docs/OKAttributeValueImageApi.md#Invoke-OKAttributeValueImagePost) | **POST** /api/v{version}/AttributeValueImage | 
*OKAuthRedirectApi* | [**Invoke-OKAuthRedirectIndex**](docs/OKAuthRedirectApi.md#Invoke-OKAuthRedirectIndex) | **GET** /.well-known/openid-configuration | 
*OKCytoscapeApi* | [**Invoke-OKCytoscapeTraitCentric**](docs/OKCytoscapeApi.md#Invoke-OKCytoscapeTraitCentric) | **GET** /api/v{version}/Cytoscape/traitCentric | 
*OKGraphQLApi* | [**Invoke-OKGraphQLDebug**](docs/OKGraphQLApi.md#Invoke-OKGraphQLDebug) | **POST** /graphql-debug | 
*OKGraphQLApi* | [**Invoke-OKGraphQLGet**](docs/OKGraphQLApi.md#Invoke-OKGraphQLGet) | **GET** /graphql | 
*OKGraphQLApi* | [**Invoke-OKGraphQLIndex**](docs/OKGraphQLApi.md#Invoke-OKGraphQLIndex) | **POST** /graphql | 
*OKGraphvizDotApi* | [**Invoke-OKGraphvizDotLayerCentric**](docs/OKGraphvizDotApi.md#Invoke-OKGraphvizDotLayerCentric) | **GET** /api/v{version}/GraphvizDot/layerCentric | 
*OKGraphvizDotApi* | [**Invoke-OKGraphvizDotTraitCentric**](docs/OKGraphvizDotApi.md#Invoke-OKGraphvizDotTraitCentric) | **GET** /api/v{version}/GraphvizDot/traitCentric | 
*OKGridViewApi* | [**Invoke-OKGridViewAddContext**](docs/OKGridViewApi.md#Invoke-OKGridViewAddContext) | **POST** /api/v{version}/GridView/context | Adds new context
*OKGridViewApi* | [**Invoke-OKGridViewChangeData**](docs/OKGridViewApi.md#Invoke-OKGridViewChangeData) | **POST** /api/v{version}/GridView/contexts/{context}/change | Saves grid view row changes and returns change results
*OKGridViewApi* | [**Invoke-OKGridViewDeleteContext**](docs/OKGridViewApi.md#Invoke-OKGridViewDeleteContext) | **DELETE** /api/v{version}/GridView/context/{name} | Deletes specific context
*OKGridViewApi* | [**Invoke-OKGridViewEditContext**](docs/OKGridViewApi.md#Invoke-OKGridViewEditContext) | **PUT** /api/v{version}/GridView/context/{name} | Edits specific context
*OKGridViewApi* | [**Invoke-OKGridViewGetData**](docs/OKGridViewApi.md#Invoke-OKGridViewGetData) | **GET** /api/v{version}/GridView/contexts/{context}/data | Returns grid view data for specific context
*OKGridViewApi* | [**Invoke-OKGridViewGetGridViewContext**](docs/OKGridViewApi.md#Invoke-OKGridViewGetGridViewContext) | **GET** /api/v{version}/GridView/context/{name} | Returns a single context in full
*OKGridViewApi* | [**Invoke-OKGridViewGetGridViewContexts**](docs/OKGridViewApi.md#Invoke-OKGridViewGetGridViewContexts) | **GET** /api/v{version}/GridView/contexts | Returns a list of contexts for grid view.
*OKGridViewApi* | [**Invoke-OKGridViewGetSchema**](docs/OKGridViewApi.md#Invoke-OKGridViewGetSchema) | **GET** /api/v{version}/GridView/contexts/{context}/schema | Returns grid view schema for specific context
*OKImportExportLayerApi* | [**Import-OKExportLayerExportLayer**](docs/OKImportExportLayerApi.md#Import-OKExportLayerExportLayer) | **GET** /api/v{version}/ImportExportLayer/exportLayer | 
*OKImportExportLayerApi* | [**Import-OKExportLayerImportLayer**](docs/OKImportExportLayerApi.md#Import-OKExportLayerImportLayer) | **POST** /api/v{version}/ImportExportLayer/importLayer | 
*OKMetadataApi* | [**Invoke-OKMetadataGetMetadata**](docs/OKMetadataApi.md#Invoke-OKMetadataGetMetadata) | **GET** /api/odata/{context}/$metadata | 
*OKMetadataApi* | [**Invoke-OKMetadataGetServiceDocument**](docs/OKMetadataApi.md#Invoke-OKMetadataGetServiceDocument) | **GET** /api/odata/{context} | 
*OKOKPluginGenericJSONIngestApi* | [**Invoke-OKManageContextGetAllContexts**](docs/OKOKPluginGenericJSONIngestApi.md#Invoke-OKManageContextGetAllContexts) | **GET** /api/v{version}/ingest/genericJSON/manage/context | 
*OKOKPluginGenericJSONIngestApi* | [**Invoke-OKManageContextGetContext**](docs/OKOKPluginGenericJSONIngestApi.md#Invoke-OKManageContextGetContext) | **GET** /api/v{version}/ingest/genericJSON/manage/context/{id} | 
*OKOKPluginGenericJSONIngestApi* | [**Invoke-OKManageContextRemoveContext**](docs/OKOKPluginGenericJSONIngestApi.md#Invoke-OKManageContextRemoveContext) | **DELETE** /api/v{version}/ingest/genericJSON/manage/context/{id} | 
*OKOKPluginGenericJSONIngestApi* | [**Invoke-OKManageContextUpsertContext**](docs/OKOKPluginGenericJSONIngestApi.md#Invoke-OKManageContextUpsertContext) | **POST** /api/v{version}/ingest/genericJSON/manage/context | 
*OKOKPluginGenericJSONIngestApi* | [**Invoke-OKPassiveDataIngest**](docs/OKOKPluginGenericJSONIngestApi.md#Invoke-OKPassiveDataIngest) | **POST** /api/v{version}/ingest/genericJSON/data | 
*OKOKPluginGenericJSONIngestApi* | [**Invoke-OKPassiveFilesIngest**](docs/OKOKPluginGenericJSONIngestApi.md#Invoke-OKPassiveFilesIngest) | **POST** /api/v{version}/ingest/genericJSON/files | 
*OKOKPluginInsightDiscoveryIngestApi* | [**ConvertTo-OKgestFileIngest**](docs/OKOKPluginInsightDiscoveryIngestApi.md#ConvertTo-OKgestFileIngest) | **POST** /api/v{version}/ingest/insight-discovery/file | 
*OKRestartApplicationApi* | [**Restart-OKApplicationRestart**](docs/OKRestartApplicationApi.md#Restart-OKApplicationRestart) | **GET** /api/v{version}/RestartApplication/restart | 
*OKUsageStatsApi* | [**Invoke-OKUsageStatsFetch**](docs/OKUsageStatsApi.md#Invoke-OKUsageStatsFetch) | **GET** /api/v{version}/UsageStats/fetch | 


## Documentation for Models

 - [okclient/Model.AbstractInboundIDMethod](docs/AbstractInboundIDMethod.md)
 - [okclient/Model.AddContextRequest](docs/AddContextRequest.md)
 - [okclient/Model.AnsibleInventoryScanDTO](docs/AnsibleInventoryScanDTO.md)
 - [okclient/Model.AttributeValueDTO](docs/AttributeValueDTO.md)
 - [okclient/Model.AttributeValueType](docs/AttributeValueType.md)
 - [okclient/Model.ChangeDataCell](docs/ChangeDataCell.md)
 - [okclient/Model.ChangeDataRequest](docs/ChangeDataRequest.md)
 - [okclient/Model.EditContextRequest](docs/EditContextRequest.md)
 - [okclient/Model.EdmContainerElementKind](docs/EdmContainerElementKind.md)
 - [okclient/Model.EdmExpressionKind](docs/EdmExpressionKind.md)
 - [okclient/Model.EdmSchemaElementKind](docs/EdmSchemaElementKind.md)
 - [okclient/Model.EdmTypeKind](docs/EdmTypeKind.md)
 - [okclient/Model.GenericInboundAttribute](docs/GenericInboundAttribute.md)
 - [okclient/Model.GenericInboundCI](docs/GenericInboundCI.md)
 - [okclient/Model.GenericInboundCIIdMethod](docs/GenericInboundCIIdMethod.md)
 - [okclient/Model.GenericInboundData](docs/GenericInboundData.md)
 - [okclient/Model.GenericInboundRelation](docs/GenericInboundRelation.md)
 - [okclient/Model.GraphQLQuery](docs/GraphQLQuery.md)
 - [okclient/Model.GridViewColumn](docs/GridViewColumn.md)
 - [okclient/Model.GridViewConfiguration](docs/GridViewConfiguration.md)
 - [okclient/Model.IEdmEntityContainer](docs/IEdmEntityContainer.md)
 - [okclient/Model.IEdmEntityContainerElement](docs/IEdmEntityContainerElement.md)
 - [okclient/Model.IEdmExpression](docs/IEdmExpression.md)
 - [okclient/Model.IEdmModel](docs/IEdmModel.md)
 - [okclient/Model.IEdmSchemaElement](docs/IEdmSchemaElement.md)
 - [okclient/Model.IEdmTerm](docs/IEdmTerm.md)
 - [okclient/Model.IEdmType](docs/IEdmType.md)
 - [okclient/Model.IEdmTypeReference](docs/IEdmTypeReference.md)
 - [okclient/Model.IEdmVocabularyAnnotation](docs/IEdmVocabularyAnnotation.md)
 - [okclient/Model.InboundIDMethodByAttribute](docs/InboundIDMethodByAttribute.md)
 - [okclient/Model.InboundIDMethodByAttributeModifiers](docs/InboundIDMethodByAttributeModifiers.md)
 - [okclient/Model.InboundIDMethodByByUnion](docs/InboundIDMethodByByUnion.md)
 - [okclient/Model.InboundIDMethodByData](docs/InboundIDMethodByData.md)
 - [okclient/Model.InboundIDMethodByIntersect](docs/InboundIDMethodByIntersect.md)
 - [okclient/Model.InboundIDMethodByRelatedTempID](docs/InboundIDMethodByRelatedTempID.md)
 - [okclient/Model.InboundIDMethodByTemporaryCIID](docs/InboundIDMethodByTemporaryCIID.md)
 - [okclient/Model.NoFoundTargetCIHandling](docs/NoFoundTargetCIHandling.md)
 - [okclient/Model.ODataEntitySetInfo](docs/ODataEntitySetInfo.md)
 - [okclient/Model.ODataFunctionImportInfo](docs/ODataFunctionImportInfo.md)
 - [okclient/Model.ODataServiceDocument](docs/ODataServiceDocument.md)
 - [okclient/Model.ODataSingletonInfo](docs/ODataSingletonInfo.md)
 - [okclient/Model.ODataTypeAnnotation](docs/ODataTypeAnnotation.md)
 - [okclient/Model.ProblemDetails](docs/ProblemDetails.md)
 - [okclient/Model.SameTargetCIHandling](docs/SameTargetCIHandling.md)
 - [okclient/Model.SameTempIDHandling](docs/SameTempIDHandling.md)
 - [okclient/Model.SparseRow](docs/SparseRow.md)


## Documentation for Authorization


### oauth2


- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: 
- **Scopes**: N/A


### oauth2


- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: https://auth-dev.mhx.at/auth/realms/acme/protocol/openid-connect/auth
- **Scopes**: N/A

