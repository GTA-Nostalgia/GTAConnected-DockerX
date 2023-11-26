Set objArgs = WScript.Arguments
ZipFile = objArgs(0)
ExtractTo = objArgs(1)

Set shell = CreateObject("Shell.Application")
Set zip = shell.NameSpace(ZipFile)

For Each item In zip.Items
    shell.NameSpace(ExtractTo).CopyHere(item)
Next
