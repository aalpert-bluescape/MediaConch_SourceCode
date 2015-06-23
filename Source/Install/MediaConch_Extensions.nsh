!macro MediaConch_Extensions_Install_I Extension
  ; Old InfoTip
  DeleteRegKey HKCR "${Extension}\shellex\{00021500-0000-0000-C000-000000000046}"
  DeleteRegKey /ifempty HKCR "${Extension}\shellex"
  ; Old Extension
  ReadRegStr $1 HKCR "${Extension}" ""
  DeleteRegKey HKCR "$1\Shell\Media Info"
  DeleteRegKey HKCR "$1\Shell\MediaConch"
  DeleteRegKey /ifempty HKCR "$1\Shell"
  DeleteRegKey /ifempty HKCR "$1"
  ; Old Extension (folder...)
  DeleteRegKey HKCR "${Extension}\Shell\MediaConch"
  DeleteRegKey /ifempty HKCR "${Extension}\Shell"
  ; Old Extension (in 1 version)
  DeleteRegKey HKCR "SystemFileAssociations\${Extension}\Shell\MediaConch"
  DeleteRegKey /ifempty HKCR "SystemFileAssociations\${Extension}\Shell"
!macroend

!macro MediaConch_Extensions_Uninstall_I Extension
  ; InfoTip
  DeleteRegKey HKCU "Software\Classes\${Extension}\shellex\{00021500-0000-0000-C000-000000000046}"
  DeleteRegKey /ifempty HKCU "Software\Classes\${Extension}\shellex"
  ; Extension
  DeleteRegKey HKCU "Software\Classes\SystemFileAssociations\${Extension}\shell\MediaConch"
  DeleteRegKey /ifempty HKCU "Software\Classes\SystemFileAssociations\${Extension}\shell"
!macroend

