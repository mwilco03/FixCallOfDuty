Function Repair-Cod{
    Stop-Process -Force -ProcessName "Battle.net"
    $CoDs = "Call of Duty Black Ops Cold War Beta","Call of Duty Modern Warfare","Call of Duty Black Ops Cold War"
    $Files = "Program Files","Users\$env:USERNAME\Documents"
    $Drives = (65..(65+25)).ForEach({ [char]$_ })
    $VPaths=[Collections.ArrayList]@()
    $PoppyCock = [Collections.ArrayList]@()
    foreach($drive in $Drives){
        if(Test-Path -Path $Drive":\"){
            foreach($file in $Files){
                $SmoothJazz = $drive+":\"+$file;
                if(Test-Path -Path $SmoothJazz){
                    foreach($CoD in $CoDs){
                        $Trope = $drive+":\"+$file+"\"+$CoD;
                        if(Test-Path -Path $Trope ){
                            $PureMi = $drive+":\"+$file+"\"+$CoD;
                            $VPaths.Add($PureMi)
                        }
                    }
                }
            }
        }
    }

    $VPaths|%{
        Get-ChildItem -Recurse "$_\*\ppsod.dat"|%{
            $PoppyCock.Add($_.FullName);
        };
        $Murica = $_+"\main";
        Get-ChildItem -Recurse $Murica|%{
            $PoppyCock.Add($_.FullName)
        }
    }

    $exposure  = "Blizzard Entertainment\Battle.net","NVIDIA Corporation\Nv_Cache"
    $exposure | %{
        $smoosh = Join-Path $env:ProgramData $_
        if(Test-Path $smoosh){
            Get-ChildItem -Recurse $smoosh|%{
                $poppycock.Add($_.FullName)
            }
        }
    }

    $poppycock|%{
        Remove-Item -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -Force $_
    }

    Restart-Computer -Force 
}

Write-Host -ForegroundColor Yellow -BackgroundColor Black  "This script will delete files from your computer and restart."
Write-Host -ForegroundColor Yellow -BackgroundColor Black  "Warning:!EXTREME CAUTION!Much Concern."
Write-Host -ForegroundColor Yellow -BackgroundColor Black  "Or YOLO and run the green text command."
Write-Host -ForegroundColor Green -BackgroundColor Black  "Repair-Cod"
