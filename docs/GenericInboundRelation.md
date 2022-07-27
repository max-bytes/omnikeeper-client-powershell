# GenericInboundRelation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarFrom** | **String** |  | [optional] 
**Predicate** | **String** |  | [optional] 
**To** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GenericInboundRelation = Initialize-okclientGenericInboundRelation  -VarFrom null `
 -Predicate null `
 -To null
```

- Convert the resource to JSON
```powershell
$GenericInboundRelation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

