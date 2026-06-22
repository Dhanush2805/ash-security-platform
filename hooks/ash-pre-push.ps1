Write-Host "Running Pre-Push Security + Email Validation..."

$email = git config user.email

Write-Host "Commit Email: $email"

if ($email -notmatch "@usefulbi\.com$") {
    Write-Host "❌ BLOCKED: Only @usefulbi.com emails are allowed"
    exit 1
}

ash --mode local

if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ ASH scan failed"
    exit 1
}

Write-Host "✅ Pre-Push Passed"
exit 0
