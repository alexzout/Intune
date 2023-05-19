choco feature enable --name="'useEnhancedExitCodes'" -y
$PackageName = "icloud"
choco list -e $PackageName --local-only
exit $LastExitCode