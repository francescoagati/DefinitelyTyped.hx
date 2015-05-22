typedef IProjectConfig = { };
typedef ConfigModule = {
	function init(config:IProjectConfig):Void;
	@:overload(function():ConfigModule { })
	function get<T>(prop:String):T;
	function process<T>(value:String):T;
	function getRaw<T>(prop:String):T;
	function set<T>(prop:String, value:T):T;
	function escape(propString:String):String;
	@:overload(function(prop:Array<String>, andProps:haxe.extern.Rest<Array<String>>):Void { })
	function requires(prop:String, andProps:haxe.extern.Rest<String>):Void;
};
