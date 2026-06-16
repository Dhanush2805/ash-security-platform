Write-Host "Installing Pre-Commit..."

pip install pre-commit

pre-commit install

pre-commit install --hook-type pre-push

Write-Host "ASH Security Platform Installed"
