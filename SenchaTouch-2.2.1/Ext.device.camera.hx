typedef IAbstract = {
	>Ext.IBase,
	@:optional
	function capture(?options:Dynamic, ?scope:Dynamic, ?destination:String, ?encoding:String, ?width:Float, ?height:Float):Void;
};
typedef IPhoneGap = {
	>Ext.device.camera.IAbstract,
	@:optional
	function capture(?args:Dynamic):Void;
};
typedef ISencha = {
	>Ext.device.camera.IAbstract,
	@:optional
	function capture(?options:Dynamic):Void;
};
typedef ISimulator = {
	>Ext.device.camera.IAbstract,
	@:optional
	function capture(?options:Dynamic):Void;
	@:optional
	function getSamples():Array<Dynamic>;
	@:optional
	function setSamples(?samples:Array<Dynamic>):Void;
};
