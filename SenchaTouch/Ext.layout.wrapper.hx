typedef IBoxDock = {
	>Ext.IBase,
	@:optional
	function destroy():Void;
	@:optional
	function getBodyElement():Dynamic;
	@:optional
	function getContainer():Dynamic;
	@:optional
	function getDirection():String;
	@:optional
	function getElement():Dynamic;
	@:optional
	function getInnerWrapper():Dynamic;
	@:optional
	function getSizeState():Bool;
	@:optional
	function setBodyElement(?bodyElement:Dynamic):Void;
	@:optional
	function setContainer(?container:Dynamic):Void;
	@:optional
	function setDirection(?direction:String):Void;
	@:optional
	function setElement(?element:Dynamic):Void;
	@:optional
	function setInnerWrapper(?innerWrapper:Dynamic):Void;
	@:optional
	function setSizeState(?sizeState:Bool):Void;
};
typedef IDock = {
	>Ext.IBase,
	@:optional
	function destroy():Void;
	@:optional
	function getBodyElement():Dynamic;
	@:optional
	function getContainer():Dynamic;
	@:optional
	function getDirection():String;
	@:optional
	function getElement():Dynamic;
	@:optional
	function getInnerWrapper():Dynamic;
	@:optional
	function getSizeState():Bool;
	@:optional
	function setBodyElement(?bodyElement:Dynamic):Void;
	@:optional
	function setContainer(?container:Dynamic):Void;
	@:optional
	function setDirection(?direction:String):Void;
	@:optional
	function setElement(?element:Dynamic):Void;
	@:optional
	function setInnerWrapper(?innerWrapper:Dynamic):Void;
	@:optional
	function setSizeState(?sizeState:Bool):Void;
};
typedef IInner = {
	>Ext.IBase,
	@:optional
	function getContainer():Dynamic;
	@:optional
	function getSizeState():Dynamic;
	@:optional
	function setContainer(?container:Dynamic):Void;
	@:optional
	function setSizeState(?sizeState:Dynamic):Void;
};
