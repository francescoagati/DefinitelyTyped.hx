extern class Vue {
	function new(?options:{ }):Void;
	var data : { };
	var methods : { };
	var computed : { };
	var paramAttributes : Array<{ }>;
	var el : { };
	var template : String;
	var replace : Bool;
	var created : VueCallback;
	var beforeCompile : VueCallback;
	var compiled : VueCallback;
	var ready : VueCallback;
	var attached : VueCallback;
	var detached : VueCallback;
	var beforeDestroy : VueCallback;
	var destroyed : VueCallback;
	var directives : { };
	var filters : { };
	var components : { };
	var partials : { };
	var transitions : { };
	var inherit : Bool;
	var events : { };
	var watch : { };
	var mixins : Array<{ }>;
	var name : String;
	var $el : HTMLElement;
	var $data : { };
	var $options : { };
	var $parent : Vue;
	var $root : Vue;
	var $ : { };
	var $$ : { };
	function $watch(expression:String, callback:ValueCallback, ?deep:Bool, ?immediate:Bool):Void;
	function $get(expression:String):Dynamic;
	function $set(keypath:String, value:Dynamic):Void;
	function $add(keypath:String, value:Dynamic):Void;
	function $delete(keypath:String):Void;
	function $eval(expression:String):Dynamic;
	function $interpolate(templateString:String):String;
	function $log(?keypath:String):Void;
	function $dispatch(event:String, args:haxe.extern.Rest<Dynamic>):Vue;
	function $broadcast(event:String, args:haxe.extern.Rest<Dynamic>):Vue;
	function $emit(event:String, args:haxe.extern.Rest<Dynamic>):Vue;
	function $on(event:String, callback:haxe.Constraints.Function):Vue;
	function $once(event:String, callback:haxe.Constraints.Function):Vue;
	function $off(?event:String, ?callback:haxe.Constraints.Function):Vue;
	function $appendTo(element:Dynamic, ?callback:haxe.Constraints.Function):Vue;
	function $prependTo(element:Dynamic, ?callback:haxe.Constraints.Function):Vue;
	function $before(element:Dynamic, ?callback:haxe.Constraints.Function):Vue;
	function $after(element:Dynamic, ?callback:haxe.Constraints.Function):Vue;
	function $remove(?callback:haxe.Constraints.Function):Vue;
	function $mount(?element:Dynamic):Vue;
	function $destroy(?remove:Bool):Void;
	function $compile(element:HTMLElement):VueCallback;
	function $addChild(?options:{ }, ?constructor:haxe.Constraints.Function):Vue;
	static var config : VueConfig;
	static function extend(options:{ }):Vue;
	@:overload(function(id:String, ?definition:VueCallback):Void { })
	static function directive(id:String, ?definition:{ }):Void;
	static function filter(id:String, ?definition:FilterCallback):Void;
	@:overload(function(id:String, ?definition:{ }):Void { })
	static function component(id:String, definition:Vue):Void;
	static function transition(id:String, ?definition:{ }):Void;
	@:overload(function(id:String, ?definition:HTMLElement):Void { })
	static function partial(id:String, ?definition:String):Void;
	static function nextTick(callback:VueCallback):Void;
	static function require(module:String):Void;
	@:overload(function(plugin:VueCallback, args:haxe.extern.Rest<Dynamic>):Vue { })
	static function use(plugin:{ }, args:haxe.extern.Rest<Dynamic>):Vue;
	function _init(options:{ }):Void;
	function _cleanup():Void;
}
extern class VueConfig {
	var prefix : String;
	var debug : Bool;
	var silent : Bool;
	var proto : Bool;
	var interpolate : Bool;
	var async : Bool;
	var delimiters : Array<String>;
}
typedef ValueCallback = { };
typedef VueCallback = { };
typedef FilterCallback = { };
