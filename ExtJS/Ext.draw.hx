typedef IColor = {
	>Ext.IBase,
	@:optional
	var lightnessFactor : Float;
	@:optional
	function getBlue():Float;
	@:optional
	function getDarker(?factor:Float):Dynamic;
	@:optional
	function getGrayscale():Float;
	@:optional
	function getGreen():Float;
	@:optional
	function getHSL():Array<Float>;
	@:optional
	function getLighter(?factor:Float):Dynamic;
	@:optional
	function getRGB():Array<Float>;
	@:optional
	function getRed():Float;
	@:optional
	function toString():String;
};
extern class Color {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function fromHSL(?h:Float, ?s:Float, ?l:Float):Dynamic;
	static function fromString(?str:String):Dynamic;
	static function getName():String;
	static function implement():Void;
	static function override(?members:Dynamic):Ext.IBase;
	static function toHex(?color:Dynamic):String;
}
typedef IComponent = {
	>Ext.IComponent,
	@:optional
	var autoSize : Bool;
	@:optional
	var baseCls : String;
	@:optional
	var componentLayout : Dynamic;
	@:optional
	var enginePriority : Array<String>;
	@:optional
	var gradients : Array<Dynamic>;
	@:optional
	var items : Array<Ext.draw.ISprite>;
	@:optional
	var shrinkWrap : Dynamic;
	@:optional
	var viewBox : Bool;
	@:optional
	var surface : Ext.draw.ISurface;
};
typedef ICompositeSprite = {
	>Ext.util.IMixedCollection,
	>Ext.util.IAnimate,
	@:optional
	function add(?key:Dynamic, ?o:Dynamic):Dynamic;
	@:optional
	function addCls(?cls:String):Void;
	@:optional
	function animate(?config:Dynamic):Dynamic;
	@:optional
	function destroy():Void;
	@:optional
	function getActiveAnimation():Dynamic;
	@:optional
	function getBBox():Dynamic;
	@:optional
	function hasActiveFx():Dynamic;
	@:optional
	function hide(?redraw:Bool):Ext.draw.ICompositeSprite;
	@:optional
	function insert(?index:Dynamic, ?key:Dynamic, ?o:Dynamic):Dynamic;
	@:optional
	function redraw():Void;
	@:optional
	function remove(?o:Dynamic):Dynamic;
	@:optional
	function removeCls(?cls:String):Void;
	@:optional
	function sequenceFx():Dynamic;
	@:optional
	function setAttributes(?attrs:Dynamic, ?redraw:Bool):Ext.draw.ICompositeSprite;
	@:optional
	function setStyle(?style:String):Void;
	@:optional
	function show(?redraw:Bool):Ext.draw.ICompositeSprite;
	@:optional
	function stopAnimation():Ext.IElement;
	@:optional
	function stopFx():Ext.IElement;
	@:optional
	function syncFx():Dynamic;
};
typedef IDraw = {
	>Ext.IBase,
};
extern class Draw {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function snapEndsByDate(?from:Dynamic, ?to:Dynamic, ?stepsMax:Float, ?lockEnds:Bool):Dynamic;
	static function snapEndsByDateAndStep(?from:Dynamic, ?to:Dynamic, ?step:Array<Dynamic>, ?lockEnds:Bool):Dynamic;
	static function statics():Ext.IClass;
}
typedef IMatrix = {
	>Ext.IBase,
};
typedef ISprite = {
	>Ext.IBase,
	>Ext.util.IObservable,
	>Ext.util.IAnimate,
	@:optional
	var draggable : Bool;
	@:optional
	var fill : String;
	@:optional
	var font : String;
	@:optional
	var group : Dynamic;
	@:optional
	var height : Float;
	@:optional
	var opacity : Float;
	@:optional
	var path : String;
	@:optional
	var radius : Float;
	@:optional
	var radiusX : Float;
	@:optional
	var radiusY : Float;
	@:optional
	var src : String;
	@:optional
	var stroke : String;
	@:optional
	var strokewidth : Float;
	@:optional
	var text : String;
	@:optional
	var type : String;
	@:optional
	var width : Float;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	var dd : Ext.dd.IDragSource;
	@:optional
	var isSprite : Bool;
	@:optional
	function addCls(?className:Dynamic):Ext.draw.ISprite;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function animate(?config:Dynamic):Dynamic;
	@:optional
	function clearListeners():Void;
	@:optional
	function clearManagedListeners():Void;
	@:optional
	function destroy():Void;
	@:optional
	function enableBubble(?eventNames:Dynamic):Void;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	@:optional
	function getActiveAnimation():Dynamic;
	@:optional
	function getBBox():Dynamic;
	@:optional
	function hasActiveFx():Dynamic;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function hide(?redraw:Bool):Ext.draw.ISprite;
	@:optional
	function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function redraw():Ext.draw.ISprite;
	@:optional
	function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	@:optional
	function remove():Bool;
	@:optional
	function removeCls(?className:Dynamic):Ext.draw.ISprite;
	@:optional
	function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function resumeEvents():Void;
	@:optional
	function sequenceFx():Dynamic;
	@:optional
	function setAttributes(?attrs:Dynamic, ?redraw:Bool):Ext.draw.ISprite;
	@:optional
	function setStyle(?property:Dynamic, ?value:String):Ext.draw.ISprite;
	@:optional
	function show(?redraw:Bool):Ext.draw.ISprite;
	@:optional
	function stopAnimation():Ext.IElement;
	@:optional
	function stopFx():Ext.IElement;
	@:optional
	function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function suspendEvents(?queueSuspended:Bool):Void;
	@:optional
	function syncFx():Dynamic;
	@:optional
	function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
};
typedef ISpriteDD = {
	>Ext.dd.IDragSource,
	@:optional
	function createFrame():Void;
	@:optional
	function getDragEl(?e:Dynamic):HTMLElement;
	@:optional
	function onDrag(?e:Dynamic):Void;
	@:optional
	function setDragElPos():Void;
};
typedef ISurface = {
	>Ext.IBase,
	>Ext.util.IObservable,
	@:optional
	var height : Float;
	@:optional
	var items : Array<Ext.draw.ISprite>;
	@:optional
	var width : Float;
	@:optional
	function add(?args:Dynamic):Dynamic;
	@:optional
	function addCls(?sprite:Dynamic, ?className:Dynamic):Void;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addGradient(?gradient:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function clearListeners():Void;
	@:optional
	function clearManagedListeners():Void;
	@:optional
	function destroy():Void;
	@:optional
	function enableBubble(?eventNames:Dynamic):Void;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	@:optional
	function getGroup(?id:String):Dynamic;
	@:optional
	function getId():Void;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	@:optional
	function remove(?sprite:Ext.draw.ISprite, ?destroySprite:Bool):Void;
	@:optional
	function removeAll(?destroySprites:Bool):Void;
	@:optional
	function removeCls(?sprite:Dynamic, ?className:Dynamic):Void;
	@:optional
	function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function resumeEvents():Void;
	@:optional
	function setSize(?w:Float, ?h:Float):Void;
	@:optional
	function setStyle(?sprite:Dynamic, ?styles:Dynamic):Void;
	@:optional
	function setText(?sprite:Dynamic, ?text:String):Void;
	@:optional
	function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function suspendEvents(?queueSuspended:Bool):Void;
	@:optional
	function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
};
extern class Surface {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function create(?config:Dynamic, ?enginePriority:Array<String>):Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function getName():String;
	static function implement():Void;
	static function override(?members:Dynamic):Ext.IBase;
	static function save(?surface:Ext.draw.ISurface, ?config:Dynamic):Dynamic;
}
typedef IText = {
	>Ext.draw.IComponent,
	@:optional
	var autoSize : Bool;
	@:optional
	var baseCls : String;
	@:optional
	var degrees : Float;
	@:optional
	var styleSelector : String;
	@:optional
	var text : String;
	@:optional
	var viewBox : Bool;
	@:optional
	function initComponent():Void;
	@:optional
	function setAngle(?degrees:Float):Void;
	@:optional
	function setText(?t:String):Void;
};
