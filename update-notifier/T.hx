typedef IResult = {
	var update : IUpdateInfo;
	function notify(?message:String):Void;
};
typedef ISettings = {
	@:optional
	var callback : Dynamic -> ?IUpdateInfo -> Dynamic;
	@:optional
	var packagePath : String;
	@:optional
	var packageName : String;
	@:optional
	var packageVersion : String;
	@:optional
	var updateCheckInterval : Float;
	@:optional
	var updateCheckTimeout : Float;
	@:optional
	var registryUrl : String;
};
typedef IUpdateInfo = {
	var latest : String;
	var current : String;
	var type : String;
	var date : String;
	var name : String;
};
