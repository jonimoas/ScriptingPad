Option Strict Off
Option Explicit On
Friend Class Form1
	Inherits System.Windows.Forms.Form
	Dim nfile As Short
	Public Sub autorun_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles autorun.Click
		Dim disabled As Object
		txt_manual.Enabled = False
		Check3.Enabled = True
		Label12.Text = "autorun"
		cls_all.Enabled = True
		Label13.Text = "open"
		save_aut.Enabled = True
		Label14.Text = "icon"
		txt_open.Enabled = True
		txt_icon.Enabled = True
		'UPGRADE_WARNING: Couldn't resolve default property of object disabled. Click for more: 'ms-help://MS.VSCC.v90/dv_commoner/local/redirect.htm?keyword="6A50421D-15FE-4896-8A1B-2EC21E9037B2"'
		txt_batch.Enabled = disabled
		save_txt.Enabled = True
		rst.Enabled = False
		clr.Enabled = False
		txt_batch.Text = ""
		Label10.Text = "title (disabled)"
		txt_title.Enabled = False
		Label1.Text = "text editor (disabled)"
		Label11.Text = "save file as..."
		txt_path.Enabled = True
		txt_name.Enabled = False
		Label3.Text = "commands and paths input (disabled)"
		cmd_manualnextline.Enabled = False
		cmd_manualsameline.Enabled = False
		Label5.Text = "savepath"
		Label6.Text = "filename (disabled)"
		Label8.Text = "value (disabled)"
		Label9.Text = "item (disabled)"
		Check3.Text = "autorun scripts on/off"
		Check1.CheckState = System.Windows.Forms.CheckState.Checked
		Check2.CheckState = System.Windows.Forms.CheckState.Unchecked
		Check1.Enabled = False
		Check2.Enabled = False
		Check2.Text = "basic html scripts (disabled)"
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
		Check1.Text = "echoing on/off (disabled)"
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
		Label2.Text = "dos commands (disabled)"
		Label4.Text = "system variables (disabled)"
		Label7.Text = "html commands (disabled)"
		txt_paraval.Enabled = False
		txt_obj.Enabled = False
	End Sub
	'UPGRADE_WARNING: Event Check1.CheckStateChanged may fire when form is initialized. Click for more: 'ms-help://MS.VSCC.v90/dv_commoner/local/redirect.htm?keyword="88B12AE1-6DE0-48A0-86F1-60C0686C026A"'
	Private Sub Check1_CheckStateChanged(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles Check1.CheckStateChanged
		If Check1.CheckState = 1 Then
			Check1.Text = "echoing on"
		Else
			Check1.Text = "echoing off"
		End If
	End Sub
	'UPGRADE_WARNING: Event Check2.CheckStateChanged may fire when form is initialized. Click for more: 'ms-help://MS.VSCC.v90/dv_commoner/local/redirect.htm?keyword="88B12AE1-6DE0-48A0-86F1-60C0686C026A"'
	Private Sub Check2_CheckStateChanged(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles Check2.CheckStateChanged
		If Check2.CheckState = 1 Then
			Check2.Text = "html basic scripts on"
			Label10.Text = "title"
			txt_title.Enabled = True
		Else
			Check2.Text = "html basic scripts off"
			Label10.Text = "title (disabled)"
			txt_title.Enabled = False
		End If
	End Sub
	Private Sub clear_Click()
		txt_batch.Text = ""
	End Sub
	Public Sub cls_all_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cls_all.Click
		txt_title.Text = ""
		txt_paraval.Text = ""
		txt_obj.Text = ""
		txt_path.Text = ""
		txt_name.Text = ""
		txt_manual.Text = ""
		txt_open.Text = ""
		txt_icon.Text = ""
		txt_batch.Text = ""
	End Sub
	Private Sub cmd_assoc_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_assoc.Click
		If txt_batch.Text = "" Then
			txt_batch.Text = txt_batch.Text & "assoc"
		Else
			txt_batch.Text = txt_batch.Text & vbNewLine & "assoc"
		End If
	End Sub
	Private Sub cmd_bldtxt_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_bldtxt.Click
		txt_batch.Text = txt_batch.Text & "<b>" & txt_obj.Text & "</b>"
	End Sub
	Public Sub clr_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles clr.Click
		txt_batch.Text = ""
	End Sub
	Private Sub cmd_closefont_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_closefont.Click
		txt_batch.Text = txt_batch.Text & "</font>"
	End Sub
	Private Sub cmd_color_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_color.Click
		If txt_batch.Text = "" Then
			txt_batch.Text = txt_batch.Text & "color"
		Else
			txt_batch.Text = txt_batch.Text & vbNewLine & "color"
		End If
	End Sub
	Private Sub cmd_copy_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_copy.Click
		If txt_batch.Text = "" Then
			txt_batch.Text = txt_batch.Text & "Copy"
		Else
			txt_batch.Text = txt_batch.Text & vbNewLine & "Copy"
		End If
	End Sub
	Private Sub cmd_echo_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_echo.Click
		If txt_batch.Text = "" Then
			txt_batch.Text = txt_batch.Text & "echo"
		Else
			txt_batch.Text = txt_batch.Text & vbNewLine & "echo"
		End If
	End Sub
	Private Sub cmd_erase_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_erase.Click
		If txt_batch.Text = "" Then
			txt_batch.Text = txt_batch.Text & "erase"
		Else
			txt_batch.Text = txt_batch.Text & vbNewLine & "erase"
		End If
	End Sub
	Private Sub cmd_exit_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_exit.Click
		If txt_batch.Text = "" Then
			txt_batch.Text = txt_batch.Text & "exit"
		Else
			txt_batch.Text = txt_batch.Text & vbNewLine & "exit"
		End If
	End Sub
	Private Sub cmd_fontcolor_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_fontcolor.Click
		txt_batch.Text = txt_batch.Text & "<font color = " & txt_eis.Text & txt_paraval.Text & txt_eis.Text & ">" & txt_obj.Text
	End Sub
	Private Sub cmd_fontsize_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_fontsize.Click
		txt_batch.Text = txt_batch.Text & "<font size = " & txt_paraval.Text & ">" & txt_obj.Text
	End Sub
	Private Sub cmd_img_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_img.Click
		txt_batch.Text = txt_batch.Text & "<img src=" & txt_eis.Text & txt_obj.Text & txt_eis.Text & ">"
	End Sub
	Private Sub cmd_ital_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_ital.Click
		txt_batch.Text = txt_batch.Text & "<i>" & txt_obj.Text & "</i>"
	End Sub
	Private Sub cmd_manualnextline_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_manualnextline.Click
		txt_batch.Text = txt_batch.Text & vbNewLine & txt_manual.Text
	End Sub
	Private Sub cmd_manualsameline_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_manualsameline.Click
		txt_batch.Text = txt_batch.Text & " " & txt_manual.Text
	End Sub
	Private Sub cmd_mkdir_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_mkdir.Click
		If txt_batch.Text = "" Then
			txt_batch.Text = txt_batch.Text & "mkdir"
		Else
			txt_batch.Text = txt_batch.Text & vbNewLine & "mkdir"
		End If
	End Sub
	Private Sub cmd_paraclose_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_paraclose.Click
		txt_batch.Text = txt_batch.Text & "</p>"
	End Sub
	Private Sub cmd_paraopen_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_paraopen.Click
		txt_batch.Text = txt_batch.Text & "<p>"
	End Sub
	Private Sub cmd_pause_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_pause.Click
		If txt_batch.Text = "" Then
			txt_batch.Text = txt_batch.Text & "pause"
		Else
			txt_batch.Text = txt_batch.Text & vbNewLine & "pause"
		End If
	End Sub
	Private Sub cmd_rd_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_rd.Click
		If txt_batch.Text = "" Then
			txt_batch.Text = txt_batch.Text & "rd"
		Else
			txt_batch.Text = txt_batch.Text & vbNewLine & "rd"
		End If
	End Sub
	Private Sub cmd_rename_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_rename.Click
		If txt_batch.Text = "" Then
			txt_batch.Text = txt_batch.Text & "rename"
		Else
			txt_batch.Text = txt_batch.Text & vbNewLine & "rename"
		End If
	End Sub
	Public Sub dos_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles dos.Click
		txt_manual.Enabled = True
		Label12.Text = "autorun (disabled)"
		cls_all.Enabled = True
		Label13.Text = "open (disabled)"
		Check3.Enabled = False
		Check3.CheckState = System.Windows.Forms.CheckState.Unchecked
		Label14.Text = "icon (disabled)"
		txt_open.Enabled = False
		txt_icon.Enabled = False
		txt_batch.Enabled = True
		save_txt.Enabled = True
		rst.Enabled = True
		save_aut.Enabled = False
		clr.Enabled = True
		txt_batch.Text = ""
		Label10.Text = "title"
		txt_title.Enabled = True
		Label1.Text = "text editor"
		Label11.Text = "save file as..."
		txt_path.Enabled = True
		txt_name.Enabled = True
		Label3.Text = "commands and paths input"
		cmd_manualnextline.Enabled = True
		cmd_manualsameline.Enabled = True
		Label5.Text = "savepath"
		Label6.Text = "filename"
		Label1.Text = "text editor"
		Check1.Enabled = True
		Check2.Enabled = False
		Check2.CheckState = System.Windows.Forms.CheckState.Unchecked
		Check1.CheckState = System.Windows.Forms.CheckState.Unchecked
		Check1.Text = "echoing on/off"
		Check2.Text = "html basic scripts on/off (disabled)"
		Check3.Text = "autorun scripts on/off (disabled)"
		Label8.Text = "value (disabled)"
		Label9.Text = "item (disabled)"
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
		Label2.Text = "dos commands"
		Label4.Text = "system variables"
		Label7.Text = "html commands (disabled)"
		txt_paraval.Enabled = False
		txt_obj.Enabled = False
	End Sub
	Public Sub html_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles html.Click
		txt_manual.Enabled = True
		cls_all.Enabled = True
		Label13.Text = "open (disabled)"
		Label12.Text = "autorun (disabled)"
		Label14.Text = "icon (disabled)"
		txt_open.Enabled = False
		txt_icon.Enabled = False
		txt_batch.Enabled = True
		save_txt.Enabled = True
		Check3.Text = "autorun scripts on/off (disabled)"
		rst.Enabled = True
		Check2.Text = "html basic scripts on/off"
		clr.Enabled = True
		Check1.Text = "echoing on/off (disabled)"
		txt_batch.Text = ""
		Label10.Text = "title"
		txt_title.Enabled = True
		save_aut.Enabled = False
		Label1.Text = "text editor"
		Label11.Text = "save file as..."
		txt_path.Enabled = True
		txt_name.Enabled = True
		Label3.Text = "commands and paths input"
		cmd_manualnextline.Enabled = True
		cmd_manualsameline.Enabled = True
		Label5.Text = "savepath"
		Label6.Text = "filename"
		Check3.Enabled = False
		Check3.CheckState = System.Windows.Forms.CheckState.Unchecked
		Label8.Text = "value"
		Label9.Text = "item"
		Check1.CheckState = System.Windows.Forms.CheckState.Checked
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
		Label2.Text = "dos commands (disabled)"
		Label4.Text = "system variables (disabled)"
		Label7.Text = "html commands"
		txt_paraval.Enabled = True
		txt_obj.Enabled = True
	End Sub
	Public Sub rst_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles rst.Click
		txt_title.Text = ""
		txt_paraval.Text = ""
		txt_obj.Text = ""
		txt_path.Text = ""
		txt_name.Text = ""
		txt_manual.Text = ""
		txt_open.Text = ""
		txt_icon.Text = ""
	End Sub
	Public Sub save_aut_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles save_aut.Click
		nfile = FreeFile
		FileOpen(nfile, txt_path.Text & "\autorun.inf", OpenMode.Append)
		PrintLine(nfile, "")
		If Check3.CheckState = 0 Then
			If txt_icon.Text = "" Then
				PrintLine(nfile, txt_open.Text)
			Else
				PrintLine(nfile, txt_open.Text & vbNewLine & txt_icon.Text)
			End If
		End If
		If Check3.CheckState = 1 Then
			If txt_icon.Text = "" Then
				PrintLine(nfile, "[autorun]" & vbNewLine & "open=" & txt_open.Text)
			Else
				PrintLine(nfile, "[autorun]" & vbNewLine & "open=" & txt_open.Text & vbNewLine & "icon=" & txt_icon.Text)
			End If
			FileClose(nfile)
		End If
	End Sub
	Public Sub save_bat_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles save_bat.Click
		If Check1.CheckState = 1 Then
			nfile = FreeFile
			FileOpen(nfile, txt_path.Text & "\" & txt_name.Text & ".bat", OpenMode.Append)
			PrintLine(nfile, "")
			If txt_title.Text = "" Then
				PrintLine(nfile, txt_batch.Text)
			Else
				PrintLine(nfile, "title " & txt_title.Text & vbNewLine & txt_batch.Text)
			End If
			FileClose(nfile)
		End If
		If Check1.CheckState = 0 Then
			nfile = FreeFile
			FileOpen(nfile, txt_path.Text & "\" & txt_name.Text & ".bat", OpenMode.Append)
			PrintLine(nfile, "")
			If txt_title.Text = "" Then
				PrintLine(nfile, "@echo off" & vbNewLine & txt_batch.Text)
			Else
				PrintLine(nfile, "@echo off" & vbNewLine & "title " & txt_title.Text & vbNewLine & txt_batch.Text)
			End If
			FileClose(nfile)
		End If
	End Sub
	Public Sub save_cmd_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles save_cmd.Click
		If Check1.CheckState = 1 Then
			nfile = FreeFile
			FileOpen(nfile, txt_path.Text & "\" & txt_name.Text & ".cmd", OpenMode.Append)
			PrintLine(nfile, "")
			If txt_title.Text = "" Then
				PrintLine(nfile, txt_batch.Text)
			Else
				PrintLine(nfile, "title " & txt_title.Text & vbNewLine & txt_batch.Text)
			End If
			FileClose(nfile)
		End If
		If Check1.CheckState = 0 Then
			nfile = FreeFile
			FileOpen(nfile, txt_path.Text & "\" & txt_name.Text & ".cmd", OpenMode.Append)
			PrintLine(nfile, "")
			If txt_title.Text = "" Then
				PrintLine(nfile, "@echo off" & vbNewLine & txt_batch.Text)
			Else
				PrintLine(nfile, "@echo off" & vbNewLine & "title " & txt_title.Text & vbNewLine & txt_batch.Text)
			End If
			FileClose(nfile)
		End If
	End Sub
	Public Sub save_html_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles save_html.Click
		If Check2.CheckState = 1 Then
			nfile = FreeFile
			FileOpen(nfile, txt_path.Text & "\" & txt_name.Text & ".html", OpenMode.Append)
			PrintLine(nfile, "")
			If txt_title.Text = "" Then
				PrintLine(nfile, "<HTML>" & vbNewLine & "        " & "<head>" & vbNewLine & "        " & "</head>" & vbNewLine & "        " & "<body>" & vbNewLine & "                " & txt_batch.Text & vbNewLine & "        " & "</body>" & vbNewLine & "</html>")
			Else
				PrintLine(nfile, "<HTML>" & vbNewLine & "        " & "<head>" & vbNewLine & "                " & "<title>" & txt_title.Text & "</title>" & vbNewLine & "        " & "</head>" & vbNewLine & "        " & "<body>" & vbNewLine & "                " & txt_batch.Text & vbNewLine & "        " & "</body>" & vbNewLine & "</html>")
			End If
			FileClose(nfile)
		End If
		If Check2.CheckState = 0 Then
			nfile = FreeFile
			FileOpen(nfile, txt_path.Text & "\" & txt_name.Text & ".html", OpenMode.Append)
			PrintLine(nfile, "")
			PrintLine(nfile, txt_batch.Text)
			FileClose(nfile)
		End If
	End Sub
	Public Sub save_txt_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles save_txt.Click
		If Check1.CheckState = 1 Then
			nfile = FreeFile
			FileOpen(nfile, txt_path.Text & "\" & txt_name.Text & ".txt", OpenMode.Append)
			PrintLine(nfile, "")
			If txt_title.Text = "" Then
				PrintLine(nfile, txt_batch.Text)
			Else
				PrintLine(nfile, "title " & txt_title.Text & vbNewLine & txt_batch.Text)
			End If
			FileClose(nfile)
		End If
		If Check1.CheckState = 0 Then
			nfile = FreeFile
			FileOpen(nfile, txt_path.Text & "\" & txt_name.Text & ".txt", OpenMode.Append)
			PrintLine(nfile, "")
			If txt_title.Text = "" Then
				PrintLine(nfile, "@echo off" & vbNewLine & txt_batch.Text)
			Else
				PrintLine(nfile, "@echo off" & vbNewLine & "title " & txt_title.Text & vbNewLine & txt_batch.Text)
			End If
			FileClose(nfile)
		End If
		If Check2.CheckState = 1 Then
			nfile = FreeFile
			FileOpen(nfile, txt_path.Text & "\" & txt_name.Text & ".txt", OpenMode.Append)
			PrintLine(nfile, "")
			If txt_title.Text = "" Then
				PrintLine(nfile, "<HTML>" & vbNewLine & "        " & "<head>" & vbNewLine & "        " & "</head>" & vbNewLine & "        " & "<body>" & vbNewLine & "                " & txt_batch.Text & vbNewLine & "        " & "</body>" & vbNewLine & "</html>")
			Else
				PrintLine(nfile, "<HTML>" & vbNewLine & "        " & "<head>" & vbNewLine & "                " & "<title>" & txt_title.Text & "</title>" & vbNewLine & "        " & "</head>" & vbNewLine & "        " & "<body>" & vbNewLine & "                " & txt_batch.Text & vbNewLine & "        " & "</body>" & vbNewLine & "</html>")
			End If
			FileClose(nfile)
		End If
		If Check2.CheckState = 0 Then
			nfile = FreeFile
			FileOpen(nfile, txt_path.Text & "\" & txt_name.Text & ".txt", OpenMode.Append)
			PrintLine(nfile, "")
			PrintLine(nfile, txt_batch.Text)
			FileClose(nfile)
		End If
	End Sub
	Private Sub cmd_strike_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_strike.Click
		txt_batch.Text = txt_batch.Text & "<strike>" & txt_obj.Text & "</strike>"
	End Sub
	Private Sub cmd_sysdir_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_sysdir.Click
		txt_batch.Text = txt_batch.Text & "%Systemdirectory%"
	End Sub
	Private Sub cmd_sysdrv_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_sysdrv.Click
		txt_batch.Text = txt_batch.Text & "%SystemDrive%"
	End Sub
	Private Sub cmd_sysrt_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_sysrt.Click
		txt_batch.Text = txt_batch.Text & "%Systemroot%"
	End Sub
	Private Sub cmd_udtxt_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles cmd_udtxt.Click
		txt_batch.Text = txt_batch.Text & "<u>" & txt_obj.Text & "</u>"
	End Sub
	Public Sub exit_Renamed_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles exit_Renamed.Click
		End
	End Sub
	Private Sub Form1_Load(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles MyBase.Load
		cmd_copy.Enabled = False
		cmd_mkdir.Enabled = False
		Label12.Text = "autorun (disabled)"
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
		Label2.Text = "dos commands (disabled)"
		Label4.Text = "system variables (disabled)"
		Label7.Text = "html commands (disabled)"
		Label10.Text = "title (disabled)"
		txt_title.Enabled = False
		txt_batch.Enabled = False
		txt_manual.Enabled = False
		txt_paraval.Enabled = False
		txt_obj.Enabled = False
		Label8.Text = "value (disabled)"
		Label9.Text = "item (disabled)"
		Label1.Text = "text editor (disabled)"
		Label11.Text = "save file as... (disabled)"
		txt_path.Enabled = False
		txt_name.Enabled = False
		Label3.Text = "commands and paths input (disabled)"
		cmd_manualnextline.Enabled = False
		cmd_manualsameline.Enabled = False
		Label5.Text = "savepath (disabled)"
		Label6.Text = "filename (disabled)"
		Label13.Text = "open (disabled)"
		Label14.Text = "icon (disabled)"
		txt_open.Enabled = False
		txt_icon.Enabled = False
		save_aut.Enabled = False
		cls_all.Enabled = False
		Check2.Text = "basic html scripts (disabled)"
		Check1.Text = "echoing on/off (disabled)"
		Check3.Text = "autorun scripts on/off (disabled)"
	End Sub
End Class