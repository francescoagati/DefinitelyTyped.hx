typedef IImageExporter = {
	>Ext.IBase,
};
extern class ImageExporter {
	static var defaultUrl : String;
	static var heightParam : String;
	static var self : Ext.IClass;
	static var supportedTypes : Array<Dynamic>;
	static var svgParam : String;
	static var typeParam : String;
	static var widthParam : String;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function generate(?surface:Ext.draw.ISurface, ?config:Dynamic):Bool;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function statics():Ext.IClass;
}
typedef ISvg = {
	>Ext.draw.ISurface,
	@:optional
	function addCls(?sprite:Dynamic, ?className:Dynamic):Void;
	@:optional
	function addGradient(?gradient:Dynamic):Void;
	@:optional
	function applyZIndex(?sprite:Ext.draw.ISprite):Void;
	@:optional
	function destroy():Void;
	@:optional
	function getRegion():Ext.util.IRegion;
	@:optional
	function hasCls(?sprite:Ext.draw.ISprite, ?className:String):Bool;
	@:optional
	function removeCls(?sprite:Dynamic, ?className:Dynamic):Void;
	@:optional
	function setSize(?width:Dynamic, ?height:Dynamic):Void;
	@:optional
	function setText(?sprite:Dynamic, ?textString:Dynamic):Void;
};
typedef ISvgExporter = {
	>Ext.IBase,
};
extern class SvgExporter {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function generate(?surface:Ext.draw.ISurface, ?config:Dynamic):String;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function statics():Ext.IClass;
}
typedef IVml = {
	>Ext.draw.ISurface,
	@:optional
	function addCls(?sprite:Dynamic, ?className:Dynamic):Void;
	@:optional
	function addGradient(?gradient:Dynamic):Void;
	@:optional
	function destroy():Void;
	@:optional
	function removeCls(?sprite:Dynamic, ?className:Dynamic):Void;
	@:optional
	function setSize(?width:Dynamic, ?height:Dynamic):Void;
	@:optional
	function setText(?sprite:Dynamic, ?text:Dynamic):Void;
};
