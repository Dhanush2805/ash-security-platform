Write-Host "Running ASH Pre-Commit Scan..."

ash --mode local

if ($LASTEXITCODE -ne 0) {
    Write-Host "Security scan failed."
    exit 1
}

exit 0
