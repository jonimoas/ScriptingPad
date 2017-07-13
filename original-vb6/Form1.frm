VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00400000&
   Caption         =   "Scripting Pad Version 1.3 by echo_03"
   ClientHeight    =   10830
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   13155
   LinkTopic       =   "Form1"
   ScaleHeight     =   10830
   ScaleWidth      =   13155
   StartUpPosition =   3  'Windows Default
   Begin VB.CheckBox Check3 
      Caption         =   "autorun scripts on/off"
      Height          =   495
      Left            =   10560
      TabIndex        =   51
      Top             =   10200
      Width           =   2175
   End
   Begin VB.TextBox txt_icon 
      Height          =   405
      Left            =   2160
      TabIndex        =   49
      Top             =   10080
      Width           =   3615
   End
   Begin VB.TextBox txt_open 
      Height          =   405
      Left            =   2160
      TabIndex        =   47
      Top             =   9600
      Width           =   3615
   End
   Begin VB.CheckBox Check2 
      Caption         =   "html basic scripts on/off"
      Height          =   495
      Left            =   8040
      TabIndex        =   44
      Top             =   10200
      Width           =   2295
   End
   Begin VB.TextBox txt_title 
      Height          =   375
      Left            =   1560
      TabIndex        =   42
      Top             =   1560
      Width           =   4455
   End
   Begin VB.CommandButton cmd_paraclose 
      Caption         =   "close paragraph"
      Height          =   495
      Left            =   5040
      TabIndex        =   40
      Top             =   5640
      Width           =   1095
   End
   Begin VB.CommandButton cmd_paraopen 
      Caption         =   "open paragraph"
      Height          =   495
      Left            =   3840
      TabIndex        =   39
      Top             =   5640
      Width           =   1095
   End
   Begin VB.CommandButton cmd_udtxt 
      Caption         =   "underlined text"
      Height          =   495
      Left            =   2640
      TabIndex        =   38
      Top             =   5640
      Width           =   1095
   End
   Begin VB.CommandButton cmd_ital 
      Caption         =   "italic text"
      Height          =   495
      Left            =   1440
      TabIndex        =   37
      Top             =   5640
      Width           =   1095
   End
   Begin VB.CommandButton cmd_bldtxt 
      Caption         =   "bold text"
      Height          =   495
      Left            =   240
      TabIndex        =   36
      Top             =   5640
      Width           =   1095
   End
   Begin VB.TextBox txt_obj 
      Height          =   375
      Left            =   1920
      TabIndex        =   34
      Top             =   6840
      Width           =   4215
   End
   Begin VB.TextBox txt_paraval 
      Height          =   375
      Left            =   1920
      TabIndex        =   32
      Top             =   6360
      Width           =   4215
   End
   Begin VB.CommandButton cmd_fontcolor 
      Caption         =   "font color"
      Height          =   495
      Left            =   240
      TabIndex        =   31
      Top             =   5040
      Width           =   1095
   End
   Begin VB.CommandButton cmd_fontsize 
      Caption         =   "font size"
      Height          =   495
      Left            =   1440
      TabIndex        =   30
      Top             =   5040
      Width           =   1095
   End
   Begin VB.CommandButton cmd_closefont 
      Caption         =   "close font"
      Height          =   495
      Left            =   2640
      TabIndex        =   29
      Top             =   5040
      Width           =   1095
   End
   Begin VB.CommandButton cmd_img 
      Caption         =   "image"
      Height          =   495
      Left            =   3840
      TabIndex        =   28
      Top             =   5040
      Width           =   1095
   End
   Begin VB.CommandButton cmd_strike 
      Caption         =   "strike through"
      Height          =   495
      Left            =   5040
      TabIndex        =   27
      Top             =   5040
      Width           =   1095
   End
   Begin VB.CheckBox Check1 
      Caption         =   "echoing on/off"
      Height          =   495
      Left            =   6480
      TabIndex        =   25
      Top             =   10200
      Width           =   1455
   End
   Begin VB.TextBox txt_batch 
      Height          =   9495
      Left            =   6600
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   24
      Top             =   600
      Width           =   6375
   End
   Begin VB.TextBox txt_name 
      Height          =   375
      Left            =   4440
      TabIndex        =   21
      Top             =   840
      Width           =   1575
   End
   Begin VB.CommandButton cmd_sysdir 
      Caption         =   "systemdirectory"
      Height          =   495
      Left            =   4320
      TabIndex        =   20
      Top             =   4080
      Width           =   1695
   End
   Begin VB.CommandButton cmd_sysrt 
      Caption         =   "systemroot"
      Height          =   495
      Left            =   2280
      TabIndex        =   19
      Top             =   4080
      Width           =   1695
   End
   Begin VB.CommandButton cmd_sysdrv 
      Caption         =   "systemdrive"
      Height          =   495
      Left            =   240
      TabIndex        =   18
      Top             =   4080
      Width           =   1695
   End
   Begin VB.TextBox txt_path 
      Height          =   375
      Left            =   480
      ScrollBars      =   1  'Horizontal
      TabIndex        =   17
      Top             =   840
      Width           =   3615
   End
   Begin VB.CommandButton cmd_exit 
      Caption         =   "exit"
      Height          =   495
      Left            =   4920
      TabIndex        =   15
      Top             =   3120
      Width           =   1095
   End
   Begin VB.CommandButton cmd_rename 
      Caption         =   "rename"
      Height          =   495
      Left            =   3720
      TabIndex        =   13
      Top             =   3120
      Width           =   1095
   End
   Begin VB.CommandButton cmd_color 
      Caption         =   "color"
      Height          =   495
      Left            =   2520
      TabIndex        =   12
      Top             =   3120
      Width           =   1095
   End
   Begin VB.CommandButton cmd_pause 
      Caption         =   "pause"
      Height          =   495
      Left            =   1320
      TabIndex        =   11
      Top             =   3120
      Width           =   1095
   End
   Begin VB.CommandButton cmd_assoc 
      Caption         =   "assoc"
      Height          =   495
      Left            =   120
      TabIndex        =   10
      Top             =   3120
      Width           =   1095
   End
   Begin VB.CommandButton cmd_rd 
      Caption         =   "rd"
      Height          =   495
      Left            =   4920
      TabIndex        =   8
      Top             =   2520
      Width           =   1095
   End
   Begin VB.CommandButton cmd_erase 
      Caption         =   "erase"
      Height          =   495
      Left            =   3720
      TabIndex        =   7
      Top             =   2520
      Width           =   1095
   End
   Begin VB.CommandButton cmd_manualsameline 
      Caption         =   "place in same line"
      Height          =   495
      Left            =   3840
      TabIndex        =   6
      Top             =   8280
      Width           =   2295
   End
   Begin VB.CommandButton cmd_echo 
      Caption         =   "echo"
      Height          =   495
      Left            =   2520
      TabIndex        =   5
      Top             =   2520
      Width           =   1095
   End
   Begin VB.CommandButton cmd_mkdir 
      Caption         =   "mkdir"
      Height          =   495
      Left            =   1320
      TabIndex        =   4
      Top             =   2520
      Width           =   1095
   End
   Begin VB.CommandButton cmd_copy 
      Caption         =   "copy"
      Height          =   495
      Left            =   120
      TabIndex        =   3
      Top             =   2520
      Width           =   1095
   End
   Begin VB.CommandButton cmd_manualnextline 
      Caption         =   "place in next line"
      Height          =   495
      Left            =   240
      TabIndex        =   1
      Top             =   8280
      Width           =   2415
   End
   Begin VB.TextBox txt_manual 
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   7560
      Width           =   5895
   End
   Begin VB.TextBox txt_eis 
      Height          =   375
      Left            =   9120
      TabIndex        =   43
      Text            =   """"
      Top             =   4800
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Label Label14 
      Caption         =   "icon"
      Height          =   375
      Left            =   480
      TabIndex        =   50
      Top             =   10080
      Width           =   1695
   End
   Begin VB.Label Label13 
      Caption         =   "open"
      Height          =   375
      Left            =   480
      TabIndex        =   48
      Top             =   9600
      Width           =   1695
   End
   Begin VB.Label Label12 
      Alignment       =   2  'Center
      Caption         =   "autorun"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1800
      TabIndex        =   46
      Top             =   9120
      Width           =   2895
   End
   Begin VB.Label Label11 
      Alignment       =   2  'Center
      Caption         =   "save the file as..."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1440
      TabIndex        =   45
      Top             =   120
      Width           =   2175
   End
   Begin VB.Label Label10 
      Alignment       =   2  'Center
      Caption         =   "title"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   41
      Top             =   1560
      Width           =   1335
   End
   Begin VB.Label Label9 
      Alignment       =   2  'Center
      Caption         =   "item"
      Height          =   375
      Left            =   240
      TabIndex        =   35
      Top             =   6840
      Width           =   1695
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      Caption         =   "value"
      Height          =   375
      Left            =   240
      TabIndex        =   33
      Top             =   6360
      Width           =   1695
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      Caption         =   "html commands"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1680
      TabIndex        =   26
      Top             =   4680
      Width           =   2895
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      Caption         =   "filename"
      Height          =   255
      Left            =   4440
      TabIndex        =   23
      Top             =   600
      Width           =   1575
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Caption         =   "save path"
      Height          =   255
      Left            =   480
      TabIndex        =   22
      Top             =   600
      Width           =   3615
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "system variables"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1800
      TabIndex        =   16
      Top             =   3720
      Width           =   2655
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "commands and paths input"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   14
      Top             =   7320
      Width           =   5895
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "dos commands"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1800
      TabIndex        =   9
      Top             =   2160
      Width           =   2535
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "text editor"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   8280
      TabIndex        =   2
      Top             =   120
      Width           =   3255
   End
   Begin VB.Menu file 
      Caption         =   "file"
      Begin VB.Menu exit 
         Caption         =   "exit"
         Shortcut        =   ^X
      End
   End
   Begin VB.Menu mode 
      Caption         =   "mode"
      Begin VB.Menu dos 
         Caption         =   "dos"
         Shortcut        =   ^D
      End
      Begin VB.Menu autorun 
         Caption         =   "autorun"
         Shortcut        =   ^A
      End
      Begin VB.Menu html 
         Caption         =   "html"
         Shortcut        =   ^H
      End
   End
   Begin VB.Menu save 
      Caption         =   "save"
      Begin VB.Menu save_bat 
         Caption         =   "save batch"
      End
      Begin VB.Menu save_aut 
         Caption         =   "save autorun"
      End
      Begin VB.Menu save_cmd 
         Caption         =   "save cmd script"
      End
      Begin VB.Menu save_txt 
         Caption         =   "save text"
      End
      Begin VB.Menu save_html 
         Caption         =   "save html"
      End
   End
   Begin VB.Menu clear_menu 
      Caption         =   "clear"
      Begin VB.Menu rst 
         Caption         =   "tools"
         Shortcut        =   {DEL}
      End
      Begin VB.Menu clr 
         Caption         =   "program"
         Shortcut        =   +{DEL}
      End
      Begin VB.Menu cls_all 
         Caption         =   "all"
         Shortcut        =   %{BKSP}
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim nfile As Integer
Private Sub autorun_Click()
txt_manual.Enabled = False
Check3.Enabled = True
Label12.Caption = "autorun"
cls_all.Enabled = True
Label13.Caption = "open"
save_aut.Enabled = True
Label14.Caption = "icon"
txt_open.Enabled = True
txt_icon.Enabled = True
txt_batch.Enabled = disabled
save_txt.Enabled = True
rst.Enabled = False
clr.Enabled = False
txt_batch.Text = ""
Label10.Caption = "title (disabled)"
txt_title.Enabled = False
Label1.Caption = "text editor (disabled)"
Label11.Caption = "save file as..."
txt_path.Enabled = True
txt_name.Enabled = False
Label3.Caption = "commands and paths input (disabled)"
cmd_manualnextline.Enabled = False
cmd_manualsameline.Enabled = False
Label5.Caption = "savepath"
Label6.Caption = "filename (disabled)"
Label8.Caption = "value (disabled)"
Label9.Caption = "item (disabled)"
Check3.Caption = "autorun scripts on/off"
Check1.Value = 1
Check2.Value = 0
Check1.Enabled = False
Check2.Enabled = False
Check2.Caption = "basic html scripts (disabled)"
cmd_copy.Enabled = False
cmd_mkdir.Enabled = False
cmd_assoc.Enabled = False
cmd_pause.Enabled = False
cmd_echo.Enabled = False
cmd_erase.Enabled = False
cmd_rd.Enabled = False
cmd_color.Enabled = False
cmd_rename.Enabled = False
cmd_exit.Enabled = False
cmd_sysdrv.Enabled = False
cmd_sysrt.Enabled = False
cmd_sysdir.Enabled = False
Check1.Caption = "echoing on/off (disabled)"
save_bat.Enabled = False
save_cmd.Enabled = False
save_html.Enabled = False
cmd_fontcolor.Enabled = False
cmd_fontsize.Enabled = False
cmd_closefont.Enabled = False
cmd_img.Enabled = False
cmd_strike.Enabled = False
cmd_bldtxt.Enabled = False
cmd_ital.Enabled = False
cmd_udtxt.Enabled = False
cmd_paraopen.Enabled = False
cmd_paraclose.Enabled = False
Label2.Caption = "dos commands (disabled)"
Label4.Caption = "system variables (disabled)"
Label7.Caption = "html commands (disabled)"
txt_paraval.Enabled = False
txt_obj.Enabled = False
End Sub
Private Sub Check1_Click()
 If Check1.Value = 1 Then
        Check1.Caption = "echoing on"
    Else
        Check1.Caption = "echoing off"
    End If
End Sub
Private Sub Check2_Click()
 If Check2.Value = 1 Then
        Check2.Caption = "html basic scripts on"
        Label10.Caption = "title"
        txt_title.Enabled = True
    Else
        Check2.Caption = "html basic scripts off"
        Label10.Caption = "title (disabled)"
        txt_title.Enabled = False
    End If
End Sub
Private Sub clear_Click()
txt_batch.Text = ""
End Sub
Private Sub cls_all_Click()
txt_title = ""
txt_paraval = ""
txt_obj = ""
txt_path = ""
txt_name = ""
txt_manual = ""
txt_open = ""
txt_icon = ""
txt_batch.Text = ""
End Sub
Private Sub cmd_assoc_Click()
If txt_batch.Text = "" Then
txt_batch.Text = txt_batch.Text + "assoc"
Else
txt_batch.Text = txt_batch.Text + vbNewLine + "assoc"
End If
End Sub
Private Sub cmd_bldtxt_Click()
txt_batch.Text = txt_batch.Text + "<b>" + txt_obj.Text + "</b>"
End Sub
Private Sub clr_Click()
txt_batch.Text = ""
End Sub
Private Sub cmd_closefont_Click()
txt_batch.Text = txt_batch.Text + "</font>"
End Sub
Private Sub cmd_color_Click()
If txt_batch.Text = "" Then
txt_batch.Text = txt_batch.Text + "color"
Else
txt_batch.Text = txt_batch.Text + vbNewLine + "color"
End If
End Sub
Private Sub cmd_copy_Click()
If txt_batch.Text = "" Then
txt_batch.Text = txt_batch.Text + "Copy"
Else
txt_batch.Text = txt_batch.Text + vbNewLine + "Copy"
End If
End Sub
Private Sub cmd_echo_Click()
If txt_batch.Text = "" Then
txt_batch.Text = txt_batch.Text + "echo"
Else
txt_batch.Text = txt_batch.Text + vbNewLine + "echo"
End If
End Sub
Private Sub cmd_erase_Click()
If txt_batch.Text = "" Then
txt_batch.Text = txt_batch.Text + "erase"
Else
txt_batch.Text = txt_batch.Text + vbNewLine + "erase"
End If
End Sub
Private Sub cmd_exit_Click()
If txt_batch.Text = "" Then
txt_batch.Text = txt_batch.Text + "exit"
Else
txt_batch.Text = txt_batch.Text + vbNewLine + "exit"
End If
End Sub
Private Sub cmd_fontcolor_Click()
txt_batch.Text = txt_batch.Text + "<font color = " + txt_eis.Text + txt_paraval.Text + txt_eis.Text + ">" + txt_obj.Text
End Sub
Private Sub cmd_fontsize_Click()
txt_batch.Text = txt_batch.Text + "<font size = " + txt_paraval.Text + ">" + txt_obj.Text
End Sub
Private Sub cmd_img_Click()
txt_batch.Text = txt_batch.Text + "<img src=" + txt_eis.Text + txt_obj.Text + txt_eis.Text + ">"
End Sub
Private Sub cmd_ital_Click()
txt_batch.Text = txt_batch.Text + "<i>" + txt_obj.Text + "</i>"
End Sub
Private Sub cmd_manualnextline_Click()
txt_batch.Text = txt_batch.Text + vbNewLine + txt_manual.Text
End Sub
Private Sub cmd_manualsameline_Click()
txt_batch.Text = txt_batch.Text + " " + txt_manual.Text
End Sub
Private Sub cmd_mkdir_Click()
If txt_batch.Text = "" Then
txt_batch.Text = txt_batch.Text + "mkdir"
Else
txt_batch.Text = txt_batch.Text + vbNewLine + "mkdir"
End If
End Sub
Private Sub cmd_paraclose_Click()
txt_batch.Text = txt_batch.Text + "</p>"
End Sub
Private Sub cmd_paraopen_Click()
txt_batch.Text = txt_batch.Text + "<p>"
End Sub
Private Sub cmd_pause_Click()
If txt_batch.Text = "" Then
txt_batch.Text = txt_batch.Text + "pause"
Else
txt_batch.Text = txt_batch.Text + vbNewLine + "pause"
End If
End Sub
Private Sub cmd_rd_Click()
If txt_batch.Text = "" Then
txt_batch.Text = txt_batch.Text + "rd"
Else
txt_batch.Text = txt_batch.Text + vbNewLine + "rd"
End If
End Sub
Private Sub cmd_rename_Click()
If txt_batch.Text = "" Then
txt_batch.Text = txt_batch.Text + "rename"
Else
txt_batch.Text = txt_batch.Text + vbNewLine + "rename"
End If
End Sub
Private Sub dos_Click()
txt_manual.Enabled = True
Label12.Caption = "autorun (disabled)"
cls_all.Enabled = True
Label13.Caption = "open (disabled)"
Check3.Enabled = False
Check3.Value = 0
Label14.Caption = "icon (disabled)"
txt_open.Enabled = False
txt_icon.Enabled = False
txt_batch.Enabled = True
save_txt.Enabled = True
rst.Enabled = True
save_aut.Enabled = False
clr.Enabled = True
txt_batch.Text = ""
Label10.Caption = "title"
txt_title.Enabled = True
Label1.Caption = "text editor"
Label11.Caption = "save file as..."
txt_path.Enabled = True
txt_name.Enabled = True
Label3.Caption = "commands and paths input"
cmd_manualnextline.Enabled = True
cmd_manualsameline.Enabled = True
Label5.Caption = "savepath"
Label6.Caption = "filename"
Label1.Caption = "text editor"
Check1.Enabled = True
Check2.Enabled = False
Check2.Value = 0
Check1.Value = 0
Check1.Caption = "echoing on/off"
Check2.Caption = "html basic scripts on/off (disabled)"
Check3.Caption = "autorun scripts on/off (disabled)"
Label8.Caption = "value (disabled)"
Label9.Caption = "item (disabled)"
cmd_copy.Enabled = True
cmd_mkdir.Enabled = True
cmd_assoc.Enabled = True
cmd_pause.Enabled = True
cmd_echo.Enabled = True
cmd_erase.Enabled = True
cmd_rd.Enabled = True
cmd_color.Enabled = True
cmd_rename.Enabled = True
cmd_exit.Enabled = True
cmd_sysdrv.Enabled = True
cmd_sysrt.Enabled = True
cmd_sysdir.Enabled = True
save_bat.Enabled = True
save_cmd.Enabled = True
save_html.Enabled = False
cmd_fontcolor.Enabled = False
cmd_fontsize.Enabled = False
cmd_closefont.Enabled = False
cmd_img.Enabled = False
cmd_strike.Enabled = False
cmd_bldtxt.Enabled = False
cmd_ital.Enabled = False
cmd_udtxt.Enabled = False
cmd_paraopen.Enabled = False
cmd_paraclose.Enabled = False
Label2.Caption = "dos commands"
Label4.Caption = "system variables"
Label7.Caption = "html commands (disabled)"
txt_paraval.Enabled = False
txt_obj.Enabled = False
End Sub
Private Sub html_Click()
txt_manual.Enabled = True
cls_all.Enabled = True
Label13.Caption = "open (disabled)"
Label12.Caption = "autorun (disabled)"
Label14.Caption = "icon (disabled)"
txt_open.Enabled = False
txt_icon.Enabled = False
txt_batch.Enabled = True
save_txt.Enabled = True
Check3.Caption = "autorun scripts on/off (disabled)"
rst.Enabled = True
Check2.Caption = "html basic scripts on/off"
clr.Enabled = True
Check1.Caption = "echoing on/off (disabled)"
txt_batch.Text = ""
Label10.Caption = "title"
txt_title.Enabled = True
save_aut.Enabled = False
Label1.Caption = "text editor"
Label11.Caption = "save file as..."
txt_path.Enabled = True
txt_name.Enabled = True
Label3.Caption = "commands and paths input"
cmd_manualnextline.Enabled = True
cmd_manualsameline.Enabled = True
Label5.Caption = "savepath"
Label6.Caption = "filename"
Check3.Enabled = False
Check3.Value = 0
Label8.Caption = "value"
Label9.Caption = "item"
Check1.Value = 1
Check1.Enabled = False
Check2.Enabled = True
cmd_copy.Enabled = False
cmd_mkdir.Enabled = False
cmd_assoc.Enabled = False
cmd_pause.Enabled = False
cmd_echo.Enabled = False
cmd_erase.Enabled = False
cmd_rd.Enabled = False
cmd_color.Enabled = False
cmd_rename.Enabled = False
cmd_exit.Enabled = False
cmd_sysdrv.Enabled = False
cmd_sysrt.Enabled = False
cmd_sysdir.Enabled = False
save_bat.Enabled = False
save_cmd.Enabled = False
save_html.Enabled = True
cmd_fontcolor.Enabled = True
cmd_fontsize.Enabled = True
cmd_closefont.Enabled = True
cmd_img.Enabled = True
cmd_strike.Enabled = True
cmd_bldtxt.Enabled = True
cmd_ital.Enabled = True
cmd_udtxt.Enabled = True
cmd_paraopen.Enabled = True
cmd_paraclose.Enabled = True
Label2.Caption = "dos commands (disabled)"
Label4.Caption = "system variables (disabled)"
Label7.Caption = "html commands"
txt_paraval.Enabled = True
txt_obj.Enabled = True
End Sub
Private Sub rst_Click()
txt_title = ""
txt_paraval = ""
txt_obj = ""
txt_path = ""
txt_name = ""
txt_manual = ""
txt_open = ""
txt_icon = ""
End Sub
Private Sub save_aut_Click()
nfile = FreeFile
Open txt_path.Text + "\autorun.inf" For Append As #nfile
Print #nfile, ""
If Check3.Value = 0 Then
    If txt_icon.Text = "" Then
        Print #nfile, txt_open.Text
        Else
        Print #nfile, txt_open.Text + vbNewLine + txt_icon.Text
    End If
End If
If Check3.Value = 1 Then
    If txt_icon = "" Then
    Print #nfile, "[autorun]" + vbNewLine + "open=" + txt_open.Text
    Else
    Print #nfile, "[autorun]" + vbNewLine + "open=" + txt_open.Text + vbNewLine + "icon=" + txt_icon.Text
    End If
    Close #nfile
End If
End Sub
Private Sub save_bat_Click()
    If Check1.Value = 1 Then
        nfile = FreeFile
        Open txt_path.Text + "\" + txt_name.Text + ".bat" For Append As #nfile
        Print #nfile, ""
        If txt_title.Text = "" Then
            Print #nfile, txt_batch.Text
            Else
            Print #nfile, "title " + txt_title.Text + vbNewLine + txt_batch.Text
        End If
        Close #nfile
    End If
    If Check1.Value = 0 Then
         nfile = FreeFile
         Open txt_path.Text + "\" + txt_name.Text + ".bat" For Append As #nfile
         Print #nfile, ""
            If txt_title.Text = "" Then
                Print #nfile, "@echo off" + vbNewLine + txt_batch.Text
                Else
                Print #nfile, "@echo off" + vbNewLine + "title " + txt_title.Text + vbNewLine + txt_batch.Text
            End If
        Close #nfile
    End If
End Sub
Private Sub save_cmd_Click()
    If Check1.Value = 1 Then
        nfile = FreeFile
        Open txt_path.Text + "\" + txt_name.Text + ".cmd" For Append As #nfile
        Print #nfile, ""
        If txt_title.Text = "" Then
            Print #nfile, txt_batch.Text
            Else
            Print #nfile, "title " + txt_title.Text + vbNewLine + txt_batch.Text
        End If
        Close #nfile
    End If
    If Check1.Value = 0 Then
         nfile = FreeFile
         Open txt_path.Text + "\" + txt_name.Text + ".cmd" For Append As #nfile
         Print #nfile, ""
            If txt_title.Text = "" Then
                Print #nfile, "@echo off" + vbNewLine + txt_batch.Text
                Else
                Print #nfile, "@echo off" + vbNewLine + "title " + txt_title.Text + vbNewLine + txt_batch.Text
            End If
        Close #nfile
    End If
End Sub
Private Sub save_html_Click()
    If Check2.Value = 1 Then
         nfile = FreeFile
        Open txt_path.Text + "\" + txt_name.Text + ".html" For Append As #nfile
        Print #nfile, ""
        If txt_title.Text = "" Then
            Print #nfile, "<HTML>" + vbNewLine + "        " + "<head>" + vbNewLine + "        " + "</head>" + vbNewLine + "        " + "<body>" + vbNewLine + "                " + txt_batch.Text + vbNewLine + "        " + "</body>" + vbNewLine + "</html>"
            Else
            Print #nfile, "<HTML>" + vbNewLine + "        " + "<head>" + vbNewLine + "                " + "<title>" + txt_title.Text + "</title>" + vbNewLine + "        " + "</head>" + vbNewLine + "        " + "<body>" + vbNewLine + "                " + txt_batch.Text + vbNewLine + "        " + "</body>" + vbNewLine + "</html>"
            End If
        Close #nfile
    End If
    If Check2.Value = 0 Then
         nfile = FreeFile
        Open txt_path.Text + "\" + txt_name.Text + ".html" For Append As #nfile
        Print #nfile, ""
            Print #nfile, txt_batch.Text
        Close #nfile
    End If
End Sub
Private Sub save_txt_Click()
    If Check1.Value = 1 Then
        nfile = FreeFile
        Open txt_path.Text + "\" + txt_name.Text + ".txt" For Append As #nfile
        Print #nfile, ""
        If txt_title.Text = "" Then
            Print #nfile, txt_batch.Text
            Else
            Print #nfile, "title " + txt_title.Text + vbNewLine + txt_batch.Text
        End If
        Close #nfile
    End If
    If Check1.Value = 0 Then
        nfile = FreeFile
        Open txt_path.Text + "\" + txt_name.Text + ".txt" For Append As #nfile
        Print #nfile, ""
        If txt_title.Text = "" Then
            Print #nfile, "@echo off" + vbNewLine + txt_batch.Text
            Else
            Print #nfile, "@echo off" + vbNewLine + "title " + txt_title.Text + vbNewLine + txt_batch.Text
        End If
        Close #nfile
    End If
    If Check2.Value = 1 Then
         nfile = FreeFile
        Open txt_path.Text + "\" + txt_name.Text + ".txt" For Append As #nfile
        Print #nfile, ""
        If txt_title.Text = "" Then
            Print #nfile, "<HTML>" + vbNewLine + "        " + "<head>" + vbNewLine + "        " + "</head>" + vbNewLine + "        " + "<body>" + vbNewLine + "                " + txt_batch.Text + vbNewLine + "        " + "</body>" + vbNewLine + "</html>"
            Else
            Print #nfile, "<HTML>" + vbNewLine + "        " + "<head>" + vbNewLine + "                " + "<title>" + txt_title.Text + "</title>" + vbNewLine + "        " + "</head>" + vbNewLine + "        " + "<body>" + vbNewLine + "                " + txt_batch.Text + vbNewLine + "        " + "</body>" + vbNewLine + "</html>"
            End If
        Close #nfile
    End If
    If Check2.Value = 0 Then
         nfile = FreeFile
        Open txt_path.Text + "\" + txt_name.Text + ".txt" For Append As #nfile
        Print #nfile, ""
            Print #nfile, txt_batch.Text
        Close #nfile
    End If
End Sub
Private Sub cmd_strike_Click()
txt_batch.Text = txt_batch.Text + "<strike>" + txt_obj.Text + "</strike>"
End Sub
Private Sub cmd_sysdir_Click()
txt_batch.Text = txt_batch.Text + "%Systemdirectory%"
End Sub
Private Sub cmd_sysdrv_Click()
txt_batch.Text = txt_batch.Text + "%SystemDrive%"
End Sub
Private Sub cmd_sysrt_Click()
txt_batch.Text = txt_batch.Text + "%Systemroot%"
End Sub
Private Sub cmd_udtxt_Click()
txt_batch.Text = txt_batch.Text + "<u>" + txt_obj.Text + "</u>"
End Sub
Private Sub exit_Click()
End
End Sub
Private Sub Form_Load()
cmd_copy.Enabled = False
cmd_mkdir.Enabled = False
Label12.Caption = "autorun (disabled)"
cmd_assoc.Enabled = False
cmd_pause.Enabled = False
cmd_echo.Enabled = False
cmd_erase.Enabled = False
cmd_rd.Enabled = False
cmd_color.Enabled = False
cmd_rename.Enabled = False
cmd_exit.Enabled = False
cmd_sysdrv.Enabled = False
cmd_sysrt.Enabled = False
cmd_sysdir.Enabled = False
save_bat.Enabled = False
save_cmd.Enabled = False
save_html.Enabled = False
cmd_fontcolor.Enabled = False
cmd_fontsize.Enabled = False
cmd_closefont.Enabled = False
cmd_img.Enabled = False
cmd_strike.Enabled = False
cmd_bldtxt.Enabled = False
cmd_ital.Enabled = False
cmd_udtxt.Enabled = False
cmd_paraopen.Enabled = False
cmd_paraclose.Enabled = False
rst.Enabled = False
clr.Enabled = False
Check1.Enabled = False
Check2.Enabled = False
Check3.Enabled = False
save_txt.Enabled = False
Label2.Caption = "dos commands (disabled)"
Label4.Caption = "system variables (disabled)"
Label7.Caption = "html commands (disabled)"
Label10.Caption = "title (disabled)"
txt_title.Enabled = False
txt_batch.Enabled = False
txt_manual.Enabled = False
txt_paraval.Enabled = False
txt_obj.Enabled = False
Label8.Caption = "value (disabled)"
Label9.Caption = "item (disabled)"
Label1.Caption = "text editor (disabled)"
Label11.Caption = "save file as... (disabled)"
txt_path.Enabled = False
txt_name.Enabled = False
Label3.Caption = "commands and paths input (disabled)"
cmd_manualnextline.Enabled = False
cmd_manualsameline.Enabled = False
Label5.Caption = "savepath (disabled)"
Label6.Caption = "filename (disabled)"
Label13.Caption = "open (disabled)"
Label14.Caption = "icon (disabled)"
txt_open.Enabled = False
txt_icon.Enabled = False
save_aut.Enabled = False
cls_all.Enabled = False
Check2.Caption = "basic html scripts (disabled)"
Check1.Caption = "echoing on/off (disabled)"
Check3.Caption = "autorun scripts on/off (disabled)"
End Sub
