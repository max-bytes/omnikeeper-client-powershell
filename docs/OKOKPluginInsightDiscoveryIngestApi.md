# okclient.okclient\Api.OKOKPluginInsightDiscoveryIngestApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ConvertTo-OKgestFileIngest**](OKOKPluginInsightDiscoveryIngestApi.md#ConvertTo-OKgestFileIngest) | **POST** /api/v{version}/ingest/insight-discovery/file | 


<a id="ConvertTo-OKgestFileIngest"></a>
# **ConvertTo-OKgestFileIngest**
> void ConvertTo-OKgestFileIngest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Context] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContentType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContentDisposition] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Headers] <System.Collections.Hashtable><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Length] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FileName] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Context = "MyContext" # String | 
$Version = "MyVersion" # String | 
$ContentType = "MyContentType" # String |  (optional)
$ContentDisposition = "MyContentDisposition" # String |  (optional)
$Headers = @{ key_example = "MyInner" } # System.Collections.Hashtable |  (optional)
$Length = 789 # Int64 |  (optional)
$Name = "MyName" # String |  (optional)
$FileName = "MyFileName" # String |  (optional)

try {
    $Result = ConvertTo-OKgestFileIngest -Context $Context -Version $Version -ContentType $ContentType -ContentDisposition $ContentDisposition -Headers $Headers -Length $Length -Name $Name -FileName $FileName
} catch {
    Write-Host ("Exception occurred when calling ConvertTo-OKgestFileIngest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Context** | **String**|  | 
 **Version** | **String**|  | 
 **ContentType** | **String**|  | [optional] 
 **ContentDisposition** | **String**|  | [optional] 
 **Headers** | [**System.Collections.Hashtable**](Map.md)|  | [optional] 
 **Length** | **Int64**|  | [optional] 
 **Name** | **String**|  | [optional] 
 **FileName** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

