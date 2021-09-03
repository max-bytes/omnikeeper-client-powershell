# okclient.okclient/Api.OKGraphQLApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Debug-OK**](OKGraphQLApi.md#Debug-OK) | **POST** /graphql-debug | 
[**ConvertTo-OKdex**](OKGraphQLApi.md#ConvertTo-OKdex) | **POST** /graphql | 


<a name="Debug-OK"></a>
# **Debug-OK**
> void Debug-OK<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GraphQLQuery] <PSCustomObject><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$GraphQLQuery = Initialize-GraphQLQuery -OperationName "MyOperationName" -NamedQuery "MyNamedQuery" -Query "MyQuery" -Variables # GraphQLQuery |  (optional)

try {
    $Result = Debug-OK -GraphQLQuery $GraphQLQuery
} catch {
    Write-Host ("Exception occurred when calling Debug-OK: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GraphQLQuery** | [**GraphQLQuery**](GraphQLQuery.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, application/json-patch+json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="ConvertTo-OKdex"></a>
# **ConvertTo-OKdex**
> void ConvertTo-OKdex<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GraphQLQuery] <PSCustomObject><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$GraphQLQuery = Initialize-GraphQLQuery -OperationName "MyOperationName" -NamedQuery "MyNamedQuery" -Query "MyQuery" -Variables # GraphQLQuery |  (optional)

try {
    $Result = ConvertTo-OKdex -GraphQLQuery $GraphQLQuery
} catch {
    Write-Host ("Exception occurred when calling ConvertTo-OKdex: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GraphQLQuery** | [**GraphQLQuery**](GraphQLQuery.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, application/json-patch+json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

