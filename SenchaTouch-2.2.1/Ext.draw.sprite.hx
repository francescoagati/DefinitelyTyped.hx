typedef IAnimationParser = {
	>Ext.IBase,
};
extern class AnimationParser {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function statics():Ext.IClass;
}
typedef IArc = {
	>Ext.draw.sprite.ICircle,
	@:optional
	var anticlockwise : Bool;
	@:optional
	var endAngle : Float;
	@:optional
	var startAngle : Float;
	@:optional
	function updatePath(?path:Dynamic, ?attr:Dynamic):Void;
};
typedef IAttributeDefinition = {
	>Ext.IBase,
	@:optional
	var aliases : Dynamic;
	@:optional
	var animationProcessors : Dynamic;
	@:optional
	var defaults : Dynamic;
	@:optional
	var dirty : Dynamic;
	@:optional
	var processors : Dynamic;
	@:optional
	var updaters : Dynamic;
	@:optional
	function getAliases():Dynamic;
	@:optional
	function getAnimationProcessors():Dynamic;
	@:optional
	function getDefaults():Dynamic;
	@:optional
	function getProcessors():Dynamic;
	@:optional
	function getUpdaters():Dynamic;
	@:optional
	function normalize(?changes:Dynamic):Dynamic;
	@:optional
	function setAliases(?aliases:Dynamic):Void;
	@:optional
	function setAnimationProcessors(?animationProcessors:Dynamic):Void;
	@:optional
	function setDefaults(?defaults:Dynamic):Void;
	@:optional
	function setProcessors(?processors:Dynamic):Void;
	@:optional
	function setUpdaters(?updaters:Dynamic):Void;
};
typedef IAttributeParser = {
	>Ext.IBase,
};
extern class AttributeParser {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function statics():Ext.IClass;
}
typedef ICircle = {
	>Ext.draw.sprite.IPath,
	@:optional
	var cx : Float;
	@:optional
	var cy : Float;
	@:optional
	var r : Float;
	@:optional
	function updatePath(?path:Dynamic, ?attr:Dynamic):Void;
	@:optional
	function updatePlainBBox(?plain:Dynamic):Void;
	@:optional
	function updateTransformedBBox(?transform:Dynamic):Void;
};
typedef IComposite = {
	>Ext.draw.sprite.ISprite,
	@:optional
	function add(?sprite:Dynamic):Void;
	@:optional
	function render(?surface:Dynamic, ?ctx:Dynamic, ?region:Dynamic):Void;
	@:optional
	function updatePlainBBox(?plain:Dynamic):Void;
};
typedef IEllipse = {
	>Ext.draw.sprite.IPath,
	@:optional
	var axisRotation : Float;
	@:optional
	var cx : Float;
	@:optional
	var cy : Float;
	@:optional
	var rx : Float;
	@:optional
	var ry : Float;
	@:optional
	function updatePath(?path:Dynamic, ?attr:Dynamic):Void;
	@:optional
	function updatePlainBBox(?plain:Dynamic):Void;
	@:optional
	function updateTransformedBBox(?transform:Dynamic):Void;
};
typedef IEllipticalArc = {
	>Ext.draw.sprite.IEllipse,
	@:optional
	var anticlockwise : Bool;
	@:optional
	var endAngle : Float;
	@:optional
	var startAngle : Float;
	@:optional
	function updatePath(?path:Dynamic, ?attr:Dynamic):Void;
};
typedef IImage = {
	>Ext.draw.sprite.IRect,
	@:optional
	var src : String;
	@:optional
	function render(?surface:Dynamic, ?ctx:Dynamic):Dynamic;
};
typedef IInstancing = {
	>Ext.draw.sprite.ISprite,
	@:optional
	var template : Dynamic;
	@:optional
	function createInstance(?config:Dynamic, ?data:Dynamic, ?bypassNormalization:Bool, ?avoidCopy:Bool):Dynamic;
	@:optional
	function destroy():Void;
	@:optional
	function getBBox():Dynamic;
	@:optional
	function getBBoxFor(?index:Float, ?isWithoutTransform:Bool):Dynamic;
	@:optional
	function getTemplate():Dynamic;
	@:optional
	function render(?surface:Dynamic, ?ctx:Dynamic, ?clipRegion:Dynamic, ?region:Dynamic):Dynamic;
	@:optional
	function setAttributesFor(?index:Float, ?changes:Dynamic, ?bypassNormalization:Bool):Void;
	@:optional
	function setTemplate(?template:Dynamic):Void;
};
typedef IPath = {
	>Ext.draw.sprite.ISprite,
	@:optional
	var path : String;
	@:optional
	function render(?surface:Dynamic, ?ctx:Dynamic):Dynamic;
	@:optional
	function updatePath(?path:Ext.draw.IPath, ?attr:Dynamic):Void;
	@:optional
	function updatePlainBBox(?plain:Dynamic):Void;
	@:optional
	function updateTransformedBBox(?transform:Dynamic):Void;
};
typedef IRect = {
	>Ext.draw.sprite.IPath,
	@:optional
	var height : Float;
	@:optional
	var radius : Float;
	@:optional
	var width : Float;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	function updatePath(?path:Dynamic, ?attr:Dynamic):Void;
	@:optional
	function updatePlainBBox(?plain:Dynamic):Void;
	@:optional
	function updateTransformedBBox(?transform:Dynamic, ?plain:Dynamic):Void;
};
typedef ISector = {
	>Ext.draw.sprite.IPath,
	@:optional
	var centerX : Float;
	@:optional
	var centerY : Float;
	@:optional
	var endAngle : Float;
	@:optional
	var endRho : Float;
	@:optional
	var margin : Float;
	@:optional
	var startAngle : Float;
	@:optional
	var startRho : Float;
	@:optional
	function updatePath(?path:Dynamic, ?attr:Dynamic):Void;
};
typedef ISprite = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
	@:optional
	var fillOpacity : Float;
	@:optional
	var fillStyle : String;
	@:optional
	var globalAlpha : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var lineCap : String;
	@:optional
	var lineJoin : String;
	@:optional
	var lineWidth : Float;
	@:optional
	var miterLimit : Float;
	@:optional
	var rotationCenterX : Float;
	@:optional
	var rotationCenterY : Float;
	@:optional
	var rotationRads : Float;
	@:optional
	var scalingCenterX : Float;
	@:optional
	var scalingCenterY : Float;
	@:optional
	var scalingX : Float;
	@:optional
	var scalingY : Float;
	@:optional
	var shadowBlur : Float;
	@:optional
	var shadowColor : String;
	@:optional
	var shadowOffsetX : Float;
	@:optional
	var shadowOffsetY : Float;
	@:optional
	var strokeOpacity : Float;
	@:optional
	var strokeStyle : String;
	@:optional
	var transformFillStroke : Bool;
	@:optional
	var translationX : Float;
	@:optional
	var translationY : Float;
	@:optional
	var zIndex : Float;
	@:optional
	var attr : Dynamic;
	@:optional
	function addAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function addBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function addManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function clearListeners():Void;
	@:optional
	function destroy():Void;
	@:optional
	function enableBubble(?events:Dynamic):Void;
	@:optional
	function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function getBBox(?isWithoutTransform:Bool):Void;
	@:optional
	function getBBoxCenter(?isWithoutTransform:Bool):Array<Dynamic>;
	@:optional
	function getBubbleEvents():Dynamic;
	@:optional
	function getListeners():Dynamic;
	@:optional
	function getParent():Dynamic;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function hide():Ext.draw.sprite.ISprite;
	@:optional
	function mon(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function mun(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function onAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function onBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function preRender():Void;
	@:optional
	function relayEvents(?object:Dynamic, ?events:Dynamic):Ext.mixin.IObservable;
	@:optional
	function removeAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function removeManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function render(?surface:Ext.draw.ISurface, ?ctx:Dynamic, ?region:Array<Dynamic>):Dynamic;
	@:optional
	function resumeEvents(?discardQueuedEvents:Bool):Void;
	@:optional
	function setAttributes(?changes:Dynamic, ?bypassNormalization:Bool, ?avoidCopy:Bool):Void;
	@:optional
	function setAttributesBypassingNormalization(?changes:Dynamic, ?avoidCopy:Bool):Void;
	@:optional
	function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	@:optional
	function setListeners(?listeners:Dynamic):Void;
	@:optional
	function setParent(?parent:Dynamic):Void;
	@:optional
	function show():Ext.draw.sprite.ISprite;
	@:optional
	function suspendEvents():Void;
	@:optional
	function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function updatePlainBBox(?plain:Dynamic):Void;
	@:optional
	function updateTransformedBBox(?transform:Dynamic, ?plain:Dynamic):Void;
};
typedef IText = {
	>Ext.draw.sprite.ISprite,
	@:optional
	var font : String;
	@:optional
	var fontFamily : String;
	@:optional
	var fontSize : Dynamic;
	@:optional
	var fontStyle : String;
	@:optional
	var fontVariant : String;
	@:optional
	var fontWeight : String;
	@:optional
	var text : String;
	@:optional
	var textAlign : String;
	@:optional
	var textBaseline : String;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	function render(?surface:Dynamic, ?ctx:Dynamic):Dynamic;
	@:optional
	function updatePlainBBox(?plain:Dynamic):Void;
};
