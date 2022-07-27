# okclient.okclient/Api.OKAttributeValueImageApi

All URIs are relative to *https://localhost:44378*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OKAttributeValueImageGet**](OKAttributeValueImageApi.md#Invoke-OKAttributeValueImageGet) | **GET** /api/v{version}/AttributeValueImage | 
[**Invoke-OKAttributeValueImagePost**](OKAttributeValueImageApi.md#Invoke-OKAttributeValueImagePost) | **POST** /api/v{version}/AttributeValueImage | 


<a name="Invoke-OKAttributeValueImageGet"></a>
# **Invoke-OKAttributeValueImageGet**
> void Invoke-OKAttributeValueImageGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Ciid] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttributeName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LayerIDs] <String[]><br>
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

$Ciid = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | 
$AttributeName = "MyAttributeName" # String | 
$LayerIDs = "MyLayerIDs" # String[] | 
$Version = "MyVersion" # String | 
$Index = 56 # Int32 |  (optional) (default to 0)
$AtTime = (Get-Date) # System.DateTime |  (optional)

try {
    $Result = Invoke-OKAttributeValueImageGet -Ciid $Ciid -AttributeName $AttributeName -LayerIDs $LayerIDs -Version $Version -Index $Index -AtTime $AtTime
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKAttributeValueImageGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Ciid** | **String**|  | 
 **AttributeName** | **String**|  | 
 **LayerIDs** | [**String[]**](String.md)|  | 
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

<a name="Invoke-OKAttributeValueImagePost"></a>
# **Invoke-OKAttributeValueImagePost**
> void Invoke-OKAttributeValueImagePost<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Ciid] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttributeName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LayerID] <String><br>
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

$Ciid = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | 
$AttributeName = "MyAttributeName" # String | 
$LayerID = "MyLayerID" # String | 
$Version = "MyVersion" # String | 
$Files =  # System.IO.FileInfo[] | 
$ForceArray = $true # Boolean |  (optional) (default to $false)

try {
    $Result = Invoke-OKAttributeValueImagePost -Ciid $Ciid -AttributeName $AttributeName -LayerID $LayerID -Version $Version -Files $Files -ForceArray $ForceArray
} catch {
    Write-Host ("Exception occurred when calling Invoke-OKAttributeValueImagePost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Ciid** | **String**|  | 
 **AttributeName** | **String**|  | 
 **LayerID** | **String**|  | 
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

