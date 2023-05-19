choco feature enable --name="'useEnhancedExitCodes'" -y
$PackageName = "keeper"
choco list -e $PackageName --local-only
exit $LastExitCode