# GenericInboundData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cis** | [**GenericInboundCI[]**](GenericInboundCI.md) |  | [optional] 
**Relations** | [**GenericInboundRelation[]**](GenericInboundRelation.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GenericInboundData = Initialize-okclientGenericInboundData  -Cis null `
 -Relations null
```

- Convert the resource to JSON
```powershell
$GenericInboundData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

