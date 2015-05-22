typedef JQueryColorpickerOptions = {
	@:optional
	var alpha : Bool;
	@:optional
	var altAlpha : Bool;
	@:optional
	var altField : String;
	@:optional
	var altOnChange : Bool;
	@:optional
	var altProperties : String;
	@:optional
	var autoOpen : Bool;
	@:optional
	var buttonClass : String;
	@:optional
	var buttonColorize : Bool;
	@:optional
	var buttonImage : String;
	@:optional
	var buttonImageOnly : Bool;
	@:optional
	var buttonText : String;
	@:optional
	var closeOnEscape : Bool;
	@:optional
	var closeOnOutside : Bool;
	@:optional
	var color : String;
	@:optional
	var colorFormat : String;
	@:optional
	var dragggable : Bool;
	@:optional
	var duration : String;
	@:optional
	var hsv : Bool;
	@:optional
	var inline : Bool;
	@:optional
	var inlineFrame : Bool;
	@:optional
	var layout : { };
	@:optional
	var limit : String;
	@:optional
	var modal : Bool;
	@:optional
	var mode : String;
	@:optional
	var okOnEnter : Bool;
	@:optional
	var part : Dynamic;
	@:optional
	var parts : Dynamic;
	@:optional
	var regional : String;
	@:optional
	var revert : Bool;
	@:optional
	var rgb : Bool;
	@:optional
	var showAnim : String;
	@:optional
	var showCancelButton : Bool;
	@:optional
	var showCloseButton : Bool;
	@:optional
	var showNoneButton : Bool;
	@:optional
	var showOn : String;
	@:optional
	var showOptions : Dynamic;
	@:optional
	var swatches : Dynamic;
	@:optional
	var swatchesWidth : Float;
	@:optional
	var title : String;
};
typedef JQueryColorpickerStatic = {
	var limits : { };
	var parsers : { };
	var parts : { };
	var partslists : { };
	var regional : { };
	var swatches : { };
	var writers : { };
	var Color : { function new(?r:Float, ?g:Float, ?b:Float, ?a:Float):JQueryColorpickerStatic.Color; };
};
