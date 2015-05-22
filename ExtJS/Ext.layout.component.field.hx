typedef IComboBox = {
	>Ext.layout.component.field.ITrigger,
};
typedef IField = {
	>Ext.layout.component.IAuto,
	@:optional
	var elementId : Dynamic;
	@:optional
	var errorStrategies : Dynamic;
	@:optional
	var labelStrategies : Dynamic;
	@:optional
	var left : Dynamic;
	@:optional
	var qtip : Dynamic;
	@:optional
	var right : Dynamic;
	@:optional
	var side : Dynamic;
	@:optional
	var title : Dynamic;
	@:optional
	var top : Dynamic;
	@:optional
	var under : Dynamic;
	@:optional
	function beginLayout(?ownerContext:Dynamic):Void;
	@:optional
	function beginLayoutCycle(?ownerContext:Dynamic):Void;
	@:optional
	function finishedLayout(?ownerContext:Dynamic):Void;
	@:optional
	function getErrorStrategy():Void;
	@:optional
	function getLabelStrategy():Void;
};
extern class Field {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function destroyTip():Void;
	static function getName():String;
	static function implement():Void;
	static function initTip():Void;
	static function override(?members:Dynamic):Ext.IBase;
}
typedef IFieldContainer = {
	>Ext.layout.component.field.IField,
	@:optional
	function beginLayout(?ownerContext:Dynamic):Void;
};
typedef IHtmlEditor = {
	>Ext.layout.component.field.IFieldContainer,
	@:optional
	function beginLayout(?ownerContext:Dynamic):Void;
	@:optional
	function beginLayoutCycle(?ownerContext:Dynamic):Void;
	@:optional
	function finishedLayout():Void;
};
typedef ISlider = {
	>Ext.layout.component.field.IField,
	@:optional
	function beginLayout(?ownerContext:Dynamic):Void;
};
typedef IText = {
	>Ext.layout.component.field.IField,
	@:optional
	function beginLayoutCycle(?ownerContext:Dynamic):Void;
};
typedef ITextArea = {
	>Ext.layout.component.field.IText,
	@:optional
	function beginLayout(?ownerContext:Dynamic):Void;
};
typedef ITrigger = {
	>Ext.layout.component.field.IField,
	@:optional
	function beginLayout(?ownerContext:Dynamic):Void;
	@:optional
	function beginLayoutCycle(?ownerContext:Dynamic):Void;
};
