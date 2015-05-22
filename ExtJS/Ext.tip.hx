typedef IQuickTip = {
	>Ext.tip.IToolTip,
	@:optional
	var interceptTitles : Bool;
	@:optional
	var target : Dynamic;
	@:optional
	var title : String;
	@:optional
	function cancelShow(?el:Dynamic):Void;
	@:optional
	function register(?config:Dynamic):Void;
	@:optional
	function unregister(?el:Dynamic):Void;
};
typedef IQuickTipManager = {
	>Ext.IBase,
};
extern class QuickTipManager {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function destroy():Void;
	static function disable():Void;
	static function enable():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function getQuickTip():Ext.tip.IQuickTip;
	static function init(?autoRender:Bool, ?config:Dynamic):Void;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function isEnabled():Bool;
	static function register(?config:Dynamic):Void;
	static function statics():Ext.IClass;
	static function tips(?config:Dynamic):Void;
	static function unregister(?el:Dynamic):Void;
}
typedef ITip = {
	>Ext.panel.IPanel,
	@:optional
	var autoRender : Dynamic;
	@:optional
	var baseCls : String;
	@:optional
	var closable : Bool;
	@:optional
	var closeAction : String;
	@:optional
	var constrainPosition : Bool;
	@:optional
	var defaultAlign : String;
	@:optional
	var floating : Bool;
	@:optional
	var focusOnToFront : Bool;
	@:optional
	var frameHeader : Bool;
	@:optional
	var hidden : Bool;
	@:optional
	var maxWidth : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var shadow : Dynamic;
	@:optional
	var width : Float;
};
typedef IToolTip = {
	>Ext.tip.ITip,
	@:optional
	var anchor : String;
	@:optional
	var anchorOffset : Float;
	@:optional
	var anchorToTarget : Bool;
	@:optional
	var autoHide : Bool;
	@:optional
	var delegate : String;
	@:optional
	var dismissDelay : Float;
	@:optional
	var hideDelay : Float;
	@:optional
	var mouseOffset : Array<Float>;
	@:optional
	var showDelay : Float;
	@:optional
	var target : Dynamic;
	@:optional
	var trackMouse : Bool;
	@:optional
	var triggerElement : HTMLElement;
	@:optional
	function setTarget(?t:Dynamic):Void;
};
