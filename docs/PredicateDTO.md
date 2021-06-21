# PredicateDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**WordingFrom** | **String** |  | [optional] 
**WordingTo** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PredicateDTO = Initialize-okclientPredicateDTO  -Id null `
 -WordingFrom null `
 -WordingTo null
```

- Convert the resource to JSON
```powershell
$PredicateDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

