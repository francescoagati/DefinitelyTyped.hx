typedef TooltipOptions = {
	>common.BaseTooltipOptions,
	@:optional
	var customizeText : Proxy -> String;
	@:optional
	var customizeTooltip : Proxy -> common.CustomizeTooltipResult;
	@:optional
	var borderColor : String;
};
typedef VectorMapOptions = {
	@:optional
	var size : { @:optional
	var width : Float; @:optional
	var height : Float; };
	@:optional
	var theme : String;
	@:optional
	var background : { @:optional
	var borderColor : String; @:optional
	var color : String; };
	@:optional
	var loadingIndicator : common.LoadingIndicatorOptions;
	@:optional
	var mapData : Dynamic;
	@:optional
	var areaSettings : { @:optional
	var borderColor : String; @:optional
	var color : String; @:optional
	var hoveredBorderColor : String; @:optional
	var hoveredColor : String; @:optional
	var selectedBorderColor : String; @:optional
	var selectedColor : String; @:optional
	var hoverEnabled : Bool; @:optional
	var selectionMode : String; @:optional
	var palette : Dynamic; @:optional
	var paletteSize : Float; @:optional
	var customize : Dynamic -> AreaOptions; @:optional
	var click : AreaProxy -> JQueryMouseEventObject -> Void; @:optional
	var selectionChanged : AreaProxy -> Void; };
	@:optional
	var markers : Dynamic;
	@:optional
	var markerSettings : { @:optional
	var size : Float; @:optional
	var minSize : Float; @:optional
	var maxSize : Float; @:optional
	var borderColor : String; @:optional
	var color : String; @:optional
	var hoveredBorderColor : String; @:optional
	var hoveredColor : String; @:optional
	var selectedBorderColor : String; @:optional
	var selectedColor : String; @:optional
	var font : common.FontOptions; @:optional
	var hoverEnabled : Bool; @:optional
	var selectionMode : String; @:optional
	var customize : Dynamic -> MarkerOptions; @:optional
	var click : MarkerProxy -> JQueryMouseEventObject -> Void; @:optional
	var selectionChanged : MarkerProxy -> Void; };
	@:optional
	var controlBar : { @:optional
	var enabled : Bool; @:optional
	var borderColor : String; @:optional
	var color : String; };
	@:optional
	var tooltip : TooltipOptions;
	@:optional
	var bounds : Array<Float>;
	@:optional
	var center : Array<Float>;
	@:optional
	var zoomFactor : Float;
	@:optional
	var click : JQueryMouseEventObject -> Void;
	@:optional
	var centerChanged : Array<Float> -> Void;
	@:optional
	var zoomFactorChanged : Float -> Void;
	@:optional
	var drawn : viz.Map -> Void;
	@:optional
	var pathModified : Bool;
};
typedef AreaOptions = {
	@:optional
	var borderColor : String;
	@:optional
	var color : String;
	@:optional
	var hoveredBorderColor : String;
	@:optional
	var hoveredColor : String;
	@:optional
	var selectedBorderColor : String;
	@:optional
	var selectedColor : String;
	@:optional
	var paletteIndex : Float;
	@:optional
	var isSelected : Bool;
};
typedef MarkerOptions = {
	@:optional
	var borderColor : String;
	@:optional
	var color : String;
	@:optional
	var hoveredBorderColor : String;
	@:optional
	var hoveredColor : String;
	@:optional
	var selectedBorderColor : String;
	@:optional
	var selectedColor : String;
	@:optional
	var isSelected : Bool;
};
typedef Proxy = {
	var type : String;
	function attribute(name:String):Dynamic;
	@:overload(function():Bool { })
	function selected(state:Bool):Void;
};
typedef AreaProxy = {
	>Proxy,
};
typedef MarkerProxy = {
	>Proxy,
	function coordinates():Array<Float>;
};