!macro MediaConch_Extensions_Install
  ; Per item
  !insertmacro MediaConch_Extensions_Install_I ".264"
  !insertmacro MediaConch_Extensions_Install_I ".3g2"
  !insertmacro MediaConch_Extensions_Install_I ".3gp"
  !insertmacro MediaConch_Extensions_Install_I ".3gpp"
  !insertmacro MediaConch_Extensions_Install_I ".aac"
  !insertmacro MediaConch_Extensions_Install_I ".ac3"
  !insertmacro MediaConch_Extensions_Install_I ".aiff"
  !insertmacro MediaConch_Extensions_Install_I ".amr"
  !insertmacro MediaConch_Extensions_Install_I ".ape"
  !insertmacro MediaConch_Extensions_Install_I ".asf"
  !insertmacro MediaConch_Extensions_Install_I ".avi"
  !insertmacro MediaConch_Extensions_Install_I ".avs"
  !insertmacro MediaConch_Extensions_Install_I ".bdmv"
  !insertmacro MediaConch_Extensions_Install_I ".bmp"
  !insertmacro MediaConch_Extensions_Install_I ".clpi"
  !insertmacro MediaConch_Extensions_Install_I ".dat"
  !insertmacro MediaConch_Extensions_Install_I ".dde"
  !insertmacro MediaConch_Extensions_Install_I ".divx"
  !insertmacro MediaConch_Extensions_Install_I ".dpg"
  !insertmacro MediaConch_Extensions_Install_I ".dts"
  !insertmacro MediaConch_Extensions_Install_I ".dv"
  !insertmacro MediaConch_Extensions_Install_I ".dvr"
  !insertmacro MediaConch_Extensions_Install_I ".dvr-ms"
  !insertmacro MediaConch_Extensions_Install_I ".eac3"
  !insertmacro MediaConch_Extensions_Install_I ".evo"
  !insertmacro MediaConch_Extensions_Install_I ".f4v"
  !insertmacro MediaConch_Extensions_Install_I ".flac"
  !insertmacro MediaConch_Extensions_Install_I ".flc"
  !insertmacro MediaConch_Extensions_Install_I ".fli"
  !insertmacro MediaConch_Extensions_Install_I ".flv"
  !insertmacro MediaConch_Extensions_Install_I ".gif"
  !insertmacro MediaConch_Extensions_Install_I ".gvi"
  !insertmacro MediaConch_Extensions_Install_I ".h264"
  !insertmacro MediaConch_Extensions_Install_I ".hdmov"
  !insertmacro MediaConch_Extensions_Install_I ".ifo"
  !insertmacro MediaConch_Extensions_Install_I ".isma"
  !insertmacro MediaConch_Extensions_Install_I ".ismv"
  !insertmacro MediaConch_Extensions_Install_I ".j2k"
  !insertmacro MediaConch_Extensions_Install_I ".jpeg"
  !insertmacro MediaConch_Extensions_Install_I ".jpg"
  !insertmacro MediaConch_Extensions_Install_I ".m1s"
  !insertmacro MediaConch_Extensions_Install_I ".m1t"
  !insertmacro MediaConch_Extensions_Install_I ".m1v"
  !insertmacro MediaConch_Extensions_Install_I ".m2p"
  !insertmacro MediaConch_Extensions_Install_I ".m2s"
  !insertmacro MediaConch_Extensions_Install_I ".m2t"
  !insertmacro MediaConch_Extensions_Install_I ".m2ts"
  !insertmacro MediaConch_Extensions_Install_I ".m2v"
  !insertmacro MediaConch_Extensions_Install_I ".m4a"
  !insertmacro MediaConch_Extensions_Install_I ".m4b"
  !insertmacro MediaConch_Extensions_Install_I ".m4v"
  !insertmacro MediaConch_Extensions_Install_I ".mac"
  !insertmacro MediaConch_Extensions_Install_I ".mka"
  !insertmacro MediaConch_Extensions_Install_I ".mks"
  !insertmacro MediaConch_Extensions_Install_I ".mkv"
  !insertmacro MediaConch_Extensions_Install_I ".mlp"
  !insertmacro MediaConch_Extensions_Install_I ".mod"
  !insertmacro MediaConch_Extensions_Install_I ".mov"
  !insertmacro MediaConch_Extensions_Install_I ".mp+"
  !insertmacro MediaConch_Extensions_Install_I ".mp2"
  !insertmacro MediaConch_Extensions_Install_I ".mp3"
  !insertmacro MediaConch_Extensions_Install_I ".mp4"
  !insertmacro MediaConch_Extensions_Install_I ".mpc"
  !insertmacro MediaConch_Extensions_Install_I ".mpd"
  !insertmacro MediaConch_Extensions_Install_I ".mpe"
  !insertmacro MediaConch_Extensions_Install_I ".mpeg"
  !insertmacro MediaConch_Extensions_Install_I ".mpg"
  !insertmacro MediaConch_Extensions_Install_I ".mpgv"
  !insertmacro MediaConch_Extensions_Install_I ".mpgx"
  !insertmacro MediaConch_Extensions_Install_I ".mpls"
  !insertmacro MediaConch_Extensions_Install_I ".mpm"
  !insertmacro MediaConch_Extensions_Install_I ".mpv"
  !insertmacro MediaConch_Extensions_Install_I ".mts"
  !insertmacro MediaConch_Extensions_Install_I ".mxf"
  !insertmacro MediaConch_Extensions_Install_I ".oga"
  !insertmacro MediaConch_Extensions_Install_I ".ogg"
  !insertmacro MediaConch_Extensions_Install_I ".ogm"
  !insertmacro MediaConch_Extensions_Install_I ".ogv"
  !insertmacro MediaConch_Extensions_Install_I ".opus"
  !insertmacro MediaConch_Extensions_Install_I ".png"
  !insertmacro MediaConch_Extensions_Install_I ".qcp"
  !insertmacro MediaConch_Extensions_Install_I ".qt"
  !insertmacro MediaConch_Extensions_Install_I ".ra"
  !insertmacro MediaConch_Extensions_Install_I ".rm"
  !insertmacro MediaConch_Extensions_Install_I ".rmvb"
  !insertmacro MediaConch_Extensions_Install_I ".smv"
  !insertmacro MediaConch_Extensions_Install_I ".stl"
  !insertmacro MediaConch_Extensions_Install_I ".swf"
  !insertmacro MediaConch_Extensions_Install_I ".tak"
  !insertmacro MediaConch_Extensions_Install_I ".tp"
  !insertmacro MediaConch_Extensions_Install_I ".trp"
  !insertmacro MediaConch_Extensions_Install_I ".ts"
  !insertmacro MediaConch_Extensions_Install_I ".tta"
  !insertmacro MediaConch_Extensions_Install_I ".vob"
  !insertmacro MediaConch_Extensions_Install_I ".w64"
  !insertmacro MediaConch_Extensions_Install_I ".wav"
  !insertmacro MediaConch_Extensions_Install_I ".webm"
  !insertmacro MediaConch_Extensions_Install_I ".wma"
  !insertmacro MediaConch_Extensions_Install_I ".wmv"
  !insertmacro MediaConch_Extensions_Install_I ".wv"
  !insertmacro MediaConch_Extensions_Install_I ".wvc"
  !insertmacro MediaConch_Extensions_Install_I ".y4m"
  !insertmacro MediaConch_Extensions_Install_I "audio"
  !insertmacro MediaConch_Extensions_Install_I "Directory.Audio"
  !insertmacro MediaConch_Extensions_Install_I "Directory.Video"
  !insertmacro MediaConch_Extensions_Install_I "Folder"
  !insertmacro MediaConch_Extensions_Install_I "video"
