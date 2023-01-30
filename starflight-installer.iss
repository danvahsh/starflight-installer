#define MyAppVer "0.1"
#define MyAppName "Starflight"
#define MyAppDescription "ThISISiOASiusiuoahasiufdchsadvhreviauhfiewuahi9fu9hsdiufhgvvoiusdfhvoiuhsdfiovuhdsfiuvhsdifuvhsdiufhviusdufvhiusdufhviudsfhviusdhfviuudhsriuhtaterrxcviusdxhcviudsahivuhsdiufcuhsdiuvchiuhavcdiuhsdiuchiughuygggyyyyggygggggggggggggggggggggvgggggggggggggggggggggggfhvuhuhuvhvhfuhvfuviufackedsdkkvkdssehiuhehseuifeshiheiuh"
#define MyAppPublisher "Daniel Vahsholtz & counterfeit-username"
#define MyAppURL "https://github.com/counterfeit-username/starflight"

[Setup]
AppName={#MyAppName}
AppVersion={#MyAppVer}
AppVerName={#MyAppName} {#MyAppVer}
AppCopyright=Copyright (C) 2023-Present {#MyAppPublisher}.
WizardStyle=modern
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={commonpf32}\{#MyAppName}
SourceDir=.
DisableDirPage=yes
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=false
AllowNoIcons=true
OutputBaseFilename={#MyAppName}_v{#MyAppVer}_installer
Compression=lzma2
SolidCompression=true
OutputDir=.\.output\
WizardImageFile=.\resources\icon-tall.bmp
WizardSmallImageFile=.\resources\icon.bmp
VersionInfoVersion={#MyAppVer}
VersionInfoDescription={#MyAppName}
ChangesAssociations=true
ChangesEnvironment=true
LZMAUseSeparateProcess=yes
; InfoAfterFile=textafterinstall.txt
; InfoBeforeFile=changelog.txt
; LicenseFile=LICENSE.txt
DisableReadyMemo=yes
DisableWelcomePage=no
PrivilegesRequired=admin
UninstallFilesDir={app}\uninstall
UninstallDisplayIcon={app}\bin\starflight.exe
UninstallRestartComputer=yes
DefaultDialogFontName=Segoe UI
SetupIconFile=.\resources\icon.ico
SetupLogging=yes

[Dirs]
; Regular Directories
Name: "{app}\bin"
Name: "{app}\data"
; Windows Services Directories

; Log Directories
Name: "{app}\updater\logs"; Permissions: everyone-modify

[Messages]
BeveledLabel={#MyAppName} Installer v{#MyAppVer}

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}

[Files]
; Source: "starflight.exe"; DestDir: "{app}\bin"; DestName: "starflight.exe"; Flags: restartreplace
; Source: "readme.txt"; DestDir: "{app}"; DestName: "README.txt"; Flags: isreadme 
; Source: "license.txt"; DestDir: "{app}"; DestName: "LICENSE.txt"
; Source: "changelog.txt"; DestDir: "{app}"; DestName: "CHANGELOG.txt" 
; Source: "wisdom.txt"; DestDir: "{app}"; DestName: "Some_Wisdom.txt"; Flags: onlyifdoesntexist
;;;; Add a thing like: Source: "loremsvcinstall.bat"; DestDir: "{tmp}"; DestName: "loremsvcinstall.bat" for installing services

[Registry]
Root: HKLM; Subkey: "SOFTWARE\starflight"

[Icons]
Name: "{autodesktop}\Re-Roll Wallpaper.exe"; Filename: "{app}\bin\starflight.exe"; Tasks: desktopicon