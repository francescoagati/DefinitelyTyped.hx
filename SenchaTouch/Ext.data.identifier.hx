typedef ISequential = {
	>Ext.data.identifier.ISimple,
	@:optional
	var prefix : String;
	@:optional
	var seed : Float;
	@:optional
	function getPrefix():String;
	@:optional
	function getSeed():Float;
	@:optional
	function setPrefix(?prefix:String):Void;
	@:optional
	function setSeed(?seed:Float):Void;
};
typedef ISimple = {
	>Ext.IBase,
	@:optional
	function getPrefix():String;
	@:optional
	function setPrefix(?prefix:String):Void;
};
typedef IUuid = {
	>Ext.data.identifier.ISimple,
	@:optional
	var id : Dynamic;
	@:optional
	var version : Float;
	@:optional
	var salt : Dynamic;
	@:optional
	var timestamp : Dynamic;
	@:optional
	function getId():Dynamic;
	@:optional
	function getVersion():Float;
	@:optional
	function reconfigure(?config:Dynamic):Void;
	@:optional
	function setId(?id:Dynamic):Void;
	@:optional
	function setVersion(?version:Float):Void;
};
