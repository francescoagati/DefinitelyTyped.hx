typedef ColorboxResizeSettings = {
	@:optional
	var height : Float;
	@:optional
	var innerHeight : Float;
	@:optional
	var width : Float;
	@:optional
	var innerWidth : Float;
};
typedef ColorboxSettings = {
	@:optional
	var transition : String;
	@:optional
	var speed : Float;
	@:optional
	var href : Dynamic;
	@:optional
	var title : Dynamic;
	@:optional
	var rel : Dynamic;
	@:optional
	var scalePhotos : Bool;
	@:optional
	var scrolling : Bool;
	@:optional
	var opacity : Float;
	@:optional
	var open : Bool;
	@:optional
	var returnFocus : Bool;
	@:optional
	var fastIframe : Bool;
	@:optional
	var preloading : Bool;
	@:optional
	var overlayClose : Bool;
	@:optional
	var escKey : Bool;
	@:optional
	var arrowKey : Bool;
	@:optional
	var loop : Bool;
	@:optional
	var data : Dynamic;
	@:optional
	var className : Dynamic;
	@:optional
	var fadeOut : Float;
	@:optional
	var current : String;
	@:optional
	var previous : String;
	@:optional
	var next : String;
	@:optional
	var close : String;
	@:optional
	var xhrError : String;
	@:optional
	var imgError : String;
	@:optional
	var iframe : Bool;
	@:optional
	var inline : Bool;
	@:optional
	var html : Dynamic;
	@:optional
	var photo : Bool;
	@:optional
	var ajax : Dynamic;
	@:optional
	var width : Dynamic;
	@:optional
	var height : Dynamic;
	@:optional
	var innerWidth : Dynamic;
	@:optional
	var innerHeight : Dynamic;
	@:optional
	var initialWidth : Float;
	@:optional
	var initialHeight : Float;
	@:optional
	var maxWidth : Dynamic;
	@:optional
	var maxHeight : Dynamic;
	@:optional
	var slideshow : Bool;
	@:optional
	var slideshowSpeed : Float;
	@:optional
	var slideshowAuto : Bool;
	@:optional
	var slideshowStart : String;
	@:optional
	var slideshowStop : String;
	@:optional
	var fixed : Bool;
	@:optional
	var top : Dynamic;
	@:optional
	var bottom : Dynamic;
	@:optional
	var left : Dynamic;
	@:optional
	var right : Dynamic;
	@:optional
	var reposition : Bool;
	@:optional
	var retinaImage : Bool;
	@:optional
	var retinaUrl : Bool;
	@:optional
	var retinaSuffix : String;
	@:optional
	var onOpen : Dynamic;
	@:optional
	var onLoad : Dynamic;
	@:optional
	var onComplete : Dynamic;
	@:optional
	var onCleanup : Dynamic;
	@:optional
	var onClosed : Dynamic;
};
typedef ColorboxStatic = {
	function next():Void;
	function prev():Void;
	function close():Void;
	function element():JQuery;
	@:overload(function(settings:ColorboxResizeSettings):Void { })
	function resize():Void;
	function remove():Void;
	var settings : ColorboxSettings;
};
typedef Colorbox = { };
typedef JQueryStatic = {
	var colorbox : ColorboxStatic;
};
typedef JQuery = {
	var colorbox : Colorbox;
};
