typedef InfoBubble = {
	function close():Void;
	function isOpen():Bool;
	function open(map:google.maps.Map, marker:google.maps.Marker):Void;
	function getPosition():google.maps.LatLng;
};
typedef InfoBubbleOptions = {
	@:optional
	var arrowPosition : Float;
	@:optional
	var arrowSize : Float;
	@:optional
	var arrowStyle : Float;
	@:optional
	var backgroundColor : String;
	@:optional
	var borderColor : String;
	@:optional
	var borderRadius : Float;
	@:optional
	var borderWidth : Float;
	@:optional
	var disableAnimation : Bool;
	@:optional
	var disableAutoPan : Bool;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var padding : Float;
	@:optional
	var shadowStyle : Float;
};
