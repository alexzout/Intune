choco feature enable --name="'useEnhancedExitCodes'" -y
$PackageName = "googlechrome"
choco list -e $PackageName --local-only
exit $LastExitCode