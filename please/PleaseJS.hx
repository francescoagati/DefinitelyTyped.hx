typedef Please = {
	@:overload(function(?options:MakeColorOption):Array<RGB> { })
	@:overload(function(?options:MakeColorOption):Array<HSV> { })
	function make_color(?options:MakeColorOption):Array<String>;
	@:overload(function(base_color:HSV, ?options:MakeSchemeOption):Array<RGB> { })
	@:overload(function(base_color:HSV, ?options:MakeSchemeOption):Array<HSV> { })
	function make_scheme(base_color:HSV, ?options:MakeSchemeOption):Array<String>;
	function NAME_to_HEX(name:String):String;
	function NAME_to_RGB(name:String):RGB;
	function NAME_to_HSV(name:String):HSV;
	function HEX_to_RGB(hex:String):RGB;
	function RGB_to_HEX(rgb:RGB):String;
	function HSV_to_RGB(hsv:HSV):RGB;
	function RGB_to_HSV(rgb:RGB):HSV;
	function HSV_to_HEX(hsv:HSV):String;
	function HEX_to_HSV(hex:String):HSV;
};
typedef MakeColorOption = {
	@:optional
	var hue : Float;
	@:optional
	var saturation : Float;
	@:optional
	var value : Float;
	@:optional
	var base_color : String;
	@:optional
	var greyscale : Bool;
	@:optional
	var grayscale : Bool;
	@:optional
	var golden : Bool;
	@:optional
	var full_random : Bool;
	@:optional
	var colors_returned : Float;
	@:optional
	var format : String;
};
typedef MakeSchemeOption = {
	var scheme_type : String;
	var format : String;
};
typedef RGB = {
	var r : Float;
	var g : Float;
	var b : Float;
};
typedef HSV = {
	var h : Float;
	var s : Float;
	var v : Float;
};
