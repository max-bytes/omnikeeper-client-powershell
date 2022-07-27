# IEdmTerm
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**IEdmTypeReference**](IEdmTypeReference.md) |  | [optional] 
**AppliesTo** | **String** |  | [optional] [readonly] 
**DefaultValue** | **String** |  | [optional] [readonly] 
**SchemaElementKind** | [**EdmSchemaElementKind**](EdmSchemaElementKind.md) |  | [optional] 
**Namespace** | **String** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IEdmTerm = Initialize-okclientIEdmTerm  -Type null `
 -AppliesTo null `
 -DefaultValue null `
 -SchemaElementKind null `
 -Namespace null `
 -Name null
```

- Convert the resource to JSON
```powershell
$IEdmTerm | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

