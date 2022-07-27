# GenericInboundCI
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TempID** | **String** |  | [optional] 
**IdMethod** | [**GenericInboundCIIdMethod**](GenericInboundCIIdMethod.md) |  | [optional] 
**SameTempIDHandling** | [**SameTempIDHandling**](SameTempIDHandling.md) |  | [optional] 
**SameTargetCIHandling** | [**SameTargetCIHandling**](SameTargetCIHandling.md) |  | [optional] 
**NoFoundTargetCIHandling** | [**NoFoundTargetCIHandling**](NoFoundTargetCIHandling.md) |  | [optional] 
**Attributes** | [**GenericInboundAttribute[]**](GenericInboundAttribute.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GenericInboundCI = Initialize-okclientGenericInboundCI  -TempID null `
 -IdMethod null `
 -SameTempIDHandling null `
 -SameTargetCIHandling null `
 -NoFoundTargetCIHandling null `
 -Attributes null
```

- Convert the resource to JSON
```powershell
$GenericInboundCI | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

