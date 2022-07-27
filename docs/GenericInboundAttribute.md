# GenericInboundAttribute
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Value** | [**AttributeValueDTO**](AttributeValueDTO.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GenericInboundAttribute = Initialize-okclientGenericInboundAttribute  -Name null `
 -Value null
```

- Convert the resource to JSON
```powershell
$GenericInboundAttribute | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

