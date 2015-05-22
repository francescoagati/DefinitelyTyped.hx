typedef LaunchData = {
	@:optional
	var id : String;
	@:optional
	var items : Array<LaunchDataItem>;
	@:optional
	var url : String;
	@:optional
	var referrerUrl : String;
	@:optional
	var isKioskSession : Bool;
};
typedef LaunchDataItem = {
	var entry : FileEntry;
	var type : String;
};
typedef LaunchedEvent = {
	function addListener(callback:LaunchData -> Void):Void;
};
typedef RestartedEvent = {
	function addListener(callback:Void -> Void):Void;
};
extern class Chrome.app.runtimeTopLevel {
	static var onLaunched : LaunchedEvent;
	static var onRestarted : RestartedEvent;
}
