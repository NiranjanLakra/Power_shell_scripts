$supported_platforms = @{

    'Windows 7' = @{
        'Windows 7 Starter' = @{
            'Arch'= @('x86')
            'SP' = @('SP1','pre-SP1')
        }
        'Windows 7 Home Basic' = @{
            'Arch' = @('x86-x64')
            'SP' = @('SP1','pre-SP1')
        }
        'Windows 7 Premium' = @{
            'Arch' = @('x86-x64')
            'SP' = @('SP1','pre-SP1')
        }
        'Windows 7 Ultimate' = @{
            'Arch' = @('x86-x64')
            'SP' = @('SP1','pre-SP1')
        }
        'Windows 7 Professional' = @{
            'Arch' = @('x86-x64')
            'SP' = @('SP1','pre-SP1')
        }
        'Windows 7 Enterprise' = @{
            'Arch' = @('x86-x64')
            'SP' = @('SP1','pre-SP1')
        }
        'Windows 7 Embedded Standard 7' = @{
            'Arch' = @('x86-x64')
            'SP' = @('pre-SP1')
        }
        'Windows 7 Embedded Standard 2011' = @{
            'Arch' = @('x86-x64')
            'SP' = @('SP1')
        }
        'POSReady 7(Windows 7)' = @{
            'Arch' = @('x86-64')
            'SP' = @('SP1','pre-SP1')
        }
        'Thin(Windows 7)' = @{
            'Arch' = @('x86-x64')
            'SP' = @('SP1','pre-SP1')
        }

    }
    'windows 8' = @{
        'Windows 8 Home' = @{
            'Arch' = @('x86-x64')
            'SP' = @('pre-SP1')
        }
        'Windows 8 Pro' = @{
            'Arch' = @('x86-x64')
            'SP' = @('pre-SP1')
        }
        'Windows 8 Enterprise' = @{
            'Arch' = @('x86-x64')
            'SP' = @('pre-SP1')
        }
        'Windows 8 Embedded standard 8' = @{
            'Arch' = @('x86-x64')
            'SP' = @()
        }
        'POSReady 8(Windows 8)' = @{
            'Arch' = @('x86-x64')
            'SP' = @()
        }
        'RT(Windows 8)' = @{
            'Arch' = @('ARM')
            'SP' = @()
        }
    }
    'windows 8.1' = @{
        'Windows 8.1 Home' = @{
            'Arch' = @('x86-x64')
            'SP' = @('pre-SP1')
        }
        'Windows 8.1 Pro' = @{
            'Arch' = @('x86-x64')
            'SP' = @('pre-SP1')
        }
        'Windows 8.1 Enterprise' = @{
            'Arch' = @('x86-x64')
            'SP' = @('pre-SP1')
        }
        'Windows 8.1 Embedded Enterprise Industry' = @{
            'Arch' = @('x86-x64')
            'SP' = @()
        }
    }
    'windows 10' = @{
        'windows 10 Home' = @{
            'Arch' = @('x86-x64')
            'SP' = @('Semi-Annual 19043', 'General Availability 19044','General Availability 19045')
        }
        'windows 10 Pro' = @{
            'Arch' = @('x86-x64','ARM')
            'SP' = @('Semi-Annual 19043', 'General Availability 19044','General Availability 19045')
        }
        'windows 10 Pro for Workstation' = @{
            'Arch' = @('x86-x64','ARM')
            'SP' = @('Semi-Annual 19043', 'General Availability 19044','General Availability 19045')
        }
        'windows 10 Enterprise' = @{
            'Arch' = @('x86-x64','ARM')
            'SP' = @('Semi-Annual 19042','Semi-Annual 19043', 'General Availability 19044','General Availability 19045', 'LTSB 1507 RTM','LTSB 1507 1607','LTSC 1809','LTSC 19044')
        }
        'windows 10 Education' = @{
            'Arch' = @('x86-x64')
            'SP' = @('Semi-Annual 19042','Semi-Annual 19043', 'General Availability 19044','General Availability 19045')
        }
        'Windows 10 IoT Enterprise' = @{
            'Arch' = @('x86-x64')
            'SP' = @('19042','19043','19044')
        }
    }
    'windows 11' = @{
        'windows 11 Home' = @{
            'Arch' = @('x86-x64')
            'SP' = @('22000','22621')
        }
        'windows 11 Pro' = @{
            'Arch' = @('x86-x64','ARM')
            'SP' = @('22000','22621')
        }
        'windows 11 Pro for Education' = @{
            'Arch' = @('x86-x64','ARM')
            'SP' = @('22000','22621')
        }
        'windows 11 Workstation' = @{
            'Arch' = @('x86-x64','ARM')
            'SP' = @('22000','22621')
        }
        'windows 11 Enterprise' = @{
            'Arch' = @('x86-x64','ARM')
            'SP' = @('22000','22621')
        }
        'windows 11 Education' = @{
            'Arch' = @('x86-x64')
            'SP' = @('22000','22621')
        }
        'Windows 11 IoT Enterprise' = @{
            'Arch' = @('x86-x64')
            'SP' = @('22000')
        }

    }
}

$supported = $supported_platforms | ConvertTo-Json
$errr = $null
$MyCustomJsonObject = [Microsoft.PowerShell.Commands.JsonObject]::ConvertFromJson($supported, [ref]$errr)