!macroend

!macro MediaConch_Extensions_Uninstall
  ;Old stuff
  !insertmacro MediaConch_Extensions_Install

  ; Global
  DeleteRegKey HKCU "Software\Classes\CLSID\{869C14C8-1830-491F-B575-5F9AB40D2B42}"
  DeleteRegKey HKCU "Software\Classes\MediaInfoShellExt.MediaInfoShellExt_"
  DeleteRegKey HKCU "Software\Classes\MediaInfoShellExt.MediaInfoShellExt_.1"

  !insertmacro MediaConch_Extensions_Uninstall_I ".264"
  !insertmacro MediaConch_Extensions_Uninstall_I ".3g2"
  !insertmacro MediaConch_Extensions_Uninstall_I ".3gp"
  !insertmacro MediaConch_Extensions_Uninstall_I ".3gpp"
  !insertmacro MediaConch_Extensions_Uninstall_I ".aac"
  !insertmacro MediaConch_Extensions_Uninstall_I ".ac3"
  !insertmacro MediaConch_Extensions_Uninstall_I ".aiff"
  !insertmacro MediaConch_Extensions_Uninstall_I ".amr"
  !insertmacro MediaConch_Extensions_Uninstall_I ".ape"
  !insertmacro MediaConch_Extensions_Uninstall_I ".asf"
  !insertmacro MediaConch_Extensions_Uninstall_I ".avi"
  !insertmacro MediaConch_Extensions_Uninstall_I ".avs"
  !insertmacro MediaConch_Extensions_Uninstall_I ".bdmv"
  !insertmacro MediaConch_Extensions_Uninstall_I ".clpi"
  !insertmacro MediaConch_Extensions_Uninstall_I ".dat"
  !insertmacro MediaConch_Extensions_Uninstall_I ".dde"
  !insertmacro MediaConch_Extensions_Uninstall_I ".divx"
  !insertmacro MediaConch_Extensions_Uninstall_I ".dpg"
  !insertmacro MediaConch_Extensions_Uninstall_I ".dts"
  !insertmacro MediaConch_Extensions_Uninstall_I ".dv"
  !insertmacro MediaConch_Extensions_Uninstall_I ".dvr"
  !insertmacro MediaConch_Extensions_Uninstall_I ".dvr-ms"
  !insertmacro MediaConch_Extensions_Uninstall_I ".eac3"
  !insertmacro MediaConch_Extensions_Uninstall_I ".evo"
  !insertmacro MediaConch_Extensions_Uninstall_I ".f4v"
  !insertmacro MediaConch_Extensions_Uninstall_I ".flac"
  !insertmacro MediaConch_Extensions_Uninstall_I ".flc"
  !insertmacro MediaConch_Extensions_Uninstall_I ".fli"
  !insertmacro MediaConch_Extensions_Uninstall_I ".flv"
  !insertmacro MediaConch_Extensions_Uninstall_I ".gvi"
  !insertmacro MediaConch_Extensions_Uninstall_I ".h264"
  !insertmacro MediaConch_Extensions_Uninstall_I ".hdmov"
  !insertmacro MediaConch_Extensions_Uninstall_I ".ifo"
  !insertmacro MediaConch_Extensions_Uninstall_I ".isma"
  !insertmacro MediaConch_Extensions_Uninstall_I ".ismv"
  !insertmacro MediaConch_Extensions_Uninstall_I ".j2k"
  !insertmacro MediaConch_Extensions_Uninstall_I ".jp2"
  !insertmacro MediaConch_Extensions_Uninstall_I ".m1s"
  !insertmacro MediaConch_Extensions_Uninstall_I ".m1t"
  !insertmacro MediaConch_Extensions_Uninstall_I ".m1v"
  !insertmacro MediaConch_Extensions_Uninstall_I ".m2p"
  !insertmacro MediaConch_Extensions_Uninstall_I ".m2s"
  !insertmacro MediaConch_Extensions_Uninstall_I ".m2t"
  !insertmacro MediaConch_Extensions_Uninstall_I ".m2ts"
  !insertmacro MediaConch_Extensions_Uninstall_I ".m2v"
  !insertmacro MediaConch_Extensions_Uninstall_I ".m4a"
  !insertmacro MediaConch_Extensions_Uninstall_I ".m4b"
  !insertmacro MediaConch_Extensions_Uninstall_I ".m4v"
  !insertmacro MediaConch_Extensions_Uninstall_I ".mac"
  !insertmacro MediaConch_Extensions_Uninstall_I ".mka"
  !insertmacro MediaConch_Extensions_Uninstall_I ".mks"
  !insertmacro MediaConch_Extensions_Uninstall_I ".mkv"
  !insertmacro MediaConch_Extensions_Uninstall_I ".mlp"
  !insertmacro MediaConch_Extensions_Uninstall_I ".mod"
  !insertmacro MediaConch_Extensions_Uninstall_I ".mov"
  !insertmacro MediaConch_Extensions_Uninstall_I ".mp+"
  !insertmacro MediaConch_Extensions_Uninstall_I ".mp2"
  !insertmacro MediaConch_Extensions_Uninstall_I ".mp3"
  !insertmacro MediaConch_Extensions_Uninstall_I ".mp4"
  !insertmacro MediaConch_Extensions_Uninstall_I ".mpc"
  !insertmacro MediaConch_Extensions_Uninstall_I ".mpd"
  !insertmacro MediaConch_Extensions_Uninstall_I ".mpe"
  !insertmacro MediaConch_Extensions_Uninstall_I ".mpeg"
  !insertmacro MediaConch_Extensions_Uninstall_I ".mpg"
  !insertmacro MediaConch_Extensions_Uninstall_I ".mpgv"
  !insertmacro MediaConch_Extensions_Uninstall_I ".mpgx"
  !insertmacro MediaConch_Extensions_Uninstall_I ".mpls"
  !insertmacro MediaConch_Extensions_Uninstall_I ".mpm"
  !insertmacro MediaConch_Extensions_Uninstall_I ".mpv"
  !insertmacro MediaConch_Extensions_Uninstall_I ".mts"
  !insertmacro MediaConch_Extensions_Uninstall_I ".mxf"
  !insertmacro MediaConch_Extensions_Uninstall_I ".oga"
  !insertmacro MediaConch_Extensions_Uninstall_I ".ogg"
  !insertmacro MediaConch_Extensions_Uninstall_I ".ogm"
  !insertmacro MediaConch_Extensions_Uninstall_I ".ogv"
  !insertmacro MediaConch_Extensions_Uninstall_I ".opus"
  !insertmacro MediaConch_Extensions_Uninstall_I ".qcp"
  !insertmacro MediaConch_Extensions_Uninstall_I ".qt"
  !insertmacro MediaConch_Extensions_Uninstall_I ".ra"
  !insertmacro MediaConch_Extensions_Uninstall_I ".rm"
  !insertmacro MediaConch_Extensions_Uninstall_I ".rmvb"
  !insertmacro MediaConch_Extensions_Uninstall_I ".smv"
  !insertmacro MediaConch_Extensions_Uninstall_I ".stl"
  !insertmacro MediaConch_Extensions_Uninstall_I ".swf"
  !insertmacro MediaConch_Extensions_Uninstall_I ".tap"
  !insertmacro MediaConch_Extensions_Uninstall_I ".tp"
  !insertmacro MediaConch_Extensions_Uninstall_I ".trp"
  !insertmacro MediaConch_Extensions_Uninstall_I ".ts"
  !insertmacro MediaConch_Extensions_Uninstall_I ".tta"
  !insertmacro MediaConch_Extensions_Uninstall_I ".vob"
  !insertmacro MediaConch_Extensions_Uninstall_I ".w64"
  !insertmacro MediaConch_Extensions_Uninstall_I ".wav"
  !insertmacro MediaConch_Extensions_Uninstall_I ".webm"
  !insertmacro MediaConch_Extensions_Uninstall_I ".wma"
  !insertmacro MediaConch_Extensions_Uninstall_I ".wmv"
  !insertmacro MediaConch_Extensions_Uninstall_I ".wv"
  !insertmacro MediaConch_Extensions_Uninstall_I ".wvc"
  !insertmacro MediaConch_Extensions_Uninstall_I ".y4m"
  !insertmacro MediaConch_Extensions_Uninstall_I "audio"
  !insertmacro MediaConch_Extensions_Uninstall_I "Directory.Audio"
  !insertmacro MediaConch_Extensions_Uninstall_I "Directory.Video"
  !insertmacro MediaConch_Extensions_Uninstall_I "Folder"
  !insertmacro MediaConch_Extensions_Uninstall_I "video"
!macroend