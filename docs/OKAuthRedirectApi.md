# okclient.okclient/Api.OKAuthRedirectApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OKAuthRedirectIndex**](OKAuthRedirectApi.md#Invoke-OKAuthRedirectIndex) | **GET** /.well-known/openid-configuration | 


<a name="Invoke-OKAuthRedirectIndex"></a>
# **Invoke-OKAuthRedirectIndex**
> void Invoke-OKAuthRedirectIndex<br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


try {
    $Result = Invoke-OKAuthRedirectIndex
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKAuthRedirectIndex: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

