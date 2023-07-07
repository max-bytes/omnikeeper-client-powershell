# okclient.okclient/Api.OKUsageStatsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OKUsageStatsFetch**](OKUsageStatsApi.md#Invoke-OKUsageStatsFetch) | **GET** /api/v{version}/UsageStats/fetch | 


<a id="Invoke-OKUsageStatsFetch"></a>
# **Invoke-OKUsageStatsFetch**
> void Invoke-OKUsageStatsFetch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-From] <System.DateTime><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-To] <System.DateTime><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$From = (Get-Date) # System.DateTime | 
$To = (Get-Date) # System.DateTime | 
$Version = "MyVersion" # String | 

try {
    $Result = Invoke-OKUsageStatsFetch -From $From -To $To -Version $Version
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKUsageStatsFetch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **From** | **System.DateTime**|  | 
 **To** | **System.DateTime**|  | 
 **Version** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

