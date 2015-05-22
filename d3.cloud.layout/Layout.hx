typedef IRotate = { };
typedef CloudLayout = {
	function values(?accessor:Dynamic -> Dynamic):CloudLayout;
	function offset(offset:String):CloudLayout;
	var size : { };
	var words : Array<Dynamic> -> CloudLayout;
	var rotate : IRotate;
	var padding : Float -> CloudLayout;
	var font : String -> CloudLayout;
	function fontSize(fctn:Dynamic -> Float):CloudLayout;
	var on : String -> Array<Dynamic> -> Void -> CloudLayout;
	var start : Void -> CloudLayout;
};
typedef Layout = {
	function cloud():CloudLayout;
};
