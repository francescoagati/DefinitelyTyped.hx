typedef FancyboxOptions = {
	@:optional
	var padding : Dynamic;
	@:optional
	var margin : Dynamic;
	@:optional
	var width : Dynamic;
	@:optional
	var height : Dynamic;
	@:optional
	var minWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var autoSize : Bool;
	@:optional
	var autoHeight : Bool;
	@:optional
	var autoWidth : Bool;
	@:optional
	var autoResize : Bool;
	@:optional
	var autoCenter : Bool;
	@:optional
	var fitToView : Bool;
	@:optional
	var aspectRatio : Bool;
	@:optional
	var topRatio : Float;
	@:optional
	var leftRatio : Float;
	@:optional
	var scrolling : String;
	@:optional
	var wrapCSS : String;
	@:optional
	var arrows : Bool;
	@:optional
	var closeBtn : Bool;
	@:optional
	var closeClick : Bool;
	@:optional
	var nextClick : Bool;
	@:optional
	var mouseWheel : Bool;
	@:optional
	var autoPlay : Bool;
	@:optional
	var playSpeed : Float;
	@:optional
	var preload : Float;
	@:optional
	var modal : Bool;
	@:optional
	var loop : Bool;
	@:optional
	var ajax : Dynamic;
	@:optional
	var iframe : Dynamic;
	@:optional
	var swf : Dynamic;
	@:optional
	var keys : Dynamic;
	@:optional
	var direction : Dynamic;
	@:optional
	var scrollOutside : Bool;
	@:optional
	var index : Float;
	@:optional
	var type : String;
	@:optional
	var href : String;
	@:optional
	var content : String;
	@:optional
	var title : String;
	@:optional
	var tpl : Dynamic;
	@:optional
	var openEffect : String;
	@:optional
	var closeEffect : String;
	@:optional
	var nextEffect : String;
	@:optional
	var prevEffect : String;
	@:optional
	var openSpeed : Float;
	@:optional
	var closeSpeed : Float;
	@:optional
	var nextSpeed : Float;
	@:optional
	var prevSpeed : Float;
	@:optional
	var openEasing : String;
	@:optional
	var closeEasing : String;
	@:optional
	var nextEasing : String;
	@:optional
	var prevEasing : String;
	@:optional
	var openOpacity : Bool;
	@:optional
	var closeOpacity : Bool;
	@:optional
	var openMethod : String;
	@:optional
	var closeMethod : String;
	@:optional
	var nextMethod : String;
	@:optional
	var prevMethod : String;
	@:optional
	var helpers : Dynamic;
};
typedef FancyboxMethods = {
	function open(?group:Array<Dynamic>, ?options:FancyboxOptions):Dynamic;
	function cancel():Dynamic;
	function close(?force:Bool):Dynamic;
	function play():Dynamic;
	function next():Dynamic;
	function prev():Dynamic;
	function jumpto(?index:Float):Dynamic;
	function reposition():Dynamic;
	function update():Dynamic;
	function toggle():Dynamic;
	function showLoading():Dynamic;
	function hideLoading():Dynamic;
};
typedef FancyboxCallback = {
	var onCancel : Dynamic;
	var beforeLoad : Dynamic;
	var afterLoad : Dynamic;
	var beforeShow : Dynamic;
	var afterShow : Dynamic;
	var beforeClose : Dynamic;
	var afterClose : Dynamic;
	var onUpdate : Dynamic;
	var onPlayStart : Dynamic;
	var onPlayEnd : Dynamic;
};
typedef FancyboxThumbnailHelperOptions = {
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var source : Dynamic;
	@:optional
	var position : String;
};
typedef FancyboxButtonHelperOptions = {
	@:optional
	var tpl : String;
	@:optional
	var position : String;
};
typedef JQuery = {
	var fancybox : FancyboxMethods;
};
typedef JQueryStatic = {
	var fancybox : FancyboxMethods;
};
