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

    .PARAMETER Name
    The name to be displayed who the testimonial is from this is a string parameter

    .PARAMETER Image
    The image to be displayed who the testimonial is from this is a string parameter

    .PARAMETER Text
    Main testimonial text for the component, this is a string parameter

    .EXAMPLE
    New-UDTestimonial -Name "Adam Bacon" -Image "https://adam-bacon.netlify.app/imgs/me.jpg" -Text "I been using Powershell for a long time, but nothing has ever come close to giving me the creativity and ability to design and produce amazing things with Powershell Universal. This is a must have bit of software for anyone wanting to improve the way things are currently done." -Project "Powershell Universal"
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