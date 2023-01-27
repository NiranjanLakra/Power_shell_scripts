$supported_os_list = 'Windows 7 Starter','Windows 7 Premium','Windows 7 Home Basic','Windows 7 Ultimate','Windows 7 Professional','Windows 7 Enterprise','Windows 10 Home','Windows 10 Pro','Windows 10 Pro for Workstation','Windows 10 Enterprise','Windows 10 Education','Microsoft Windows 11 Pro','Microsoft Windows 11 Home','Microsoft Windows 11 Pro for Education','Microsoft Windows 11 Workstation','Microsoft Windows 11 Enterprise','Microsoft Windows 11 Education'
$supported_platform = 'amd64'
$supported_build_workstations = '22621'
Write-Host -ForegroundColor Cyan 'CHECKING SYSTEM COMPATIBILITY'
	Write-Host ' '
	$os_name = (Get-WmiObject win32_operatingsystem).Caption
	$ARCH = ($env:PROCESSOR_ARCHITECTURE).ToLower()
    $build_ID = [System.Environment]::OSVersion.Version.Build
	if($supported_os_list -contains $os_name){
		[char]8730 + ' ' + $os_name +' OS supported '
        if($supported_platform -contains ($ARCH)){
		    [char]8730 + ' Architecture ' + $ARCH + ' supported '
            if( $supported_build_workstations -contains $build_ID){
                [char]8730 + ' ' + $build_ID + ' Build is supported '
                if($NETVersion = Get-ChildItem 'HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP' -Recurse | Get-ItemProperty -Name version -EA 0 | Where { $_.PSChildName -eq 'Full'} | Select version){
                    [char]8730 + ' ' +".NET $NETVersion "
                    Write-Host 'Checking updates from microsoft Servers Hold ON!!!'
                    $updatesession =  [activator]::CreateInstance([type]::GetTypeFromProgID('Microsoft.Update.Session',$env:computername))
	                $updatesearcher = $updatesession.CreateUpdateSearcher()
	                $searchresult = $updatesearcher.Search("IsInstalled=0")
	                if($searchresult.Updates.Count -gt 0){
		                ($searchresult.Updates.Count).ToString() + ' Updates Available ' + [char]8855
                        control update
	                }
	                else{[char]8730 + ' ' +'System is fully Updated '}  
                }
                else{Write-Host '.NET seems not installed'}
            }
            else{'OS Build not supported '}
	    }
	    else{}
	}
	else{'OS not supported'}