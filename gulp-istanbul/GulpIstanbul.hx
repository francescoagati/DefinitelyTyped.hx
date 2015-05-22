typedef Options = {
	@:optional
	var coverageVariable : String;
	@:optional
	var includeUntested : Bool;
	@:optional
	var embedSource : Bool;
	@:optional
	var preserveComments : Bool;
	@:optional
	var noCompact : Bool;
	@:optional
	var noAutoWrap : Bool;
	@:optional
	var codeGenerationOptions : Dynamic;
	@:optional
	var debug : Bool;
	@:optional
	var walkDebug : Bool;
};
typedef Coverage = {
	var lines : CoverageStats;
	var statements : CoverageStats;
	var functions : CoverageStats;
	var branches : CoverageStats;
};
typedef CoverageStats = {
	var total : Float;
	var covered : Float;
	var skipped : Float;
	var pct : Float;
};
typedef ReportOptions = {
	@:optional
	var dir : String;
	@:optional
	var reporters : Array<String>;
	@:optional
	var reportOpts : { @:optional
	var dir : String; };
	@:optional
	var coverageVariable : String;
};
extern class GulpIstanbulTopLevel {
	static function hookRequire():NodeJS.ReadWriteStream;
	static function summarizeCoverage(?opts:{ @:optional
	var coverageVariable : String; }):Coverage;
	static function writeReports(?opts:ReportOptions):NodeJS.ReadWriteStream;
}
