Param
(
    [Parameter(Mandatory = $true,
        ValueFromPipeline = $false)]
    [String]
    $changedFilesFile
)

Write-Host "Build step beginning."
Write-Host "Backing up changedFiles file."
Copy-Item $changedFilesFile ("c:\temp\" + (Split-Path -Path $changedFilesFile -Leaf) + "cf.txt")

Write-Host "Looping through changed files."
# only read lines that are not blank and which have an .SQL extension:
foreach ($file in (Get-Content $changedFilesFile | ? { ($_ -notmatch '(?:^\s*$)') -and ($_.reverse().substring(0, $_.indexOf('.')).reverse() -eq "SQL") } {
    $filename = $file.Split(':')[0]
    Write-Host ('Processing file {0}.' -f $filename)
    
    try {
        #TODO: launch as a process and use the builtin $process.StandardError.ReadToEnd() and $process.StandardOutput.ReadToEnd() 
        Write-Host "Starting SQLCMD."
        $sqlcmd_output = @(sqlcmd -i $filename -S .\SQL2017 -E -b)

        # Powershell doesn't automatically throw exceptions .EXE executables:
        $sqlcmd_exitcode = $LASTEXITCODE
        if ($sqlcmd_exitcode -eq 0) {
            Write-Host ("File {0} executed successfully." -f $filename)
        } 
        else {
            $error_string = "`n"
            foreach ($line in $sqlcmd_output) {
                $error_string += $line + "`n"
            }
            $exception_string = ("ERROR {0}: {1}" -f $sqlcmd_exitcode, $error_string)
            throw ($exception_string)
        }
    }

    catch {

        $raw_errormessage = $_.ToString()

        # Vertical pipe is the escape character for TeamCity's service messages, so we escape those first by doubling them up.
        # Next, we escape apostrophes (using vertical pipe) so that TeamCity doesn't think they are string terminators.
        $teamcity_errormessage = $raw_errormessage.replace('|', '||').replace("'", "|'")

        Write-Host ("##teamcity[buildProblem description='{0}' identity='Failed automated MSSQL build.']" -f $raw_errormessage)
        # Write-Error ($raw_errormessage)
        
        exit 1
    }
}

Write-Host "Build step complete."
exit 0
