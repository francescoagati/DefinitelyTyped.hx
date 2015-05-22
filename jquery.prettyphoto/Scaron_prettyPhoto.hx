typedef PrettyPhotoSettings = {
	@:optional
	var hook : String;
	@:optional
	var animation_speed : String;
	@:optional
	var ajaxcallback : Void -> Void;
	@:optional
	var slideshow : Dynamic;
	@:optional
	var autoplay_slideshow : Bool;
	@:optional
	var opacity : Float;
	@:optional
	var show_title : Bool;
	@:optional
	var allow_resize : Bool;
	@:optional
	var allow_expand : Bool;
	@:optional
	var default_width : Float;
	@:optional
	var default_height : Float;
	@:optional
	var counter_separator_label : String;
	@:optional
	var theme : String;
	@:optional
	var horizontal_padding : Float;
	@:optional
	var hideflash : Bool;
	@:optional
	var wmode : String;
	@:optional
	var autoplay : Bool;
	@:optional
	var modal : Bool;
	@:optional
	var deeplinking : Bool;
	@:optional
	var overlay_gallery : Bool;
	@:optional
	var overlay_gallery_max : Float;
	@:optional
	var keyboard_shortcuts : Bool;
	@:optional
	var changepicturecallback : Void -> Void;
	@:optional
	var callback : Void -> Void;
	@:optional
	var ie6_fallback : Bool;
	@:optional
	var markup : String;
	@:optional
	var gallery_markup : String;
	@:optional
	var image_markup : String;
	@:optional
	var flash_markup : String;
	@:optional
	var quicktime_markup : String;
	@:optional
	var iframe_markup : String;
	@:optional
	var inline_markup : String;
	@:optional
	var custom_markup : String;
	@:optional
	var social_tools : Dynamic;
};
typedef ModuleJQuery = { };
typedef ModuleJQueryStatic = {
	var version : String;
	@:overload(function(image:String, title:String, description:String):Bool { })
	@:overload(function(images:Array<String>, titles:Array<String>, descriptions:Array<String>):Bool { })
	function open():Bool;
	function changePage(direction:String):Void;
	function changeGalleryPage(direction:String):Void;
	function startSlideshow():Void;
	function stopSlideshow():Void;
	function close():Void;
};
typedef JQuery = {
	var prettyPhoto : scaron_prettyPhoto.ModuleJQuery;
};
typedef JQueryStatic = {
	var prettyPhoto : scaron_prettyPhoto.ModuleJQueryStatic;
};
