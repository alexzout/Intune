choco feature enable --name="'useEnhancedExitCodes'" -y
$PackageName = "snagit"
choco list -e $PackageName --local-only
exit $LastExitCode