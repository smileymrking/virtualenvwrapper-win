param($name)

if($env:WORKON_HOME) {
	$WORKON_HOME = $env:WORKON_HOME
} else {
	$WORKON_HOME = $env:USERPROFILE
}

if($name) {
	invoke-expression -Command $WORKON_HOME\Envs\$name\Scripts\activate.ps1
} else {
	invoke-expression -Command workon.bat
}