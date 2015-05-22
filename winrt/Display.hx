typedef DisplayPropertiesEventHandler = { };
@:enum abstract DisplayOrientations(Int) {
	var none = 0;
	var landscape = 1;
	var portrait = 2;
	var landscapeFlipped = 3;
	var portraitFlipped = 4;
}
@:enum abstract ResolutionScale(Int) {
	var invalid = 0;
	var scale100Percent = 1;
	var scale140Percent = 2;
	var scale180Percent = 3;
}
typedef IDisplayPropertiesStatics = {
	var autoRotationPreferences : Windows.Graphics.Display.DisplayOrientations;
	var currentOrientation : Windows.Graphics.Display.DisplayOrientations;
	var logicalDpi : Float;
	var nativeOrientation : Windows.Graphics.Display.DisplayOrientations;
	var resolutionScale : Windows.Graphics.Display.ResolutionScale;
	var stereoEnabled : Bool;
	var onorientationchanged : Dynamic;
	var onlogicaldpichanged : Dynamic;
	var onstereoenabledchanged : Dynamic;
	function getColorProfileAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IRandomAccessStream>;
	var oncolorprofilechanged : Dynamic;
	var ondisplaycontentsinvalidated : Dynamic;
};
extern class DisplayProperties {
	static var autoRotationPreferences : Windows.Graphics.Display.DisplayOrientations;
	static var currentOrientation : Windows.Graphics.Display.DisplayOrientations;
	static var logicalDpi : Float;
	static var nativeOrientation : Windows.Graphics.Display.DisplayOrientations;
	static var resolutionScale : Windows.Graphics.Display.ResolutionScale;
	static var stereoEnabled : Bool;
	static var onorientationchanged : Dynamic;
	static var onlogicaldpichanged : Dynamic;
	static var onstereoenabledchanged : Dynamic;
	static function getColorProfileAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IRandomAccessStream>;
	static var oncolorprofilechanged : Dynamic;
	static var ondisplaycontentsinvalidated : Dynamic;
}
typedef IDisplayRequest = {
	function requestActive():Void;
	function requestRelease():Void;
};
extern class DisplayRequest {
	function requestActive():Void;
	function requestRelease():Void;
}
