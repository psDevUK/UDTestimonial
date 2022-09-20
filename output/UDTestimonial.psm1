$IndexJs = Get-ChildItem "$PSScriptRoot\index.*.bundle.js"
$AssetId = [UniversalDashboard.Services.AssetService]::Instance.RegisterAsset($IndexJs.FullName)

function New-UDTestimonial {
    <#
    .SYNOPSIS
    Creates a new component
    
    .DESCRIPTION
    Creates a new component
    
    .PARAMETER Id
    The ID of this editor

    .PARAMETER Text
    Text for the component

    .EXAMPLE
    New-UDComponent -Text 'Hello, world!'
    #>
    
    param(
        [Parameter()]
        [string]$Id = (New-Guid).ToString(),
        [Parameter()]
        [string]$Name,
        [Parameter()]
        [string]$Image,
        [Parameter()]
        [string]$Text,
        [Parameter()]
        [string]$Project
    )

    End {
        @{
            assetId = $AssetId 
            isPlugin = $true 
            type = "udtestimonial"
            id = $Id

            name = $Name
            image = $Image
            content = $Text
            project = $Project
        }
    }
}