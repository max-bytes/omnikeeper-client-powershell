# okclient.okclient/Api.OKGraphQLApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OKGraphQLDebug**](OKGraphQLApi.md#Invoke-OKGraphQLDebug) | **POST** /graphql-debug | 
[**Invoke-OKGraphQLGet**](OKGraphQLApi.md#Invoke-OKGraphQLGet) | **GET** /graphql | 
[**Invoke-OKGraphQLIndex**](OKGraphQLApi.md#Invoke-OKGraphQLIndex) | **POST** /graphql | 


<a name="Invoke-OKGraphQLDebug"></a>
# **Invoke-OKGraphQLDebug**
> void Invoke-OKGraphQLDebug<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GraphQLQuery] <PSCustomObject><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$GraphQLQuery = Initialize-GraphQLQuery -OperationName "MyOperationName" -Query "MyQuery" -Variables @{ key_example =  } # GraphQLQuery |  (optional)

try {
    $Result = Invoke-OKGraphQLDebug -GraphQLQuery $GraphQLQuery
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKGraphQLDebug: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

 - **Content-Type**: application/json, application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/xml, text/plain, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-OKGraphQLGet"></a>
# **Invoke-OKGraphQLGet**
> void Invoke-OKGraphQLGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OperationName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Variables] <System.Collections.Hashtable><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$OperationName = "MyOperationName" # String |  (optional)
$Query = "MyQuery" # String |  (optional)
$Variables = @{ key_example =  } # System.Collections.Hashtable |  (optional)

try {
    $Result = Invoke-OKGraphQLGet -OperationName $OperationName -Query $Query -Variables $Variables
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKGraphQLGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OperationName** | **String**|  | [optional] 
 **Query** | **String**|  | [optional] 
 **Variables** | [**System.Collections.Hashtable**](AnyType.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-OKGraphQLIndex"></a>
# **Invoke-OKGraphQLIndex**
> void Invoke-OKGraphQLIndex<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GraphQLQuery] <PSCustomObject><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$GraphQLQuery = Initialize-GraphQLQuery -OperationName "MyOperationName" -Query "MyQuery" -Variables @{ key_example =  } # GraphQLQuery |  (optional)

try {
    $Result = Invoke-OKGraphQLIndex -GraphQLQuery $GraphQLQuery
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKGraphQLIndex: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

 - **Content-Type**: application/json, application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/xml, text/plain, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

