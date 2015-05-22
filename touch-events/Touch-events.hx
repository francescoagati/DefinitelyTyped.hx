typedef TouchEvent = {
	>UIEvent,
	var touches : TouchList;
	var targetTouches : TouchList;
	var changedTouches : TouchList;
	var altKey : Bool;
	var metaKey : Bool;
	var ctrlKey : Bool;
	var shiftKey : Bool;
};
typedef TouchList = {
	var length : Float;
	var item : Float -> Touch;
};
typedef Touch = {
	var identifier : Float;
	var target : EventTarget;
	var screenX : Float;
	var screenY : Float;
	var clientX : Float;
	var clientY : Float;
	var pageX : Float;
	var pageY : Float;
};
