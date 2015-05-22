typedef IDD = {
	>Ext.dd.IDragDrop,
	@:optional
	var scroll : Bool;
	@:optional
	function alignElWithMouse(?el:HTMLElement, ?iPageX:Float, ?iPageY:Float):Void;
	@:optional
	function applyConfig():Void;
	@:optional
	function autoOffset(?iPageX:Float, ?iPageY:Float):Void;
	@:optional
	function b4Drag(?e:Dynamic):Void;
	@:optional
	function b4MouseDown(?e:Dynamic):Void;
	@:optional
	function cachePosition(?iPageX:Float, ?iPageY:Float):Void;
	@:optional
	function setDelta(?iDeltaX:Float, ?iDeltaY:Float):Void;
	@:optional
	function setDragElPos(?iPageX:Float, ?iPageY:Float):Void;
	@:optional
	function toString():String;
};
typedef IDDProxy = {
	>Ext.dd.IDD,
	@:optional
	var centerFrame : Bool;
	@:optional
	var resizeFrame : Bool;
	@:optional
	var dragElId : String;
	@:optional
	function applyConfig():Void;
	@:optional
	function b4MouseDown(?e:Dynamic):Void;
	@:optional
	function createFrame():Void;
	@:optional
	function endDrag(?e:Dynamic):Void;
	@:optional
	function initFrame():Void;
	@:optional
	function toString():String;
};
typedef IDDTarget = {
	>Ext.dd.IDragDrop,
	@:optional
	function toString():String;
};
typedef IDragDrop = {
	>Ext.IBase,
	@:optional
	var available : Bool;
	@:optional
	var config : Dynamic;
	@:optional
	var defaultPadding : Dynamic;
	@:optional
	var groups : Dynamic;
	@:optional
	var hasOuterHandles : Bool;
	@:optional
	var id : String;
	@:optional
	var ignoreSelf : Bool;
	@:optional
	var invalidHandleClasses : Array<String>;
	@:optional
	var invalidHandleIds : Dynamic;
	@:optional
	var invalidHandleTypes : Dynamic;
	@:optional
	var isTarget : Bool;
	@:optional
	var maintainOffset : Bool;
	@:optional
	var moveOnly : Bool;
	@:optional
	var padding : Array<Float>;
	@:optional
	var primaryButtonOnly : Bool;
	@:optional
	var xTicks : Array<Float>;
	@:optional
	var yTicks : Array<Float>;
	@:optional
	function addInvalidHandleClass(?cssClass:String):Void;
	@:optional
	function addInvalidHandleId(?id:String):Void;
	@:optional
	function addInvalidHandleType(?tagName:String):Void;
	@:optional
	function addToGroup(?sGroup:String):Void;
	@:optional
	function applyConfig():Void;
	@:optional
	function clearConstraints():Void;
	@:optional
	function clearTicks():Void;
	@:optional
	function constrainTo(?constrainTo:Dynamic, ?pad:Dynamic, ?inContent:Bool):Void;
	@:optional
	function destroy():Void;
	@:optional
	function endDrag(?e:Event):Void;
	@:optional
	function getDragEl():HTMLElement;
	@:optional
	function getEl():HTMLElement;
	@:optional
	function init(?id:String, ?sGroup:String, ?config:Dynamic):Void;
	@:optional
	function initTarget(?id:String, ?sGroup:String, ?config:Dynamic):Void;
	@:optional
	function isLocked():Bool;
	@:optional
	function isValidHandleChild(?node:HTMLElement):Bool;
	@:optional
	function lock():Void;
	@:optional
	function onAvailable():Void;
	@:optional
	function onDrag(?e:Event):Void;
	@:optional
	function onDragDrop(?e:Event, ?id:Dynamic):Void;
	@:optional
	function onDragEnter(?e:Event, ?id:Dynamic):Void;
	@:optional
	function onDragOut(?e:Event, ?id:Dynamic):Void;
	@:optional
	function onDragOver(?e:Event, ?id:Dynamic):Void;
	@:optional
	function onInvalidDrop(?e:Event):Void;
	@:optional
	function onMouseDown(?e:Event):Void;
	@:optional
	function onMouseUp(?e:Event):Void;
	@:optional
	function removeFromGroup(?sGroup:String):Void;
	@:optional
	function removeInvalidHandleClass(?cssClass:String):Void;
	@:optional
	function removeInvalidHandleId(?id:String):Void;
	@:optional
	function removeInvalidHandleType(?tagName:String):Void;
	@:optional
	function resetConstraints(?maintainOffset:Bool):Void;
	@:optional
	function setDragElId(?id:String):Void;
	@:optional
	function setHandleElId(?id:String):Void;
	@:optional
	function setInitPosition(?diffX:Float, ?diffY:Float):Void;
	@:optional
	function setOuterHandleElId(?id:String):Void;
	@:optional
	function setPadding(?iTop:Float, ?iRight:Float, ?iBot:Float, ?iLeft:Float):Void;
	@:optional
	function setXConstraint(?iLeft:Float, ?iRight:Float, ?iTickSize:Float):Void;
	@:optional
	function setYConstraint(?iUp:Float, ?iDown:Float, ?iTickSize:Float):Void;
	@:optional
	function startDrag(?x:Float, ?y:Float):Void;
	@:optional
	function toString():String;
	@:optional
	function unlock():Void;
	@:optional
	function unreg():Void;
};
typedef IDragDropElement = {
	@:optional
	function getPosX(?el:HTMLElement):Float;
	@:optional
	function getPosY(?el:HTMLElement):Float;
	@:optional
	function getScrollLeft():Float;
	@:optional
	function getScrollTop():Float;
	@:optional
	function getStyle(?el:HTMLElement, ?styleProp:String):String;
	@:optional
	function handleWasClicked(?node:HTMLElement):Void;
	@:optional
	function moveToEl(?moveEl:HTMLElement, ?targetEl:HTMLElement):Void;
	@:optional
	function numericSort(?a:Float, ?b:Float):Float;
	@:optional
	function swapNode(?n1:HTMLElement, ?n2:HTMLElement):Void;
};
typedef IDragDropManager = {
	>Ext.IBase,
};
extern class DragDropManager {
	static var INTERSECT : Float;
	static var POINT : Float;
	static var clickPixelThresh : Float;
	static var clickTimeThresh : Float;
	static var dragCls : String;
	static var mode : Float;
	static var notifyOccluded : Bool;
	static var preventDefault : Bool;
	static var self : Ext.IClass;
	static var stopPropagation : Bool;
	static var useCache : Bool;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function getBestMatch(?dds:Array<Ext.dd.IDragDrop>):Ext.dd.IDragDrop;
	static function getCss(?id:String):Dynamic;
	static function getDDById(?id:String):Ext.dd.IDragDrop;
	static function getElement(?id:String):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function getLocation(?oDD:Ext.dd.IDragDrop):Ext.util.IRegion;
	static function getRelated(?p_oDD:Ext.dd.IDragDrop, ?bTargetsOnly:Bool):Array<Ext.dd.IDragDrop>;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function isDragDrop(?id:String):Bool;
	static function isHandle(?id:String):Bool;
	static function isLegalTarget(?oDD:Ext.dd.IDragDrop, ?oTargetDD:Ext.dd.IDragDrop):Bool;
	static function isLocked():Bool;
	static function isTypeOfDD(?the:Dynamic):Bool;
	static function lock():Void;
	static function refreshCache(?groups:Dynamic):Void;
	static function regDragDrop(?oDD:Ext.dd.IDragDrop, ?sGroup:String):Void;
	static function regHandle(?sDDId:String, ?sHandleId:String):Void;
	static function startDrag(?x:Float, ?y:Float):Void;
	static function statics():Ext.IClass;
	static function stopEvent(?e:Event):Void;
	static function unlock():Void;
	static function verifyEl(?el:HTMLElement):Bool;
}
typedef IDragDropMgr = {
	>Ext.IBase,
};
extern class DragDropMgr {
	static var INTERSECT : Float;
	static var POINT : Float;
	static var clickPixelThresh : Float;
	static var clickTimeThresh : Float;
	static var dragCls : String;
	static var mode : Float;
	static var notifyOccluded : Bool;
	static var preventDefault : Bool;
	static var self : Ext.IClass;
	static var stopPropagation : Bool;
	static var useCache : Bool;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function getBestMatch(?dds:Array<Ext.dd.IDragDrop>):Ext.dd.IDragDrop;
	static function getCss(?id:String):Dynamic;
	static function getDDById(?id:String):Ext.dd.IDragDrop;
	static function getElement(?id:String):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function getLocation(?oDD:Ext.dd.IDragDrop):Ext.util.IRegion;
	static function getRelated(?p_oDD:Ext.dd.IDragDrop, ?bTargetsOnly:Bool):Array<Ext.dd.IDragDrop>;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function isDragDrop(?id:String):Bool;
	static function isHandle(?id:String):Bool;
	static function isLegalTarget(?oDD:Ext.dd.IDragDrop, ?oTargetDD:Ext.dd.IDragDrop):Bool;
	static function isLocked():Bool;
	static function isTypeOfDD(?the:Dynamic):Bool;
	static function lock():Void;
	static function refreshCache(?groups:Dynamic):Void;
	static function regDragDrop(?oDD:Ext.dd.IDragDrop, ?sGroup:String):Void;
	static function regHandle(?sDDId:String, ?sHandleId:String):Void;
	static function startDrag(?x:Float, ?y:Float):Void;
	static function statics():Ext.IClass;
	static function stopEvent(?e:Event):Void;
	static function unlock():Void;
	static function verifyEl(?el:HTMLElement):Bool;
}
typedef IDDM = {
	>Ext.IBase,
};
extern class DDM {
	static var INTERSECT : Float;
	static var POINT : Float;
	static var clickPixelThresh : Float;
	static var clickTimeThresh : Float;
	static var dragCls : String;
	static var mode : Float;
	static var notifyOccluded : Bool;
	static var preventDefault : Bool;
	static var self : Ext.IClass;
	static var stopPropagation : Bool;
	static var useCache : Bool;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function getBestMatch(?dds:Array<Ext.dd.IDragDrop>):Ext.dd.IDragDrop;
	static function getCss(?id:String):Dynamic;
	static function getDDById(?id:String):Ext.dd.IDragDrop;
	static function getElement(?id:String):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function getLocation(?oDD:Ext.dd.IDragDrop):Ext.util.IRegion;
	static function getRelated(?p_oDD:Ext.dd.IDragDrop, ?bTargetsOnly:Bool):Array<Ext.dd.IDragDrop>;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function isDragDrop(?id:String):Bool;
	static function isHandle(?id:String):Bool;
	static function isLegalTarget(?oDD:Ext.dd.IDragDrop, ?oTargetDD:Ext.dd.IDragDrop):Bool;
	static function isLocked():Bool;
	static function isTypeOfDD(?the:Dynamic):Bool;
	static function lock():Void;
	static function refreshCache(?groups:Dynamic):Void;
	static function regDragDrop(?oDD:Ext.dd.IDragDrop, ?sGroup:String):Void;
	static function regHandle(?sDDId:String, ?sHandleId:String):Void;
	static function startDrag(?x:Float, ?y:Float):Void;
	static function statics():Ext.IClass;
	static function stopEvent(?e:Event):Void;
	static function unlock():Void;
	static function verifyEl(?el:HTMLElement):Bool;
}
typedef IDragSource = {
	>Ext.dd.IDDProxy,
	@:optional
	var animRepair : Bool;
	@:optional
	var ddGroup : String;
	@:optional
	var dropAllowed : String;
	@:optional
	var dropNotAllowed : String;
	@:optional
	var repairHighlightColor : String;
	@:optional
	var dragData : Dynamic;
	@:optional
	function afterDragDrop(?target:Ext.dd.IDragDrop, ?e:Event, ?id:String):Void;
	@:optional
	function afterDragEnter(?target:Ext.dd.IDragDrop, ?e:Event, ?id:String):Void;
	@:optional
	function afterDragOut(?target:Ext.dd.IDragDrop, ?e:Event, ?id:String):Void;
	@:optional
	function afterDragOver(?target:Ext.dd.IDragDrop, ?e:Event, ?id:String):Void;
	@:optional
	function afterInvalidDrop(?e:Event, ?id:String):Void;
	@:optional
	function afterValidDrop(?target:Dynamic, ?e:Event, ?id:String):Void;
	@:optional
	function alignElWithMouse():Void;
	@:optional
	function beforeDragDrop(?target:Ext.dd.IDragDrop, ?e:Event, ?id:String):Bool;
	@:optional
	function beforeDragEnter(?target:Ext.dd.IDragDrop, ?e:Event, ?id:String):Bool;
	@:optional
	function beforeDragOut(?target:Ext.dd.IDragDrop, ?e:Event, ?id:String):Bool;
	@:optional
	function beforeDragOver(?target:Ext.dd.IDragDrop, ?e:Event, ?id:String):Bool;
	@:optional
	function beforeInvalidDrop(?target:Ext.dd.IDragDrop, ?e:Event, ?id:String):Bool;
	@:optional
	function destroy():Void;
	@:optional
	function getDragData(?e:Dynamic):Dynamic;
	@:optional
	function getProxy():Ext.dd.IStatusProxy;
	@:optional
	function hideProxy():Void;
	@:optional
	function onBeforeDrag(?data:Dynamic, ?e:Event):Bool;
	@:optional
	function onStartDrag(?x:Float, ?y:Float):Void;
};
typedef IDragTracker = {
	>Ext.IBase,
	>Ext.util.IObservable,
	@:optional
	var autoStart : Dynamic;
	@:optional
	var constrainTo : Dynamic;
	@:optional
	var delegate : String;
	@:optional
	var overCls : String;
	@:optional
	var preventDefault : Bool;
	@:optional
	var stopEvent : Bool;
	@:optional
	var tolerance : Float;
	@:optional
	var trackOver : Bool;
	@:optional
	var active : Bool;
	@:optional
	var dragTarget : HTMLElement;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function clearListeners():Void;
	@:optional
	function clearManagedListeners():Void;
	@:optional
	function enableBubble(?eventNames:Dynamic):Void;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	@:optional
	function getDragTarget():Ext.IElement;
	@:optional
	function getOffset(?constrainMode:String):Array<Float>;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function initEl(?el:Dynamic):Void;
	@:optional
	function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function onBeforeStart(?e:Ext.IEventObject):Void;
	@:optional
	function onDrag(?e:Ext.IEventObject):Void;
	@:optional
	function onEnd(?e:Ext.IEventObject):Void;
	@:optional
	function onStart(?e:Ext.IEventObject):Void;
	@:optional
	function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	@:optional
	function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function resumeEvents():Void;
	@:optional
	function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function suspendEvents(?queueSuspended:Bool):Void;
	@:optional
	function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
};
typedef IDragZone = {
	>Ext.dd.IDragSource,
	@:optional
	var containerScroll : Dynamic;
	@:optional
	var scrollEl : Dynamic;
	@:optional
	function destroy():Void;
	@:optional
	function getDragData(?e:Event):Dynamic;
	@:optional
	function getRepairXY(?e:Event):Array<Float>;
	@:optional
	function onInitDrag(?x:Float, ?y:Float):Bool;
};
typedef IDropTarget = {
	>Ext.dd.IDDTarget,
	@:optional
	var ddGroup : String;
	@:optional
	var dropAllowed : String;
	@:optional
	var dropNotAllowed : String;
	@:optional
	var overClass : String;
	@:optional
	var isTarget : Bool;
	@:optional
	function destroy():Void;
	@:optional
	function notifyDrop(?source:Ext.dd.IDragSource, ?e:Event, ?data:Dynamic):Bool;
	@:optional
	function notifyEnter(?source:Ext.dd.IDragSource, ?e:Event, ?data:Dynamic):String;
	@:optional
	function notifyOut(?source:Ext.dd.IDragSource, ?e:Event, ?data:Dynamic):Void;
	@:optional
	function notifyOver(?source:Ext.dd.IDragSource, ?e:Event, ?data:Dynamic):String;
};
typedef IDropZone = {
	>Ext.dd.IDropTarget,
	@:optional
	function getTargetFromEvent(?e:Event):Dynamic;
	@:optional
	function notifyDrop(?source:Ext.dd.IDragSource, ?e:Event, ?data:Dynamic):Bool;
	@:optional
	function notifyEnter(?source:Ext.dd.IDragSource, ?e:Event, ?data:Dynamic):String;
	@:optional
	function notifyOut(?source:Ext.dd.IDragSource, ?e:Event, ?data:Dynamic):Void;
	@:optional
	function notifyOver(?source:Ext.dd.IDragSource, ?e:Event, ?data:Dynamic):String;
	@:optional
	function onContainerDrop(?source:Ext.dd.IDragSource, ?e:Event, ?data:Dynamic):Bool;
	@:optional
	function onContainerOver(?source:Ext.dd.IDragSource, ?e:Event, ?data:Dynamic):String;
	@:optional
	function onNodeDrop(?nodeData:Dynamic, ?source:Ext.dd.IDragSource, ?e:Event, ?data:Dynamic):Bool;
	@:optional
	function onNodeEnter(?nodeData:Dynamic, ?source:Ext.dd.IDragSource, ?e:Event, ?data:Dynamic):Void;
	@:optional
	function onNodeOut(?nodeData:Dynamic, ?source:Ext.dd.IDragSource, ?e:Event, ?data:Dynamic):Void;
	@:optional
	function onNodeOver(?nodeData:Dynamic, ?source:Ext.dd.IDragSource, ?e:Event, ?data:Dynamic):String;
};
typedef IRegistry = {
	>Ext.IBase,
};
extern class Registry {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function getHandle(?id:Dynamic):Dynamic;
	static function getHandleFromEvent(?e:Event):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function getTarget(?id:Dynamic):Dynamic;
	static function getTargetFromEvent(?e:Event):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function register(?element:Dynamic, ?data:Dynamic):Void;
	static function statics():Ext.IClass;
	static function unregister(?element:Dynamic):Void;
}
typedef IScrollManager = {
	>Ext.IBase,
};
extern class ScrollManager {
	static var animDuration : Float;
	static var animate : Bool;
	static var ddGroup : String;
	static var frequency : Float;
	static var hthresh : Float;
	static var increment : Float;
	static var self : Ext.IClass;
	static var vthresh : Float;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function refreshCache():Void;
	static function register(?el:Dynamic):Void;
	static function statics():Ext.IClass;
	static function unregister(?el:Dynamic):Void;
}
typedef IStatusProxy = {
	>Ext.IComponent,
	@:optional
	var dropAllowed : String;
	@:optional
	var dropNotAllowed : String;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	function getGhost():Ext.IElement;
	@:optional
	function repair(?xy:Array<Float>, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function reset(?clearGhost:Bool):Void;
	@:optional
	function setStatus(?cssClass:String):Void;
	@:optional
	function stop():Void;
	@:optional
	function sync():Void;
	@:optional
	function update(?html:Dynamic):Void;
};
typedef IPanelProxy = {
	>Ext.IBase,
	@:optional
	var insertProxy : Bool;
	@:optional
	var moveOnDrag : Bool;
	@:optional
	var panel : Ext.panel.IPanel;
	@:optional
	function getEl():Ext.IElement;
	@:optional
	function getGhost():Ext.panel.IPanel;
	@:optional
	function getProxy():Ext.IElement;
	@:optional
	function hide():Void;
	@:optional
	function moveProxy(?parentNode:HTMLElement, ?before:HTMLElement):Void;
	@:optional
	function show():Void;
};
