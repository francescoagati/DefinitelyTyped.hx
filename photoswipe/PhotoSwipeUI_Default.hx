typedef Options = {
	>PhotoSwipe.Options,
	@:optional
	var barsSize : { var top : Float; var bottom : haxe.extern.EitherType<Float, String>; };
	@:optional
	var timeToIdle : Float;
	@:optional
	var timeToIdleOutside : Float;
	@:optional
	var loadingIndicatorDelay : Float;
	@:optional
	var addCaptionHTMLFn : Item -> HTMLElement -> Bool -> Bool;
	@:optional
	var closeEl : Bool;
	@:optional
	var captionEl : Bool;
	@:optional
	var fullscreenEl : Bool;
	@:optional
	var zoomEl : Bool;
	@:optional
	var shareEl : Bool;
	@:optional
	var counterEl : Bool;
	@:optional
	var arrowEl : Bool;
	@:optional
	var preloaderEl : Bool;
	@:optional
	var tapToClose : Bool;
	@:optional
	var tapToToggleControls : Bool;
	@:optional
	var clickToCloseNonZoomable : Bool;
	@:optional
	var closeElClasses : Array<String>;
	@:optional
	var indexIndicatorSep : String;
	@:optional
	var shareButtons : Array<ShareButtonData>;
	@:optional
	var getImageURLForShare : ShareButtonData -> String;
	@:optional
	var getPageURLForShare : ShareButtonData -> String;
	@:optional
	var getTextForShare : ShareButtonData -> String;
	@:optional
	var parseShareButtonOut : ShareButtonData -> String -> String;
};
typedef ShareButtonData = {
	var id : String;
	var label : String;
	var url : String;
	@:optional
	var download : Bool;
};
typedef Item = {
	>PhotoSwipe.Item,
	@:optional
	var title : String;
};
