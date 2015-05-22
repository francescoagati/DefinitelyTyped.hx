typedef Navigator = {
	var connection : Connection;
	var network : { var connection : Connection; };
};
typedef Document = {
	@:overload(function(type:Offline, connectionStateCallback:Void -> Dynamic, ?useCapture:Bool):Void { })
	function addEventListener(type:Online, connectionStateCallback:Void -> Dynamic, ?useCapture:Bool):Void;
};
typedef Connection = {
	var type : Float;
};
extern class NetworkInformationTopLevel {
	static var Connection : { var UNKNOWN : Float; var ETHERNET : Float; var WIFI : Float; var CELL_2G : Float; var CELL_3G : Float; var CELL_4G : Float; var CELL : Float; var NONE : Float; };
}
