choco feature enable --name="'useEnhancedExitCodes'" -y
$PackageName = "itunes"
choco list -e $PackageName --local-only
exit $LastExitCode