choco feature enable --name="'useEnhancedExitCodes'" -y
$PackageName = "firefox"
choco list -e $PackageName --local-only
exit $LastExitCode