'Author: Valentin DEVILLE


Set WshNetwork = WScript.CreateObject("WScript.Network")
Set oPrinters = WshNetwork.EnumPrinterConnections


For i = 0 to oPrinters.Count - 1 Step 2
    Wscript.Echo _
        "<LISTPRINTERS>" & VbCrLf &_
        "<NAME>" & oPrinters.Item(i+1) & "</NAME>" & VbCrLf &_
        "<ADDRESS>" & oPrinters.Item(i) & "</ADDRESS>" & VbCrLf &_
    "</LISTPRINTERS>"
Next
