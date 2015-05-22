extern class ReporterTopLevel {
	static function nullReporter():Reporter;
	static function defaultReporter():Reporter;
	static function fullReporter(?showFullFilename:Bool):Reporter;
}
