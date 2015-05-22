typedef IAbstract = {
	>Ext.IBase,
	@:optional
	function broadcast(?message:String):Ext.IPromise;
	@:optional
	function connect(?receiverId:String):Ext.IPromise;
	@:optional
	function onConnect(?callback:Dynamic):Void;
	@:optional
	function onMessage(?callback:Dynamic):Void;
	@:optional
	function send(?receiverId:String, ?message:Dynamic, ?foreground:Bool):Ext.IPromise;
};
