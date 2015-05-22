typedef Mixpanel = {
	var people : Mixpanel.People;
	function init(token:String, ?config:{ }, ?libraryName:String):Mixpanel;
	function push(item:Array<Dynamic>):Void;
	function disable(?events:Array<String>):Void;
	function track(eventName:String, ?params:{ }, ?callback:Void -> Void):Void;
	function track_links(querySelector:String, eventName:String, ?params:{ }):Void;
	function track_forms(querySelector:String, eventName:String, ?params:{ }):Void;
	function register(params:{ }, ?days:Float):Void;
	function register_once(params:{ }, ?defaultValue:String, ?days:Float):Void;
	function unregister(propertyName:String):Void;
	function identify(id:String):Void;
	function get_distinct_id():String;
	function alias(alias:String, ?currentId:String):Void;
	function set_config(config:{ }):Void;
	function get_config():{ };
	function get_property(propertyName:String):Dynamic;
};
