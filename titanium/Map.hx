typedef View = {
	>Ti.UI.View,
	var animated : Bool;
	var annotations : Array<Ti.Map.Annotation>;
	var hideAnnotationWhenTouchMap : Bool;
	var latitudeDelta : Float;
	var longitudeDelta : Float;
	var mapType : Float;
	var region : MapRegionType;
	var regionFit : Bool;
	var userLocation : Bool;
	@:overload(function(annotation:Ti.Map.Annotation):Void { })
	function addAnnotation(annotation:Dictionary<Ti.Map.Annotation>):Void;
	@:overload(function(annotations:Array<Dictionary<Ti.Map.Annotation>>):Void { })
	function addAnnotations(annotations:Array<Ti.Map.Annotation>):Void;
	function addRoute(route:MapRouteType):Void;
	@:overload(function(annotation:Ti.Map.Annotation):Void { })
	function deselectAnnotation(annotation:String):Void;
	function getAnimate():Bool;
	function getAnimated():Bool;
	function getAnnotations():Array<Ti.Map.Annotation>;
	function getHideAnnotationWhenTouchMap():Bool;
	function getLatitudeDelta():Float;
	function getLongitudeDelta():Float;
	function getMapType():Float;
	function getRegion():MapRegionType;
	function getRegionFit():Bool;
	function getUserLocation():Bool;
	function removeAllAnnotations():Void;
	@:overload(function(annotation:Ti.Map.Annotation):Void { })
	function removeAnnotation(annotation:String):Void;
	@:overload(function(annotations:Array<Ti.Map.Annotation>):Void { })
	function removeAnnotations(annotations:Array<String>):Void;
	function removeRoute(route:MapRouteType):Void;
	@:overload(function(annotation:Ti.Map.Annotation):Void { })
	function selectAnnotation(annotation:String):Void;
	function setAnimate(animate:Bool):Void;
	function setAnimated(animated:Bool):Void;
	function setAnnotations(annotations:Array<Ti.Map.Annotation>):Void;
	function setHideAnnotationWhenTouchMap(hideAnnotationWhenTouchMap:Bool):Void;
	function setLocation(location:MapLocationType):Void;
	function setMapType(mapType:Float):Void;
	function setRegion(region:MapRegionType):Void;
	function setRegionFit(regionFit:Bool):Void;
	function setUserLocation(userLocation:Bool):Void;
	function zoom(level:Float):Void;
};
typedef Annotation = {
	>Ti.Proxy,
	var animate : Bool;
	var canShowCallout : Bool;
	var centerOffset : Point;
	var customView : Ti.UI.View;
	var draggable : Bool;
	var image : Dynamic;
	var latitude : Float;
	var leftButton : Dynamic;
	var leftView : Ti.UI.View;
	var longitude : Float;
	var pinImage : String;
	var pincolor : Float;
	var rightButton : Dynamic;
	var rightView : Ti.UI.View;
	var subtitle : String;
	var subtitleid : String;
	var title : String;
	var titleid : String;
	function getAnimate():Bool;
	function getCanShowCallout():Bool;
	function getCenterOffset():Point;
	function getCustomView():Ti.UI.View;
	function getDraggable():Bool;
	function getImage():Dynamic;
	function getLatitude():Float;
	function getLeftButton():Dynamic;
	function getLeftView():Ti.UI.View;
	function getLongitude():Float;
	function getPinImage():String;
	function getPincolor():Float;
	function getRightButton():Dynamic;
	function getRightView():Ti.UI.View;
	function getSubtitle():String;
	function getSubtitleid():String;
	function getTitle():String;
	function getTitleid():String;
	function setAnimate(animate:Bool):Void;
	function setCanShowCallout(canShowCallout:Bool):Void;
	function setCenterOffset(centerOffset:Point):Void;
	function setCustomView(customView:Ti.UI.View):Void;
	function setDraggable(draggable:Bool):Void;
	@:overload(function(image:Ti.Blob):Void { })
	function setImage(image:String):Void;
	function setLatitude(latitude:Float):Void;
	@:overload(function(leftButton:String):Void { })
	function setLeftButton(leftButton:Float):Void;
	function setLeftView(leftView:Ti.UI.View):Void;
	function setLongitude(longitude:Float):Void;
	function setPinImage(pinImage:String):Void;
	function setPincolor(pincolor:Float):Void;
	@:overload(function(rightButton:String):Void { })
	function setRightButton(rightButton:Float):Void;
	function setRightView(rightView:Ti.UI.View):Void;
	function setSubtitle(subtitle:String):Void;
	function setSubtitleid(subtitleid:String):Void;
	function setTitle(title:String):Void;
	function setTitleid(titleid:String):Void;
};
extern class MapTopLevel {
	static var ANNOTATION_DRAG_STATE_CANCEL : Float;
	static var ANNOTATION_DRAG_STATE_DRAG : Float;
	static var ANNOTATION_DRAG_STATE_END : Float;
	static var ANNOTATION_DRAG_STATE_NONE : Float;
	static var ANNOTATION_DRAG_STATE_START : Float;
	static var ANNOTATION_GREEN : Float;
	static var ANNOTATION_PURPLE : Float;
	static var ANNOTATION_RED : Float;
	static var HYBRID_TYPE : Float;
	static var SATELLITE_TYPE : Float;
	static var STANDARD_TYPE : Float;
	static var TERRAIN_TYPE : Float;
	static var apiName : String;
	static var bubbleParent : Bool;
	static function addEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function applyProperties(props:Dictionary<Dynamic>):Void;
	static function createAnnotation(?parameters:Dictionary<Ti.Map.Annotation>):Ti.Map.Annotation;
	static function createView(?parameters:Dictionary<Ti.Map.View>):Ti.Map.View;
	static function fireEvent(name:String, event:Dictionary<Dynamic>):Void;
	static function getApiName():String;
	static function getBubbleParent():Bool;
	static function removeEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function setBubbleParent(bubbleParent:Bool):Void;
}
