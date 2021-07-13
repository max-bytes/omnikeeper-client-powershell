# okclient.okclient/Api.OKCIApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-OKAllCIIDs**](OKCIApi.md#Get-OKAllCIIDs) | **GET** /api/v{version}/CI/getAllCIIDs | list of all CI-IDs
[**Get-OKCIByID**](OKCIApi.md#Get-OKCIByID) | **GET** /api/v{version}/CI/getCIByID | single CI by CI-ID
[**Get-OKCIsByID**](OKCIApi.md#Get-OKCIsByID) | **GET** /api/v{version}/CI/getCIsByID | multiple CIs by CI-ID  !Watch out for the query URL getting too long because of a lot of CIIDs!  TODO: consider using POST


<a name="Get-OKAllCIIDs"></a>
# **Get-OKAllCIIDs**
> String[] Get-OKAllCIIDs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>

list of all CI-IDs

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Version = "MyVersion" # String | 

# list of all CI-IDs
try {
    $Result = Get-OKAllCIIDs -Version $Version
} catch {
    Write-Host ("Exception occured when calling Get-OKAllCIIDs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Version** | **String**|  | 

### Return type

**String[]**

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, text/plain, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-OKCIByID"></a>
# **Get-OKCIByID**
> CIDTO Get-OKCIByID<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LayerIDs] <System.Nullable[Int64][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CIID] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AtTime] <System.Nullable[System.DateTime]><br>

single CI by CI-ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$LayerIDs = 0 # Int64[] | Specifies which layers contribute to the result, and in which order
$CIID = 38400000-8cf0-11bd-b23e-10b96e4ef00d # String | 
$Version = "MyVersion" # String | 
$AtTime = (Get-Date) # System.DateTime | Specify datetime, for which point in time to get the data; leave empty to use current time (https://www.newtonsoft.com/json/help/html/DatesInJSON.htm) (optional)

# single CI by CI-ID
try {
    $Result = Get-OKCIByID -LayerIDs $LayerIDs -CIID $CIID -Version $Version -AtTime $AtTime
} catch {
    Write-Host ("Exception occured when calling Get-OKCIByID: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LayerIDs** | [**Int64[]**](Int64.md)| Specifies which layers contribute to the result, and in which order | 
 **CIID** | [**String**](String.md)|  | 
 **Version** | **String**|  | 
 **AtTime** | **System.DateTime**| Specify datetime, for which point in time to get the data; leave empty to use current time (https://www.newtonsoft.com/json/help/html/DatesInJSON.htm) | [optional] 

### Return type

[**CIDTO**](CIDTO.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, text/plain, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-OKCIsByID"></a>
# **Get-OKCIsByID**
> CIDTO[] Get-OKCIsByID<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LayerIDs] <System.Nullable[Int64][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CIIDs] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AtTime] <System.Nullable[System.DateTime]><br>

multiple CIs by CI-ID  !Watch out for the query URL getting too long because of a lot of CIIDs!  TODO: consider using POST

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$LayerIDs = 0 # Int64[] | Specifies which layers contribute to the result, and in which order
$CIIDs = "MyCIIDs" # String[] | 
$Version = "MyVersion" # String | 
$AtTime = (Get-Date) # System.DateTime | Specify datetime, for which point in time to get the data; leave empty to use current time (https://www.newtonsoft.com/json/help/html/DatesInJSON.htm) (optional)

# multiple CIs by CI-ID  !Watch out for the query URL getting too long because of a lot of CIIDs!  TODO: consider using POST
try {
    $Result = Get-OKCIsByID -LayerIDs $LayerIDs -CIIDs $CIIDs -Version $Version -AtTime $AtTime
} catch {
    Write-Host ("Exception occured when calling Get-OKCIsByID: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LayerIDs** | [**Int64[]**](Int64.md)| Specifies which layers contribute to the result, and in which order | 
 **CIIDs** | [**String[]**](String.md)|  | 
 **Version** | **String**|  | 
 **AtTime** | **System.DateTime**| Specify datetime, for which point in time to get the data; leave empty to use current time (https://www.newtonsoft.com/json/help/html/DatesInJSON.htm) | [optional] 

### Return type

[**CIDTO[]**](CIDTO.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, text/plain, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

