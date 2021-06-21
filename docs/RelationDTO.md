# RelationDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**FromCIID** | **String** |  | 
**ToCIID** | **String** |  | 
**PredicateID** | **String** |  | [readonly] 
**Predicate** | [**PredicateDTO**](PredicateDTO.md) |  | 
**State** | [**RelationState**](RelationState.md) |  | 

## Examples

- Prepare the resource
```powershell
$RelationDTO = Initialize-okclientRelationDTO  -Id null `
 -FromCIID null `
 -ToCIID null `
 -PredicateID null `
 -Predicate null `
 -State null
```

- Convert the resource to JSON
```powershell
$RelationDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

