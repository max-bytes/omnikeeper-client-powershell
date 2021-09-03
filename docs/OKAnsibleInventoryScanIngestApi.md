# okclient.okclient/Api.OKAnsibleInventoryScanIngestApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ConvertTo-OKgestAnsibleInventoryScan**](OKAnsibleInventoryScanIngestApi.md#ConvertTo-OKgestAnsibleInventoryScan) | **POST** /api/v{version}/Ingest/AnsibleInventoryScan | 


<a name="ConvertTo-OKgestAnsibleInventoryScan"></a>
# **ConvertTo-OKgestAnsibleInventoryScan**
> void ConvertTo-OKgestAnsibleInventoryScan<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WriteLayerID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchLayerIDs] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AnsibleInventoryScanDTO] <PSCustomObject><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$WriteLayerID = "MyWriteLayerID" # String | 
$SearchLayerIDs = "MySearchLayerIDs" # String[] | 
$Version = "MyVersion" # String | 
$AnsibleInventoryScanDTO = Initialize-AnsibleInventoryScanDTO -SetupFacts @{ key_example =  } -YumInstalled @{ key_example =  } -YumRepos @{ key_example =  } -YumUpdates @{ key_example =  } # AnsibleInventoryScanDTO | 

try {
    $Result = ConvertTo-OKgestAnsibleInventoryScan -WriteLayerID $WriteLayerID -SearchLayerIDs $SearchLayerIDs -Version $Version -AnsibleInventoryScanDTO $AnsibleInventoryScanDTO
} catch {
    Write-Host ("Exception occurred when calling ConvertTo-OKgestAnsibleInventoryScan: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WriteLayerID** | **String**|  | 
 **SearchLayerIDs** | [**String[]**](String.md)|  | 
 **Version** | **String**|  | 
 **AnsibleInventoryScanDTO** | [**AnsibleInventoryScanDTO**](AnsibleInventoryScanDTO.md)|  | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, application/json-patch+json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

