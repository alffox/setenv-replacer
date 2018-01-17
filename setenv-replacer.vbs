'Navigates to the \tomcat-8.0.32\bin relative to the current Liferay home path
Dim oShell : Set oShell = CreateObject("WScript.Shell")
oShell.CurrentDirectory = ".\tomcat-8.0.32\bin"

Const ForReading = 1
Const ForWriting = 2

'Variables are hardcoded here to avoid calling them each time as arguments from the command prompt
strFileName = "setenv.bat"
strOldText = "-Xmx1024m -XX:MaxPermSize=384m"
strNewText = "-Xmx2048m"

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.OpenTextFile(strFileName, ForReading)

strText = objFile.ReadAll
objFile.Close
strNewText = Replace(strText, strOldText, strNewText)

wscript.echo "Replacing -Xmx1024m -XX:MaxPermSize=384m with -Xmx1024m in your setenv.bat file, please wait ..."

Set objFile = objFSO.OpenTextFile(strFileName, ForWriting)
objFile.Write strNewText
objFile.Close

wscript.echo "Success ! Done !"
