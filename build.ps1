New-Item -Path . -Name "ThirdPersonMod_vx" -ItemType "directory"

Copy-Item -Path ".\cfg" -Destination ".\ThirdPersonMod_vx" -Recurse
Copy-Item -Path ".\materials" -Destination ".\ThirdPersonMod_vx" -Recurse
Copy-Item -Path ".\scripts" -Destination ".\ThirdPersonMod_vx" -Recurse
Copy-Item -Path ".\readme.md" -Destination ".\ThirdPersonMod_vx"

& "C:\Program Files (x86)\Steam\steamapps\common\insurgency2\bin\vpk.exe" ".\ThirdPersonMod_vx"

Remove-Item -Path ".\ThirdPersonMod_vx" -Recurse