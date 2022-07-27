# IEdmEntityContainerElement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContainerElementKind** | [**EdmContainerElementKind**](EdmContainerElementKind.md) |  | [optional] 
**Container** | [**IEdmEntityContainer**](IEdmEntityContainer.md) |  | [optional] 
**Name** | **String** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$IEdmEntityContainerElement = Initialize-okclientIEdmEntityContainerElement  -ContainerElementKind null `
 -Container null `
 -Name null
```

- Convert the resource to JSON
```powershell
$IEdmEntityContainerElement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

