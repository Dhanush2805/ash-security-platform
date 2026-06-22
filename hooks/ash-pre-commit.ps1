Write-Host "Running Pre-Commit Security + Email Validation..."

# -----------------------------
# EMAIL DOMAIN CHECK (BLOCKER)
# -----------------------------
$email = git config user.email

Write-Host "Commit Email: $email"

if ($email -notmatch "@usefulbi\.com$") {
    Write-Host "❌ BLOCKED: Only @usefulbi.com emails are allowed"
    exit 1
}

# -----------------------------
# ASH SCAN
# -----------------------------
ash --mode local --scanners bandit,checkov,semgrep,npm-audit

if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ ASH scan failed"
    exit 1
}

Write-Host "✅ Pre-Commit Passed"
exit 0
