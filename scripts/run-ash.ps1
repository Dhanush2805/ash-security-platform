Stop-Process -Name ash -ErrorAction SilentlyContinue;

Remove-Item -Recurse -Force .ash -ErrorAction SilentlyContinue;

New-Item -ItemType Directory -Force .ash\ash_output\reports | Out-Null;
New-Item -ItemType Directory -Force .ash\ash_output\scanners | Out-Null;
New-Item -ItemType Directory -Force .ash\ash_output\analysis | Out-Null;

ash --mode local
