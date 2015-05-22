typedef HeadroomOptions = {
	@:optional
	var offset : Float;
	@:optional
	var tolerance : Dynamic;
	@:optional
	var classes : { @:optional
	var initial : String; @:optional
	var pinned : String; @:optional
	var unpinned : String; @:optional
	var top : String; @:optional
	var notTop : String; };
	@:optional
	var scroller : Element;
	@:optional
	var onPin : Void -> Void;
	@:optional
	var onUnPin : Void -> Void;
	@:optional
	var onTop : Void -> Void;
	@:optional
	var onNotTop : Void -> Void;
};
extern class Headroom {
	@:overload(function(element:Element, ?options:HeadroomOptions):Void { })
	function new(element:Node, ?options:HeadroomOptions):Void;
	var init : Void -> Void;
}
