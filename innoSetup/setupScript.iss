; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "StreamCompanion"
#define MyAppVersion "1.0"
#define MyAppPublisher "Piotrekol"
#define MyAppURL "https://osustats.ppy.sh/"
#define MyAppExeName "osu!StreamCompanion.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{F6C83F00-59ED-493E-8310-181BB5B37A03}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=license.txt
OutputBaseFilename=StreamCompanion Setup
SetupIconFile=..\osu!StreamCompanion\Resources\compiled.ico
Compression=lzma
SolidCompression=yes
AppMutex=Global\{{2c6fc9bd-4e26-42d3-acfa-0a4d846d7e9e}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "..\build\Release\osu!StreamCompanion.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\build\Release\StreamCompanion Updater.exe"; DestDir: "{app}"; Flags: onlyifdoesntexist
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Dirs]
Name: {app}; Permissions: users-modify
Name: "{app}\Files"; Permissions: users-modify
Name: "{app}\Files\Images"; Permissions: users-modify
Name: "{app}\Files\Logs"; Permissions: users-modify

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: files; Name: "{app}\StreamCompanionCache.db"
Type: files; Name: "{app}\StreamCompanionCacheV2.db"
Type: filesandordirs; Name: "{app}\Files"
Type: files; Name: "{app}\SQLite.Interop.dll"

[Code]
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  if CurUninstallStep = usUninstall then begin
    if MsgBox('Do you want to delete configuration file?', mbConfirmation,
        MB_YESNO) = IDYES 
    then begin
      DeleteFile(ExpandConstant('{app}')+'\settings.ini');
    end;
  end;
end;