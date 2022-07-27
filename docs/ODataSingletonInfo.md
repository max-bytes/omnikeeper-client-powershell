# ODataSingletonInfo
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
$ODataSingletonInfo = Initialize-okclientODataSingletonInfo  -TypeAnnotation null `
 -Url null `
 -Name null `
 -Title null
```

- Convert the resource to JSON
```powershell
$ODataSingletonInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

