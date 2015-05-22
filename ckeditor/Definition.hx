typedef Button = {
	>UiElement,
	@:optional
	var disabled : Bool;
	@:optional
	var label : String;
};
typedef UiElement = {
	@:optional
	var align : String;
	@:optional
	var className : String;
	@:optional
	var commit : haxe.Constraints.Function;
	@:optional
	var id : String;
	@:optional
	var onHide : haxe.Constraints.Function;
	@:optional
	var onLoad : haxe.Constraints.Function;
	@:optional
	var requiredcontent : Dynamic;
	@:optional
	var setup : haxe.Constraints.Function;
	@:optional
	var style : String;
	@:optional
	var title : String;
	@:optional
	var type : String;
};
