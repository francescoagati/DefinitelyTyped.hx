typedef ILaddaButton = {
	function start():ILaddaButton;
	function startAfter(delay:Float):ILaddaButton;
	function stop():ILaddaButton;
	function toggle():ILaddaButton;
	function setProgress(progress:Float):ILaddaButton;
	function enable():ILaddaButton;
	function disable():ILaddaButton;
	function isLoading():Bool;
	function remove():Void;
};
typedef ILaddaOptions = {
	@:optional
	var timeout : Float;
	@:optional
	var callback : ILaddaButton -> Void;
};
typedef ILadda = {
	@:overload(function(cssSelector:String, ?options:ILaddaOptions):Void { })
	function bind(target:HTMLElement, ?options:ILaddaOptions):Void;
	function create(button:Element):ILaddaButton;
	function stopAll():Void;
};
extern class LaddaTopLevel {
	static var Ladda : ILadda;
}
typedef JQuery = {
	@:overload(function(action:String):JQuery { })
	@:overload(function(action:String, options:Dynamic):JQuery { })
	function ladda():JQuery;
};
typedef JQueryStatic = {
	function ladda(action:String):JQuery;
};
extern class LaddaTopLevel {
	static var Ladda : ILadda;
}
