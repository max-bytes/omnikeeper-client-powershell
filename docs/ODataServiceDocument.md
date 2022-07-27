# ODataServiceDocument
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TypeAnnotation** | [**ODataTypeAnnotation**](ODataTypeAnnotation.md) |  | [optional] 
**EntitySets** | [**ODataEntitySetInfo[]**](ODataEntitySetInfo.md) |  | [optional] 
**Singletons** | [**ODataSingletonInfo[]**](ODataSingletonInfo.md) |  | [optional] 
**FunctionImports** | [**ODataFunctionImportInfo[]**](ODataFunctionImportInfo.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ODataServiceDocument = Initialize-okclientODataServiceDocument  -TypeAnnotation null `
 -EntitySets null `
 -Singletons null `
 -FunctionImports null
```

- Convert the resource to JSON
```powershell
$ODataServiceDocument | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

