choco feature enable --name="'useEnhancedExitCodes'" -y
$PackageName = "winrar"
choco list -e $PackageName --local-only
exit $LastExitCode