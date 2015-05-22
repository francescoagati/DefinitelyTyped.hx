typedef Names = {
	var class : String;
	var colspan : String;
	var for : String;
	var frameborder : String;
	var readonly : String;
	var rowspan : String;
	var tabindex : String;
	var valuetype : String;
};
typedef Dom_style = {
	@:overload(function(node:String, name:String):Dynamic { })
	@:overload(function(node:HTMLElement, name:Dynamic):Dynamic { })
	@:overload(function(node:String, name:Dynamic):Dynamic { })
	function get(node:HTMLElement, name:String):Dynamic;
	function getComputedStyle(node:HTMLElement):Void;
	@:overload(function(node:String, name:String, value:String):Dynamic { })
	@:overload(function(node:HTMLElement, name:Dynamic, value:String):Dynamic { })
	@:overload(function(node:String, name:Dynamic, value:String):Dynamic { })
	function set(node:HTMLElement, name:String, value:String):Dynamic;
	function toPixelValue(node:HTMLElement, value:String):Float;
};
typedef Dom_geometry = {
	var boxModel : String;
	function docScroll(doc:HTMLDocument):Dynamic;
	function fixIeBiDiScrollLeft(scrollLeft:Float, doc:HTMLDocument):Float;
	function getBorderExtents(node:HTMLElement, computedStyle:Dynamic):Dynamic;
	function getContentBox(node:HTMLElement, computedStyle:Dynamic):Dynamic;
	function getIeDocumentElementOffset(doc:HTMLDocument):Dynamic;
	function getMarginBox(node:HTMLElement, computedStyle:Dynamic):Dynamic;
	function getMarginExtents(node:HTMLElement, computedStyle:Dynamic):Dynamic;
	@:overload(function(node:String, computedStyle:Dynamic):Dynamic { })
	function getMarginSize(node:HTMLElement, computedStyle:Dynamic):Dynamic;
	function getPadBorderExtents(node:HTMLElement, computedStyle:Dynamic):Dynamic;
	function getPadExtents(node:HTMLElement, computedStyle:Dynamic):Dynamic;
	function isBodyLtr(doc:HTMLDocument):Bool;
	function normalizeEvent(event:Dynamic):Void;
	@:overload(function(node:String, ?includeScroll:Bool):{ var w : Float; var h : Float; var x : Float; var y : Float; } { })
	function position(node:HTMLElement, ?includeScroll:Bool):{ var w : Float; var h : Float; var x : Float; var y : Float; };
	function setContentSize(node:HTMLElement, box:Dynamic, computedStyle:Dynamic):Void;
	function setMarginBox(node:HTMLElement, box:Dynamic, computedStyle:Dynamic):Void;
};
typedef Gears = {
	var available : Dynamic;
};
