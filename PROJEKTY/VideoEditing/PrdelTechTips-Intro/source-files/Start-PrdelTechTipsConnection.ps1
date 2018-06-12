
<#PSScriptInfo

.VERSION 1.0

.GUID 887077c7-9914-4216-84a7-3f185b081a4d

.AUTHOR megastary

.COMPANYNAME PrdelTechTips

.COPYRIGHT Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)

.TAGS FakeScript RecordingSample Dummy FakeLogin

.LICENSEURI https://creativecommons.org/licenses/by-sa/4.0/

.PROJECTURI https://github.com/prdeltechtips/PrdelTechTips.github.io/tree/master/PROJEKTY/VideoEditing/PrdelTechTips-Intro/

.ICONURI 

.EXTERNALMODULEDEPENDENCIES 

.REQUIREDSCRIPTS 

.EXTERNALSCRIPTDEPENDENCIES 

.RELEASENOTES
 1.0 - Sepsán falešný skript, který navodí atmosféru přihlašování do systému PrdelTechTips, ať je to co je to.

#>

<# 

.DESCRIPTION 
 Navodí dojem přihlašování do systému PrdelTechTips. Slouží čistě pro nahrávání videa a neplní žádnou reálnou funkci.

#> 
function Connect-PrdelTechTips
{
    Param(
        [string]$ServerName,
        [string]$Login,
        [string]$Project
    )
    $Host.UI.RawUI.ForegroundColor = "Green"
    $Credential = Get-Credential -Message "Zadejte heslo do systému:" -UserName $Login
    Write-Host "Vyčkejte na připojení k serveru"
    foreach ($percent in 1..100)
    {
        #Write-Progress -Activity "Navazování spojení" -PercentComplete $percent // bohužel nefunguje ve VSCode
        Write-Host "Navazuji spojení.. $percent%"
        Start-Sleep -Milliseconds 10
    }
    Start-Sleep 1
    Write-Warning "Spojení navázáno. Vytvářím bezpečný komunikační kanál!"
    $Host.UI.RawUI.ForegroundColor = "Yellow"
    foreach ($percent in 1..10) 
    {
        Clear-Host
        Write-Warning "Spojení navázáno. Vytvářím bezpečný komunikační kanál!"
        Write-Host "."
        Start-Sleep -Milliseconds 200
        Clear-Host
        Write-Warning "Spojení navázáno. Vytvářím bezpečný komunikační kanál!"
        Write-Host ".."
        Start-Sleep -Milliseconds 200
        Clear-Host
        Write-Warning "Spojení navázáno. Vytvářím bezpečný komunikační kanál!"
        Write-Host "..."
        Start-Sleep -Milliseconds 200
    }
    Clear-Host    
    Write-Host "Bezpečné spojení navázáno"
    Start-Sleep -Seconds 1
    Write-Warning "Vstupujete do zabezpečeného kanálu"
    Start-Sleep -Seconds 2
    Clear-Host
    Start-Sleep 1
    Get-Process
    $Host.UI.RawUI.ForegroundColor = "Green"
    Get-Process
    Clear-Host

    Write-Host "Vítejte na serveru $ServerName uživateli $Login"
    Start-Sleep -Milliseconds 200
    Write-Host "Načítám Vámi požadovaný projekt $Project. Vyčkejte prosím..."
    Write-Host ""
    Start-Sleep 2
    Write-Host "[Loaded] Video libraries"
    Start-Sleep 2
    Write-Host "[Loaded] Audio libraries"
    Start-Sleep 1
    Write-Host "[Loaded] Image libraries"
    Start-Sleep 2
    Write-Host "[Loaded] Script libraries"
    Start-Sleep 1
    Write-Host "[Loaded] Support files"
    Write-Host ""
    Write-Host "[Completed] Všechny soubory nahrány! Systém je Váš."
}

function Enter-PrdelProxy {
    param(
        [string]$ProxyName,
        [securestring]$Credential=(Get-Credential)
    )      
}

function Upload-YoutubeVideo {
    param(
        [string]$VideoName,
        [ValidateSet("Public","Private","Unlisted")][string]$Visibility        
    )
    Write-Warning "Nahrávám video na Youtube s viditelností $Visibility"
    $Host.UI.RawUI.ForegroundColor = "Yellow"
    Write-Host "Nahrávání 0%"
    Start-Sleep -Milliseconds 300
    Write-Host "Nahrávání 30%"
    Start-Sleep -Milliseconds 300
    Write-Host "Nahrávání 70%"
    Start-Sleep -Milliseconds 300
    Write-Host "Nahrávání 100%"
    Write-Host "Video vypuštěno!"
}


Upload-YoutubeVideo

