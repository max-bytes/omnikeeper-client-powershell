# AnsibleInventoryScanDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SetupFacts** | **System.Collections.Hashtable** |  | 
**YumInstalled** | **System.Collections.Hashtable** |  | 
**YumRepos** | **System.Collections.Hashtable** |  | 
**YumUpdates** | **System.Collections.Hashtable** |  | 

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

