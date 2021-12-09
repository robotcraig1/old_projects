

$assetTag = (Get-CIMInstance -Class win32_systemenclosure).smbiosassettag
#$hddSerialNumber = (Get-CIMInstance -Class win32_physicalmedia).serialnumber
$model = (Get-CimInstance -Class win32_computersystem).model 
$trustName = (Get-Item "HKLM:\SOFTWARE\GEM").GetValue("Organisation")

Clear-Host
$text

$locationTag = Read-Host -prompt "Please enter where the device is being built/stored (Barnes/Fen House/etc):"
$locationTag = $locationTag.Substring(0,1).ToUpper()+ $locationTag.Substring(1).ToLower()
Clear-Host
Write-Output -InputObject "This file will create the Shared and Printed Directorys on the C Drive, adjust permissions for them, and allow you to update bios, rename the device and add it to the domain"
Write-Output -InputObject ""
Write-Output -InputObject ""
Write-Host "Here is the information we have about this build:"
$menu = "1. Asset Tag: $assetTag", "2. Trust: $trustName", "3. Location: $locationTag", "4. Model: $model"
$menu
Write-Output -InputObject ""
Write-Output -InputObject ""
Write-Output -InputObject ""
Write-Output -InputObject ""
$assetCheck = Read-Host -Prompt "Is your asset tag correct? Type no if not."

If ($assetCheck.ToUpper() -eq "NO"){
    $assetTag = Read-Host -Prompt "Please enter the correct asset tag"
}
If ($assetCheck.ToUpper() -eq "THERE IS A MISTAKE"){
    Write-Host "It was that bloody Craig Martell"
    Write-Host "He's always making bloody mistakes"
    Write-Output -InputObject ""
    Write-Output -InputObject ""
}
Write-Host "Here is the updated information we have about this build:"
$menu = "1. Asset Tag: $assetTag", "2. Trust: $trustName", "3. Location: $locationTag", "4. Model: $model"
$menu
Write-Output -InputObject ""
Write-Output -InputObject ""
Write-Host "Press any key to continue"
pause

#####Finds Pen Drive####
$folder = "Build"
$Drivename = (Get-PSDrive) | Where-Object {
    $_.root -match "[C-Z]:\\" -and (Test-Path $(Join-Path $_.root $folder))
}
$Drivename = $Drivename.Name


If ($trustName -eq "GP - NHS Lincolnshire CCG"){
    $trustName = "GP"
}
ElseIf ($trustName -eq "Lincolnshire Community Health Services"){
    $trustName = "LCHS"
}
ElseIf ($trustName -eq "Lincolnshire Partnership NHS Foundation Trust"){
    $trustName = "LPFT"
}
ElseIf ($trustName -eq "NHS Lincolnshire CCG"){
    #Make one for CCG
    $trustName = "GP"
}
ElseIf ($trustName -eq "Arden GEM CSU"){
    $trustName = "GEM"
}
Else{
    Write-Host ("Trust not recognised within Registry please check GEM Reg key")
    Write-Host ($trustName)
}

#New-Item -Path ($Drivename + ":\Build\" + $Trustname + ".txt") -ItemType file

#Create Various Directorys
Invoke-Item -Path ($Drivename.ToUpper() + ":\Build\Tasks\01. Directorys" + $Trustname.ToUpper() + ".lnk")



(Get-WmiObject win32_computersystem).rename("$assetTag")
Add-Computer -Credential LSS\Benh -DomainName lss.xlincs.nhs.uk -NewName $assetTag

Write-Output -InputObject ""
Write-Output -InputObject ""
Write-Output -InputObject ""
Write-Output -InputObject "After restart your computer will be called $Compname on the LSS domain provided your login credentials were correct."
Write-Output -InputObject ""
Write-Output -InputObject ""
######################
$trustName = (Get-Item "HKLM:\SOFTWARE\GEM").GetValue("Organisation")
If ($trustName -eq "Lincolnshire Community Health Services"){
    $trustName = "LCHS"
}
ElseIf ($trustName -eq "Lincolnshire Partnership NHS Foundation Trust"){
    $trustName = "LPFT"
}
ElseIf ($trustName -eq "GP - NHS Lincolnshire CCG") {
    If ($assetTag.Substring(0,5) -eq "NLCCG"){
    $trustName = "NLCCG"
    }
    Else {
    $trustName = $assetTag.Substring(0,4)
    }
}
ElseIf ($trustName -eq "NHS Lincolnshire CCG"){
    $trustName = "NLCCG"
}
ElseIf ($trustName -eq "Arden GEM CSU"){
    $trustName = "AGCSU"
}

$description = "$model - W10 KACE - $locationTag - $trustName Coin Stock"

Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Services\LanmanServer\Parameters" -Name "srvcomment" -Value $description
Write-Host "Your computer description has been set as:"
Write-Output -InputObject ""
Write-Host "$description"



Invoke-Item -Path ("C:\Shared Folder\Build\Tasks\02. DescBiosModel.lnk")


# $lchsbuild = "C:\Shared Folder\LCHS.txt"
# $lchsexists = Test-Path $lchsbuild


# $gpbuild = "C:\Shared Folder\GP.txt"
# $gpbuild = "C:\Shared Folder\GP.txt"


# $lpftbuild = "C:\Shared Folder\LPFT.txt"
