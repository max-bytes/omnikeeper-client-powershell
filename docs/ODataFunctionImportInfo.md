# ODataFunctionImportInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TypeAnnotation** | [**ODataTypeAnnotation**](ODataTypeAnnotation.md) |  | [optional] 
**Url** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Title** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ODataFunctionImportInfo = Initialize-okclientODataFunctionImportInfo  -TypeAnnotation null `
 -Url null `
 -Name null `
 -Title null
```

- Convert the resource to JSON
```powershell
$ODataFunctionImportInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

