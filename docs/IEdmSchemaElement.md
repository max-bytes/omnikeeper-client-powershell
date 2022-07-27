# IEdmSchemaElement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SchemaElementKind** | [**EdmSchemaElementKind**](EdmSchemaElementKind.md) |  | [optional] 
**Namespace** | **String** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IEdmSchemaElement = Initialize-okclientIEdmSchemaElement  -SchemaElementKind null `
 -Namespace null `
 -Name null
```

- Convert the resource to JSON
```powershell
$IEdmSchemaElement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

