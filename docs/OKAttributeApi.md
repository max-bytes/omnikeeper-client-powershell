# okclient.okclient/Api.OKAttributeApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-OKBulkReplaceAttributesInLayer**](OKAttributeApi.md#Invoke-OKBulkReplaceAttributesInLayer) | **POST** /api/v{version}/Attribute/bulkReplaceAttributesInLayer | bulk replace all attributes in specified layer
[**Find-OKMergedAttributesByName**](OKAttributeApi.md#Find-OKMergedAttributesByName) | **GET** /api/v{version}/Attribute/findMergedAttributesByName | 
[**Get-OKMergedAttribute**](OKAttributeApi.md#Get-OKMergedAttribute) | **GET** /api/v{version}/Attribute/getMergedAttribute | 
[**Get-OKMergedAttributes**](OKAttributeApi.md#Get-OKMergedAttributes) | **GET** /api/v{version}/Attribute/getMergedAttributes | 
[**Get-OKMergedAttributesWithName**](OKAttributeApi.md#Get-OKMergedAttributesWithName) | **GET** /api/v{version}/Attribute/getMergedAttributesWithName | 


<a name="Invoke-OKBulkReplaceAttributesInLayer"></a>
# **Invoke-OKBulkReplaceAttributesInLayer**
> void Invoke-OKBulkReplaceAttributesInLayer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BulkCIAttributeLayerScopeDTO] <PSCustomObject><br>

bulk replace all attributes in specified layer

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Version = "MyVersion" # String | 
$AttributeValueDTO = Initialize-AttributeValueDTO -Type "Text" -IsArray $false -Values "MyValues"
$FragmentDTO = Initialize-FragmentDTO -Name "MyName" -Value $AttributeValueDTO -Ciid "MyCiid"

$BulkCIAttributeLayerScopeDTO = Initialize-BulkCIAttributeLayerScopeDTO -NamePrefix "MyNamePrefix" -LayerID 0 -Fragments $FragmentDTO # BulkCIAttributeLayerScopeDTO | 

# bulk replace all attributes in specified layer
try {
    $Result = Invoke-OKBulkReplaceAttributesInLayer -Version $Version -BulkCIAttributeLayerScopeDTO $BulkCIAttributeLayerScopeDTO
} catch {
    Write-Host ("Exception occured when calling Invoke-OKBulkReplaceAttributesInLayer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Version** | **String**|  | 
 **BulkCIAttributeLayerScopeDTO** | [**BulkCIAttributeLayerScopeDTO**](BulkCIAttributeLayerScopeDTO.md)|  | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, application/json-patch+json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Find-OKMergedAttributesByName"></a>
# **Find-OKMergedAttributesByName**
> CIAttributeDTO[] Find-OKMergedAttributesByName<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Regex] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LayerIDs] <System.Nullable[Int64][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Ciids] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AtTime] <System.Nullable[System.DateTime]><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Regex = "MyRegex" # String | 
$LayerIDs = 0 # Int64[] | 
$Version = "MyVersion" # String | 
$Ciids = "MyCiids" # String[] |  (optional)
$AtTime = (Get-Date) # System.DateTime |  (optional)

try {
    $Result = Find-OKMergedAttributesByName -Regex $Regex -LayerIDs $LayerIDs -Version $Version -Ciids $Ciids -AtTime $AtTime
} catch {
    Write-Host ("Exception occured when calling Find-OKMergedAttributesByName: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Regex** | **String**|  | 
 **LayerIDs** | [**Int64[]**](Int64.md)|  | 
 **Version** | **String**|  | 
 **Ciids** | [**String[]**](String.md)|  | [optional] 
 **AtTime** | **System.DateTime**|  | [optional] 

### Return type

[**CIAttributeDTO[]**](CIAttributeDTO.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, text/plain, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-OKMergedAttribute"></a>
# **Get-OKMergedAttribute**
> CIAttributeDTO Get-OKMergedAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Ciid] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LayerIDs] <System.Nullable[Int64][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
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
$Name = "MyName" # String | 
$LayerIDs = 0 # Int64[] | 
$Version = "MyVersion" # String | 
$AtTime = (Get-Date) # System.DateTime |  (optional)

try {
    $Result = Get-OKMergedAttribute -Ciid $Ciid -Name $Name -LayerIDs $LayerIDs -Version $Version -AtTime $AtTime
} catch {
    Write-Host ("Exception occured when calling Get-OKMergedAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Ciid** | [**String**](String.md)|  | 
 **Name** | **String**|  | 
 **LayerIDs** | [**Int64[]**](Int64.md)|  | 
 **Version** | **String**|  | 
 **AtTime** | **System.DateTime**|  | [optional] 

### Return type

[**CIAttributeDTO**](CIAttributeDTO.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, text/plain, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-OKMergedAttributes"></a>
# **Get-OKMergedAttributes**
> CIAttributeDTO[] Get-OKMergedAttributes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Ciids] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LayerIDs] <System.Nullable[Int64][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AtTime] <System.Nullable[System.DateTime]><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Ciids = "MyCiids" # String[] | 
$LayerIDs = 0 # Int64[] | 
$Version = "MyVersion" # String | 
$AtTime = (Get-Date) # System.DateTime |  (optional)

try {
    $Result = Get-OKMergedAttributes -Ciids $Ciids -LayerIDs $LayerIDs -Version $Version -AtTime $AtTime
} catch {
    Write-Host ("Exception occured when calling Get-OKMergedAttributes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Ciids** | [**String[]**](String.md)|  | 
 **LayerIDs** | [**Int64[]**](Int64.md)|  | 
 **Version** | **String**|  | 
 **AtTime** | **System.DateTime**|  | [optional] 

### Return type

[**CIAttributeDTO[]**](CIAttributeDTO.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, text/plain, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-OKMergedAttributesWithName"></a>
# **Get-OKMergedAttributesWithName**
> CIAttributeDTO[] Get-OKMergedAttributesWithName<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LayerIDs] <System.Nullable[Int64][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AtTime] <System.Nullable[System.DateTime]><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Name = "MyName" # String | 
$LayerIDs = 0 # Int64[] | 
$Version = "MyVersion" # String | 
$AtTime = (Get-Date) # System.DateTime |  (optional)

try {
    $Result = Get-OKMergedAttributesWithName -Name $Name -LayerIDs $LayerIDs -Version $Version -AtTime $AtTime
} catch {
    Write-Host ("Exception occured when calling Get-OKMergedAttributesWithName: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**|  | 
 **LayerIDs** | [**Int64[]**](Int64.md)|  | 
 **Version** | **String**|  | 
 **AtTime** | **System.DateTime**|  | [optional] 

### Return type

[**CIAttributeDTO[]**](CIAttributeDTO.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;odata.metadata=minimal;odata.streaming=true, application/json;odata.metadata=minimal;odata.streaming=false, application/json;odata.metadata=minimal, application/json;odata.metadata=full;odata.streaming=true, application/json;odata.metadata=full;odata.streaming=false, application/json;odata.metadata=full, application/json;odata.metadata=none;odata.streaming=true, application/json;odata.metadata=none;odata.streaming=false, application/json;odata.metadata=none, application/json;odata.streaming=true, application/json;odata.streaming=false, application/json, application/xml, application/odata, text/plain, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

