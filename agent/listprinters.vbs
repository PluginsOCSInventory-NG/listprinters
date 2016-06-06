'Author: Valentin DEVILLE


Set WshNetwork = WScript.CreateObject("WScript.Network")
Set oPrinters = WshNetwork.EnumPrinterConnections


For i = 0 to oPrinters.Count - 1 Step 2
    Wscript.Echo "<LISTPRINTERS>"
        Wscript.Echo "<NAME>" & oPrinters.Item(i+1) & "</NAME>"
        Wscript.Echo "<ADDRESS>" & oPrinters.Item(i) & "</ADDRESS>"
    Wscript.Echo "</LISTPRINTERS>"
Next
