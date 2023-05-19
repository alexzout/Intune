choco feature enable --name="'useEnhancedExitCodes'" -y
$PackageName = "whatsapp"
choco list -e $PackageName --local-only
exit $LastExitCode