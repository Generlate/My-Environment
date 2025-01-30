Write-Host "Validating installation of required programs"
# List of required CLI-based programs
$requiredPrograms = @("git", "node", "python", "code", "microsoft edge", "chromium", "firefox", "firefox-dev", "OBSstudio", "vlc", "discord", "runescape", "autocad", "illustrator", "indesign", "sketchup", "rhino", "msi center", "atem software control", "blackmagic media express", "blackmagic desktop video", "blackmagic disk speed test", "VRoidStudio", "genshin impact", "hoyoplay", "id mixer", "fl studio 20", "komplete kontrol", "kontakt", "native access", "Nvidia.NVIDIA Omniverse Launcher", "omniverse code", "Kit", "EpicGamesLauncher", "steam", "googleearth", "MuseScore.MuseScore", "figma", "vite", "mysql workbench", "pgadmin4", "davinci resolve", "zoom", "vim", "nvim", "nano", "postman", "pip", "typescript", "c++", ".NET", "davinci resolve project server", "blender", "devenv", "Nvidia.GeForceNow", "Nvidia.CUDA", "wiztree", "Perforce.P4V", "MinecraftLauncher", "figma", "logitune") 

# Function to check if a CLI command exists
function Check-Command($command) {
    if (Get-Command $command -ErrorAction SilentlyContinue) {
        return $true
    } else {
        return $false
    }
}

# Arrays to store installed and missing programs
$installedPrograms = @()
$missingPrograms = @()

# Check CLI-based programs
foreach ($program in $requiredPrograms) {
    if (Check-Command $program) {
        $installedPrograms += $program
    } else {
        $missingPrograms += $program
    }
}

# Check installed applications from the Windows Registry
$requiredApps = @("Google Chrome", "code", "python")
$registryPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*"

foreach ($app in $requiredApps) {
    if (Get-ItemProperty -Path $registryPath | Where-Object { $_.DisplayName -like "*$app*" }) {
        $installedPrograms += $app
    } else {
        $missingPrograms += $app
    }
}

# Output the results
Write-Host "`n=== Installed Programs ===" -ForegroundColor Green
if ($installedPrograms.Count -gt 0) {
    $installedPrograms | ForEach-Object { Write-Host $_ -ForegroundColor Green }
} else {
    Write-Host "No programs found." -ForegroundColor Yellow
}

Write-Host "`n=== Missing Programs ===" -ForegroundColor Red
if ($missingPrograms.Count -gt 0) {
    $missingPrograms | ForEach-Object { Write-Host $_ -ForegroundColor Red }
} else {
    Write-Host "All required programs are installed!" -ForegroundColor Green
}

# Exit with error if any programs are missing
if ($missingPrograms.Count -gt 0) {
    exit 1
} else {
    exit 0
}


# why is there required apps and required programs?
