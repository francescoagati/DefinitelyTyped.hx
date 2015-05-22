typedef Color = {
	function brighter(?k:Float):Color;
	function darker(?k:Float):Color;
	function toString():String;
};
typedef RGBColor = {
	>Color,
	var r : Float;
	var g : Float;
	var b : Float;
	function hsl():HSLColor;
};
typedef HSLColor = {
	>Color,
	var h : Float;
	var s : Float;
	var l : Float;
	function rgb():RGBColor;
};
typedef LABColor = {
	>Color,
	var l : Float;
	var a : Float;
	var b : Float;
	function rgb():RGBColor;
};
typedef HCLColor = {
	>Color,
	var h : Float;
	var c : Float;
	var l : Float;
	function rgb():RGBColor;
};
