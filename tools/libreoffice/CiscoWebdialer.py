def ciscoWebdialerCall(*args): 
    """Call selected number"""
    import string
    import subprocess

    xModel = XSCRIPTCONTEXT.getDocument()

    xSelectionSupplier = xModel.getCurrentController()

    xIndexAccess = xSelectionSupplier.getSelection()
    count = xIndexAccess.getCount();
    if (count >= 1):  #ie we have a selection
        xTextRange = xIndexAccess.getByIndex(0);
        number = xTextRange.getString();
        subprocess.call(["cisco-webdialer", number])

g_exportedScripts = ciscoWebdialerCall,
