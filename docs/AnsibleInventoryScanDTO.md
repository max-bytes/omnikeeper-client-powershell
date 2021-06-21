# AnsibleInventoryScanDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SetupFacts** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | 
**YumInstalled** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | 
**YumRepos** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | 
**YumUpdates** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) |  | 

## Examples

- Prepare the resource
```powershell
$AnsibleInventoryScanDTO = Initialize-okclientAnsibleInventoryScanDTO  -SetupFacts null `
 -YumInstalled null `
 -YumRepos null `
 -YumUpdates null
```

- Convert the resource to JSON
```powershell
$AnsibleInventoryScanDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

