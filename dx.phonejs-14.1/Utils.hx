extern class UtilsTopLevel {
	static function normalizeSortingInfo(info:String):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:Array<String>):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:Getter):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:Array<Getter>):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:{ var field : String; @:optional
	var dir : String; }):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:Array<{ var field : String; @:optional
	var dir : String; }>):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:{ var field : String; @:optional
	var desc : Bool; }):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:Array<{ var field : String; @:optional
	var desc : Bool; }>):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:{ var selector : String; @:optional
	var dir : String; }):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:Array<{ var selector : String; @:optional
	var dir : String; }>):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:{ var selector : String; @:optional
	var desc : Bool; }):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:Array<{ var selector : String; @:optional
	var desc : Bool; }>):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeBinaryCriterion(criteria:Array<Dynamic>):Array<Dynamic>;
	static function keysEqual(key1:Dynamic, key2:Dynamic):Bool;
	static function keysEqual(keyExpr:Dynamic, key1:Dynamic, key2:Dynamic):Bool;
	static function toComparable(value:Date, ?caseSensitive:Bool):Float;
	static function toComparable(value:Guid, ?caseSensitive:Bool):String;
	static function toComparable(value:String, ?caseSensitive:Bool):String;
	static function compileGetter():Getter;
	static function compileGetter(expr:Array<Dynamic>):Getter;
	static function compileGetter(expr:String):Getter;
	static function compileGetter(expr:This):Getter;
	static function compileGetter(expr:Getter):Getter;
	static function compileSetter(expr:String):Setter;
	static function mergeCommands(destination:Dynamic, source:Dynamic):Array<DxCommand>;
	static function createActionExecutors(app:Application):{ };
}
extern class UtilsTopLevel {
	static function normalizeSortingInfo(info:String):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:Array<String>):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:Getter):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:Array<Getter>):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:{ var field : String; @:optional
	var dir : String; }):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:Array<{ var field : String; @:optional
	var dir : String; }>):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:{ var field : String; @:optional
	var desc : Bool; }):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:Array<{ var field : String; @:optional
	var desc : Bool; }>):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:{ var selector : String; @:optional
	var dir : String; }):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:Array<{ var selector : String; @:optional
	var dir : String; }>):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:{ var selector : String; @:optional
	var desc : Bool; }):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:Array<{ var selector : String; @:optional
	var desc : Bool; }>):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeBinaryCriterion(criteria:Array<Dynamic>):Array<Dynamic>;
	static function keysEqual(key1:Dynamic, key2:Dynamic):Bool;
	static function keysEqual(keyExpr:Dynamic, key1:Dynamic, key2:Dynamic):Bool;
	static function toComparable(value:Date, ?caseSensitive:Bool):Float;
	static function toComparable(value:Guid, ?caseSensitive:Bool):String;
	static function toComparable(value:String, ?caseSensitive:Bool):String;
	static function compileGetter():Getter;
	static function compileGetter(expr:Array<Dynamic>):Getter;
	static function compileGetter(expr:String):Getter;
	static function compileGetter(expr:This):Getter;
	static function compileGetter(expr:Getter):Getter;
	static function compileSetter(expr:String):Setter;
	static function mergeCommands(destination:Dynamic, source:Dynamic):Array<DxCommand>;
	static function createActionExecutors(app:Application):{ };
}
typedef ApplicationOptions = {
	@:optional
	var router : MvcRouter;
	@:optional
	var ns : Dynamic;
	@:optional
	var namespace : Dynamic;
	@:optional
	var viewCache : IViewCache;
	@:optional
	var viewCacheSize : Float;
	@:optional
	var disableViewCache : Bool;
	@:optional
	var useViewTitleAsBackText : Bool;
	@:optional
	var stateManager : StateManager;
	@:optional
	var navigationManager : StackBasedNavigationManager;
	@:optional
	var navigation : Array<DxCommandOptions>;
	@:optional
	var commandMapping : CommandMap;
};
extern class Application {
	var router : MvcRouter;
	var namespace : Dynamic;
	var components : Array<Dynamic>;
	var viewCache : IViewCache;
	var stateManager : StateManager;
	var commandMapping : CommandMap;
	var navigation : Array<DxCommand>;
	var navigationManager : StackBasedNavigationManager;
	var beforeViewSetup : JQueryCallback;
	var afterViewSetup : JQueryCallback;
	var viewShowing : JQueryCallback;
	var viewShown : JQueryCallback;
	var viewHidden : JQueryCallback;
	var viewDisposing : JQueryCallback;
	var viewDisposed : JQueryCallback;
	var navigating : JQueryCallback;
	var navigatingBack : JQueryCallback;
	function new(?options:ApplicationOptions):Void;
	function init():Dynamic;
	function navigate(?uri:Dynamic, ?options:{ @:optional
	var root : Bool; @:optional
	var target : String; @:optional
	var direction : String; }):Void;
	function back():Void;
	function canBack():Bool;
	function saveState():Void;
	function clearState():Void;
	function restoreState():Void;
}
