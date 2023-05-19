choco feature enable --name="'useEnhancedExitCodes'" -y
$PackageName = "pdfxchangeeditor"
choco list -e $PackageName --local-only
exit $LastExitCode