$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$target = if ($args.Count -gt 0) { $args[0] } else { Join-Path $HOME '.skills' }

New-Item -ItemType Directory -Path $target -Force | Out-Null

Get-ChildItem -Path $root -Directory | ForEach-Object {
    $skillDir = $_.FullName
    if (Test-Path (Join-Path $skillDir 'SKILL.md')) {
        $dest = Join-Path $target $_.Name
        if (Test-Path $dest) { Remove-Item -Path $dest -Recurse -Force }
        Copy-Item -Path $skillDir -Destination $target -Recurse -Force
        Write-Host "Installed: $($_.Name)"
    }
}

Write-Host ""
Write-Host "Skill pack installed to: $target"
Write-Host "You can now reference the installed skills from a compatible skill runner or host environment."
