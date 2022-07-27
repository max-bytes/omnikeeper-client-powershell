# InboundIDMethodByRelatedTempID
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | [optional] [readonly] 
**TempID** | **String** |  | [optional] 
**OutgoingRelation** | **Boolean** |  | [optional] 
**PredicateID** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InboundIDMethodByRelatedTempID = Initialize-okclientInboundIDMethodByRelatedTempID  -Type null `
 -TempID null `
 -OutgoingRelation null `
 -PredicateID null
```

- Convert the resource to JSON
```powershell
$InboundIDMethodByRelatedTempID | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

