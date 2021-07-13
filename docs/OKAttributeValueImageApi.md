# okclient.okclient/Api.OKAttributeValueImageApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-OK**](OKAttributeValueImageApi.md#Get-OK) | **GET** /api/v{version}/AttributeValueImage | 
[**Submit-OK**](OKAttributeValueImageApi.md#Submit-OK) | **POST** /api/v{version}/AttributeValueImage | 


<a name="Get-OK"></a>
# **Get-OK**
> void Get-OK<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Ciid] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttributeName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LayerIDs] <System.Nullable[Int64][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Index] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AtTime] <System.Nullable[System.DateTime]><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Ciid = 38400000-8cf0-11bd-b23e-10b96e4ef00d # String | 
$AttributeName = "MyAttributeName" # String | 
$LayerIDs = 0 # Int64[] | 
$Version = "MyVersion" # String | 
$Index = 56 # Int32 |  (optional) (default to 0)
$AtTime = (Get-Date) # System.DateTime |  (optional)

try {
    $Result = Get-OK -Ciid $Ciid -AttributeName $AttributeName -LayerIDs $LayerIDs -Version $Version -Index $Index -AtTime $AtTime
} catch {
    Write-Host ("Exception occured when calling Get-OK: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Ciid** | [**String**](String.md)|  | 
 **AttributeName** | **String**|  | 
 **LayerIDs** | [**Int64[]**](Int64.md)|  | 
 **Version** | **String**|  | 
 **Index** | **Int32**|  | [optional] [default to 0]
 **AtTime** | **System.DateTime**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-OK"></a>
# **Submit-OK**
> void Submit-OK<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Ciid] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttributeName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LayerID] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Files] <System.IO.FileInfo[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ForceArray] <System.Nullable[Boolean]><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Ciid = 38400000-8cf0-11bd-b23e-10b96e4ef00d # String | 
$AttributeName = "MyAttributeName" # String | 
$LayerID = 789 # Int64 | 
$Version = "MyVersion" # String | 
$Files =  # System.IO.FileInfo[] | 
$ForceArray = $true # Boolean |  (optional) (default to $false)

try {
    $Result = Submit-OK -Ciid $Ciid -AttributeName $AttributeName -LayerID $LayerID -Version $Version -Files $Files -ForceArray $ForceArray
} catch {
    Write-Host ("Exception occured when calling Submit-OK: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Ciid** | [**String**](String.md)|  | 
 **AttributeName** | **String**|  | 
 **LayerID** | **Int64**|  | 
 **Version** | **String**|  | 
 **Files** | **System.IO.FileInfo[]**|  | 
 **ForceArray** | **Boolean**|  | [optional] [default to $false]

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

