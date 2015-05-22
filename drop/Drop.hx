typedef DropStatic = {
	function new(options:IDropOptions):Drop;
	function createContext(options:IDropContextOptions):DropStatic;
};
typedef IDropContextOptions = {
	@:optional
	var classPrefix : String;
	@:optional
	var defaults : IDropOptions;
};
typedef IDropOptions = {
	@:optional
	var target : Element;
	@:optional
	var content : haxe.extern.EitherType<Element, haxe.extern.EitherType<String, haxe.extern.EitherType<?Drop -> String, ?Drop -> Element>>>;
	@:optional
	var position : String;
	@:optional
	var openOn : String;
	@:optional
	var constrainToWindow : Bool;
	@:optional
	var constrainToScrollParent : Bool;
	@:optional
	var remove : Bool;
	@:optional
	var tetherOptions : tether.ITetherOptions;
};
typedef Drop = {
	var content : HTMLElement;
	var element : HTMLElement;
	var tether : tether.Tether;
	function open():Void;
	function close():Void;
	function remove():Void;
	function toggle():Void;
	function position():Void;
	function destroy():Void;
	function on(event:String, handler:haxe.Constraints.Function, ?context:Dynamic):Void;
	function once(event:String, handler:haxe.Constraints.Function, ?context:Dynamic):Void;
	function off(event:String, ?handler:haxe.Constraints.Function):Void;
};
extern class DropTopLevel {
	static var Drop : drop.DropStatic;
}
