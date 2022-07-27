# InboundIDMethodByRelatedTempID
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TempID** | **String** |  | [optional] 
**OutgoingRelation** | **Boolean** |  | [optional] 
**PredicateID** | **String** |  | [optional] 
**Type** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$InboundIDMethodByRelatedTempID = Initialize-okclientInboundIDMethodByRelatedTempID  -TempID null `
 -OutgoingRelation null `
 -PredicateID null `
 -Type null
```

- Convert the resource to JSON
```powershell
$InboundIDMethodByRelatedTempID | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

