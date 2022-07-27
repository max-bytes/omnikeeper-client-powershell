# IEdmEntityContainer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Elements** | [**IEdmEntityContainerElement[]**](IEdmEntityContainerElement.md) |  | [optional] [readonly] 
**SchemaElementKind** | [**EdmSchemaElementKind**](EdmSchemaElementKind.md) |  | [optional] 
**Namespace** | **String** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IEdmEntityContainer = Initialize-okclientIEdmEntityContainer  -Elements null `
 -SchemaElementKind null `
 -Namespace null `
 -Name null
```

- Convert the resource to JSON
```powershell
$IEdmEntityContainer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

