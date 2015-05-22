typedef CMYK = {
	var c : Float;
	var m : Float;
	var y : Float;
	var k : Float;
};
typedef HSL = {
	var h : Float;
	var s : Float;
	var l : Float;
};
typedef HSV = {
	var h : Float;
	var s : Float;
	var v : Float;
};
typedef LAB = {
	var l : Float;
	var a : Float;
	var b : Float;
};
typedef RGB = {
	var r : Float;
	var g : Float;
	var b : Float;
};
typedef Color = {
	var set : Bool;
	function copy():Color;
	function distance(color:Color):Float;
	function equals(color:Color):Bool;
	function getAlpha():Float;
	function getChannels():{ var A : Float; var B : Float; var L : Float; var a : Float; var b : Float; var c : Float; var g : Float; var h : Float; var k : Float; var m : Float; var r : Float; var s : Float; var v : Float; var y : Float; };
	function getCMYK():CMYK;
	function getHSL():HSL;
	function getHSV():HSV;
	function getLAB():LAB;
	function getRGB():RGB;
	function getSpaces():{ var cmyk : CMYK; var hsl : HSL; var hsv : HSV; var lab : LAB; var rgb : RGB; };
	function limit(steps:Float):Void;
	function normalize():Color;
	function setAlpha(a:Float):Color;
	function setCMYK(c:Float, m:Float, y:Float, k:Float):Color;
	function setHSL(h:Float, s:Float, l:Float):Color;
	function setHSV(h:Float, s:Float, v:Float):Color;
	function setLAB(l:Float, a:Float, b:Float):Color;
	function setRGB(r:Float, g:Float, b:Float):Color;
	function setSpaces(new_spaces:Dynamic):Color;
	function toCSS():String;
	function toHEX():String;
};
typedef JQueryColorpickerInstance = {
	function close():Void;
	function destroy():Void;
	function open():Void;
	function setColor(color:Dynamic):Void;
};
typedef JQueryStatic = {
	var colorpicker : JQueryColorpickerStatic;
};
typedef JQuery = {
	@:overload(function(method:String):JQuery { })
	@:overload(function(method:String, param:Dynamic):JQuery { })
	@:overload(function(method:Close):JQuery { })
	@:overload(function(method:Destroy):JQuery { })
	@:overload(function(method:Open):JQuery { })
	@:overload(function(method:SetColor, color:Dynamic):JQuery { })
	function colorpicker(?options:JQueryColorpickerOptions):JQuery;
};
