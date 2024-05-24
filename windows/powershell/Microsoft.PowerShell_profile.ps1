
New-Alias g goto

function goto {
    param (
        $location
    )

    Switch ($location) {
        "pr" {
            Set-Location -Path "C:\1_projects\"
        }
        "src" {
            Set-Location -Path "C:\2_src\"
        }
        "od" {
            Set-Location -Path "c:\Users\tukker\OneDrive - Stichting Deltares\"
        }
        default {
            echo "Invalid location"
        }
    }
}

$ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"
Invoke-Expression (&starship init powershell)
