typedef FontOptions = {
	@:optional
	var color : String;
	@:optional
	var family : String;
	@:optional
	var opacity : Float;
	@:optional
	var size : Float;
	@:optional
	var weight : Float;
};
typedef TickIntervalObject = {
	@:optional
	var years : Float;
	@:optional
	var quarters : Float;
	@:optional
	var months : Float;
	@:optional
	var days : Float;
	@:optional
	var hours : Float;
	@:optional
	var minutes : Float;
	@:optional
	var seconds : Float;
	@:optional
	var milliseconds : Float;
};
typedef LoadingIndicatorOptions = {
	@:optional
	var backgroundColor : String;
	@:optional
	var text : String;
	@:optional
	var font : FontOptions;
};
typedef CustomizeTooltipResult = {
	@:optional
	var color : String;
	@:optional
	var text : String;
};
typedef BaseTooltipOptions = {
	@:optional
	var enabled : Bool;
	@:optional
	var color : String;
	@:optional
	var border : { @:optional
	var dashStyle : String; @:optional
	var color : String; @:optional
	var opacity : Float; @:optional
	var visible : Bool; @:optional
	var width : Float; };
	@:optional
	var font : FontOptions;
	@:optional
	var arrowLength : Float;
	@:optional
	var paddingLeftRight : Float;
	@:optional
	var paddingTopBottom : Float;
	@:optional
	var opacity : Float;
	@:optional
	var chadow : { @:optional
	var color : String; @:optional
	var opacity : Float; @:optional
	var offsetX : Float; @:optional
	var offsetY : Float; @:optional
	var blur : Float; };
};
