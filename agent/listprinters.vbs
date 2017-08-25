'----------------------------------------------------------
' Plugin for OCS Inventory NG 2.x
' Script :		Retrieve printers list
' Version :		1.01
' Date :		01/07/2017
' Author :		Valentin DEVILLE
' Contributor :	Stéphane PAUTREL (acb78.com)
'----------------------------------------------------------
' OS checked [X] on	32b	64b	(Professionnal edition)
'	Windows XP	[X]
'	Windows Vista	[X]	[X]
'	Windows 7	[X]	[X]
'	Windows 8.1	[X]	[X]	
'	Windows 10	[X]	[X]
'	Windows 2k8R2		[X]
'	Windows 2k12R2		[X]
'	Windows 2k16		[X]
' ---------------------------------------------------------
' NOTE : No checked on Windows 8
' ---------------------------------------------------------
On Error Resume Next

Set WshNetwork = WScript.CreateObject("WScript.Network")
Set oPrinters = WshNetwork.EnumPrinterConnections

For i = 0 to oPrinters.Count - 1 Step 2
Wscript.Echo _
	"<LISTPRINTERS>" & VbCrLf &_
	"<NAME>" & oPrinters.Item(i+1) & "</NAME>" & VbCrLf &_
	"<ADDRESS>" & oPrinters.Item(i) & "</ADDRESS>" & VbCrLf &_
	"</LISTPRINTERS>"
Next
