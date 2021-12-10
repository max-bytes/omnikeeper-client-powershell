# okclient - the PowerShell module for the Landscape omnikeeper REST API

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This PowerShell module is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v1
- SDK version: 9.0.2
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
Remove-Module -FullyQualifiedName @{ModuleName = "okclient"; ModuleVersion = "9.0.2"}
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
*OKActiveDirectoryXMLIngestApi* | [**ConvertTo-OKgestXML**](docs/OKActiveDirectoryXMLIngestApi.md#ConvertTo-OKgestXML) | **POST** /api/v{version}/Ingest/AD-XML | 
*OKAnsibleInventoryScanIngestApi* | [**ConvertTo-OKgestAnsibleInventoryScan**](docs/OKAnsibleInventoryScanIngestApi.md#ConvertTo-OKgestAnsibleInventoryScan) | **POST** /api/v{version}/Ingest/AnsibleInventoryScan | 
*OKAttributeApi* | [**Invoke-OKBulkReplaceAttributesInLayer**](docs/OKAttributeApi.md#Invoke-OKBulkReplaceAttributesInLayer) | **POST** /api/v{version}/Attribute/bulkReplaceAttributesInLayer | bulk replace all attributes in specified layer
*OKAttributeApi* | [**Find-OKMergedAttributesByName**](docs/OKAttributeApi.md#Find-OKMergedAttributesByName) | **GET** /api/v{version}/Attribute/findMergedAttributesByName | 
*OKAttributeApi* | [**Get-OKMergedAttribute**](docs/OKAttributeApi.md#Get-OKMergedAttribute) | **GET** /api/v{version}/Attribute/getMergedAttribute | 
*OKAttributeApi* | [**Get-OKMergedAttributes**](docs/OKAttributeApi.md#Get-OKMergedAttributes) | **GET** /api/v{version}/Attribute/getMergedAttributes | 
*OKAttributeApi* | [**Get-OKMergedAttributesWithName**](docs/OKAttributeApi.md#Get-OKMergedAttributesWithName) | **GET** /api/v{version}/Attribute/getMergedAttributesWithName | 
*OKAttributeValueImageApi* | [**Get-OK**](docs/OKAttributeValueImageApi.md#Get-OK) | **GET** /api/v{version}/AttributeValueImage | 
*OKAttributeValueImageApi* | [**Submit-OK**](docs/OKAttributeValueImageApi.md#Submit-OK) | **POST** /api/v{version}/AttributeValueImage | 
*OKCIApi* | [**Get-OKAllCIIDs**](docs/OKCIApi.md#Get-OKAllCIIDs) | **GET** /api/v{version}/CI/getAllCIIDs | list of all CI-IDs
*OKCIApi* | [**Get-OKCIByID**](docs/OKCIApi.md#Get-OKCIByID) | **GET** /api/v{version}/CI/getCIByID | single CI by CI-ID
*OKCIApi* | [**Get-OKCIsByID**](docs/OKCIApi.md#Get-OKCIsByID) | **GET** /api/v{version}/CI/getCIsByID | multiple CIs by CI-ID  !Watch out for the query URL getting too long because of a lot of CIIDs!  TODO: consider using POST
*OKCISearchApi* | [**Search-OKCIsByTraits**](docs/OKCISearchApi.md#Search-OKCIsByTraits) | **GET** /api/v{version}/CISearch/searchCIsByTraits | 
*OKGraphQLApi* | [**Debug-OK**](docs/OKGraphQLApi.md#Debug-OK) | **POST** /graphql-debug | 
*OKGraphQLApi* | [**ConvertTo-OKdex**](docs/OKGraphQLApi.md#ConvertTo-OKdex) | **POST** /graphql | 
*OKGridViewApi* | [**Add-OKContext**](docs/OKGridViewApi.md#Add-OKContext) | **POST** /api/v{version}/GridView/context | Adds new context
*OKGridViewApi* | [**Rename-OKData**](docs/OKGridViewApi.md#Rename-OKData) | **POST** /api/v{version}/GridView/contexts/{context}/change | Saves grid view row changes and returns change results
*OKGridViewApi* | [**Invoke-OKDeleteContext**](docs/OKGridViewApi.md#Invoke-OKDeleteContext) | **DELETE** /api/v{version}/GridView/context/{name} | Deletes specific context
*OKGridViewApi* | [**Edit-OKContext**](docs/OKGridViewApi.md#Edit-OKContext) | **PUT** /api/v{version}/GridView/context/{name} | Edits specific context
*OKGridViewApi* | [**Get-OKData**](docs/OKGridViewApi.md#Get-OKData) | **GET** /api/v{version}/GridView/contexts/{context}/data | Returns grid view data for specific context
*OKGridViewApi* | [**Get-OKGridViewContext**](docs/OKGridViewApi.md#Get-OKGridViewContext) | **GET** /api/v{version}/GridView/context/{name} | Returns a single context in full
*OKGridViewApi* | [**Get-OKGridViewContexts**](docs/OKGridViewApi.md#Get-OKGridViewContexts) | **GET** /api/v{version}/GridView/contexts | Returns a list of contexts for grid view.
*OKGridViewApi* | [**Get-OKSchema**](docs/OKGridViewApi.md#Get-OKSchema) | **GET** /api/v{version}/GridView/contexts/{context}/schema | Returns grid view schema for specific context
*OKLayerApi* | [**Get-OKAllLayers**](docs/OKLayerApi.md#Get-OKAllLayers) | **GET** /api/v{version}/Layer/getAllLayers | list of all layers
*OKLayerApi* | [**Get-OKLayerByName**](docs/OKLayerApi.md#Get-OKLayerByName) | **GET** /api/v{version}/Layer/getLayerByName | get a layer by name
*OKLayerApi* | [**Get-OKLayersByName**](docs/OKLayerApi.md#Get-OKLayersByName) | **GET** /api/v{version}/Layer/getLayersByName | get layers by name
*OKOKPluginGenericJSONIngestApi* | [**Get-OKAllContexts**](docs/OKOKPluginGenericJSONIngestApi.md#Get-OKAllContexts) | **GET** /api/v{version}/ingest/genericJSON/manage/context | 
*OKOKPluginGenericJSONIngestApi* | [**Get-OKContext**](docs/OKOKPluginGenericJSONIngestApi.md#Get-OKContext) | **GET** /api/v{version}/ingest/genericJSON/manage/context/{id} | 
*OKOKPluginGenericJSONIngestApi* | [**ConvertTo-OKgest**](docs/OKOKPluginGenericJSONIngestApi.md#ConvertTo-OKgest) | **POST** /api/v{version}/ingest/genericJSON/files | 
*OKOKPluginGenericJSONIngestApi* | [**Remove-OKContext**](docs/OKOKPluginGenericJSONIngestApi.md#Remove-OKContext) | **DELETE** /api/v{version}/ingest/genericJSON/manage/context/{id} | 
*OKOKPluginGenericJSONIngestApi* | [**Invoke-OKUpsertContext**](docs/OKOKPluginGenericJSONIngestApi.md#Invoke-OKUpsertContext) | **POST** /api/v{version}/ingest/genericJSON/manage/context | 
*OKRelationApi* | [**Get-OKAllMergedRelations**](docs/OKRelationApi.md#Get-OKAllMergedRelations) | **GET** /api/v{version}/Relation/getAllMergedRelations | 
*OKRelationApi* | [**Get-OKMergedRelation**](docs/OKRelationApi.md#Get-OKMergedRelation) | **GET** /api/v{version}/Relation/getMergedRelation | 
*OKRelationApi* | [**Get-OKMergedRelationsFromOrToCI**](docs/OKRelationApi.md#Get-OKMergedRelationsFromOrToCI) | **GET** /api/v{version}/Relation/getMergedRelationsFromOrToCI | 
*OKRelationApi* | [**Get-OKMergedRelationsOutgoingFromCI**](docs/OKRelationApi.md#Get-OKMergedRelationsOutgoingFromCI) | **GET** /api/v{version}/Relation/getMergedRelationsOutgoingFromCI | 
*OKRelationApi* | [**Get-OKMergedRelationsWithPredicate**](docs/OKRelationApi.md#Get-OKMergedRelationsWithPredicate) | **GET** /api/v{version}/Relation/getMergedRelationsWithPredicate | 
*OKTraitApi* | [**Get-OKEffectiveTraitsForTraitName**](docs/OKTraitApi.md#Get-OKEffectiveTraitsForTraitName) | **GET** /api/v{version}/Trait/getEffectiveTraitsForTraitName | 


## Documentation for Models

 - [okclient/Model.AddContextRequest](docs/AddContextRequest.md)
 - [okclient/Model.AnsibleInventoryScanDTO](docs/AnsibleInventoryScanDTO.md)
 - [okclient/Model.AttributeState](docs/AttributeState.md)
 - [okclient/Model.AttributeValueDTO](docs/AttributeValueDTO.md)
 - [okclient/Model.AttributeValueType](docs/AttributeValueType.md)
 - [okclient/Model.BulkCIAttributeLayerScopeDTO](docs/BulkCIAttributeLayerScopeDTO.md)
 - [okclient/Model.CIAttributeDTO](docs/CIAttributeDTO.md)
 - [okclient/Model.CIDTO](docs/CIDTO.md)
 - [okclient/Model.ChangeDataCell](docs/ChangeDataCell.md)
 - [okclient/Model.ChangeDataRequest](docs/ChangeDataRequest.md)
 - [okclient/Model.Context](docs/Context.md)
 - [okclient/Model.EditContextRequest](docs/EditContextRequest.md)
 - [okclient/Model.EffectiveTraitDTO](docs/EffectiveTraitDTO.md)
 - [okclient/Model.FragmentDTO](docs/FragmentDTO.md)
 - [okclient/Model.GraphQLQuery](docs/GraphQLQuery.md)
 - [okclient/Model.GridViewColumn](docs/GridViewColumn.md)
 - [okclient/Model.GridViewConfiguration](docs/GridViewConfiguration.md)
 - [okclient/Model.ILoadConfig](docs/ILoadConfig.md)
 - [okclient/Model.LayerDTO](docs/LayerDTO.md)
 - [okclient/Model.ProblemDetails](docs/ProblemDetails.md)
 - [okclient/Model.RelatedCIDTO](docs/RelatedCIDTO.md)
 - [okclient/Model.RelationDTO](docs/RelationDTO.md)
 - [okclient/Model.RelationState](docs/RelationState.md)
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

