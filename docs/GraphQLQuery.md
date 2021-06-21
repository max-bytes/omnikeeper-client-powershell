# GraphQLQuery
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OperationName** | **String** |  | [optional] 
**NamedQuery** | **String** |  | [optional] 
**Query** | **String** |  | [optional] 
**Variables** | [**SystemCollectionsHashtable**](.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GraphQLQuery = Initialize-okclientGraphQLQuery  -OperationName null `
 -NamedQuery null `
 -Query null `
 -Variables null
```

- Convert the resource to JSON
```powershell
$GraphQLQuery | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

