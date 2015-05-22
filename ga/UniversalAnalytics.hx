typedef Ga = {
	var l : Float;
	var q : Array<Dynamic>;
	@:overload(function(trackingId:String, auto:String, ?opt_configObject:{ }):UniversalAnalytics.Tracker { })
	function create(trackingId:String, ?opt_configObject:{ }):UniversalAnalytics.Tracker;
	function getAll():Array<UniversalAnalytics.Tracker>;
	function getByName(name:String):UniversalAnalytics.Tracker;
};
typedef Tracker = {
	function get<T>(fieldName:String):T;
	function send(hitType:String, ?opt_fieldObject:{ }):Void;
	@:overload(function(fieldName:String, value:{ }):Void { })
	@:overload(function(fieldName:String, value:Float):Void { })
	@:overload(function(fieldName:String, value:Bool):Void { })
	function set(fieldName:String, value:String):Void;
};
