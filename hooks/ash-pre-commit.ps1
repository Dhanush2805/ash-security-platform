Write-Host "Running Email Validation..."

$email = git config user.email

if ($email -notmatch "@usefulbi\.com$") {
    Write-Host ""
    Write-Host "ERROR: Only @usefulbi.com email addresses are allowed."
    Write-Host "Current Email: $email"
    exit 1
}

Write-Host "Email Validation Passed"

Write-Host "Running ASH Pre-Commit Scan..."

ash --mode local

if ($LASTEXITCODE -ne 0) {
    Write-Host "Security scan failed."
    exit 1
}

exit 0
