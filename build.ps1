New-Item -Path . -Name "ThirdPersonMod_vx" -ItemType "directory"

Copy-Item -Path ".\cfg" -Destination ".\ThirdPersonMod_vx" -Recurse
Copy-Item -Path ".\materials" -Destination ".\ThirdPersonMod_vx" -Recurse
Copy-Item -Path ".\models" -Destination ".\ThirdPersonMod_vx" -Recurse
Copy-Item -Path ".\resource" -Destination ".\ThirdPersonMod_vx" -Recurse
Copy-Item -Path ".\scripts" -Destination ".\ThirdPersonMod_vx" -Recurse
Copy-Item -Path ".\sound" -Destination ".\ThirdPersonMod_vx"
Copy-Item -Path ".\sound\hq" -Destination ".\ThirdPersonMod_vx\sound" -Recurse
Copy-Item -Path ".\sound\player" -Destination ".\ThirdPersonMod_vx\sound" -Recurse
Copy-Item -Path ".\sound\weapons" -Destination ".\ThirdPersonMod_vx\sound" -Recurse
Copy-Item -Path ".\readme.md" -Destination ".\ThirdPersonMod_vx"

& "C:\Program Files (x86)\Steam\steamapps\common\insurgency2\bin\vpk.exe" ".\ThirdPersonMod_vx"

Remove-Item -Path ".\ThirdPersonMod_vx" -Recurse

Rename-Item -Path ".\thirdpersonmod_vx.vpk" -NewName "ThirdPersonMod_vx.vpk"