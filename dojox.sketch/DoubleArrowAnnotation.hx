typedef Apply = { };
typedef Destroy = { };
typedef Draw = { };
typedef GetBBox = { };
typedef GetType = { };
typedef Initialize = { };
typedef Serialize = { };
typedef Type = { };
typedef Zoom = { };
typedef Control = {
	var x : Float;
	var y : Float;
};
typedef End = {
	var x : Float;
	var y : Float;
};
typedef Transform = {
	var dx : Float;
	var dy : Float;
};
typedef Start = {
	var x : Float;
	var y : Float;
};
typedef TextPosition = {
	var x : Float;
	var y : Float;
};
extern class DoubleArrowAnnotationTopLevel {
	static var anchors : Dynamic;
	static var control : Dynamic;
	static var end : Dynamic;
	static var endArrow : Dynamic;
	static var endArrowGroup : Dynamic;
	static var endRotation : Float;
	static var labelShape : Dynamic;
	static var pathShape : Dynamic;
	static var start : Dynamic;
	static var startArrow : Dynamic;
	static var startArrowGroup : Dynamic;
	static var startRotation : Float;
	static var textAlign : String;
	static var textOffset : Float;
	static var textPosition : Dynamic;
	static var textYOffset : Float;
	static var transform : Dynamic;
}
typedef Figure = { };
