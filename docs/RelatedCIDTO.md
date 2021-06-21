# RelatedCIDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FromCIID** | **String** |  | 
**ToCIID** | **String** |  | 
**PredicateID** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$RelatedCIDTO = Initialize-okclientRelatedCIDTO  -FromCIID null `
 -ToCIID null `
 -PredicateID null
```

- Convert the resource to JSON
```powershell
$RelatedCIDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

