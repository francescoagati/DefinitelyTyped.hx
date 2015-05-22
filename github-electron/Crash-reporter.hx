typedef CrashReporterPayload = {
	>Dynamic,
	var rept : String;
	var ver : String;
	var platform : String;
	var process_type : String;
	var ptime : Float;
	var _version : String;
	var _productName : String;
	var prod : String;
	var _companyName : String;
	var upload_file_minidump : File;
};
extern class Crash-reporterTopLevel {
	static function start(?options:{ @:optional
	var productName : String; @:optional
	var companyName : String; @:optional
	var submitUrl : String; @:optional
	var autoSubmit : Bool; @:optional
	var ignoreSystemCrashHandler : Bool; @:optional
	var extra : { }; }):Void;
	static function getLastCrashReport():CrashReporterPayload;
}
