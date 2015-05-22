typedef IAbstract = {
	>Ext.IBase,
	@:optional
	function captureAudio(?config:Dynamic):Void;
	@:optional
	function captureVideo(?config:Dynamic):Void;
};
typedef ISimulator = {
	>Ext.IBase,
	@:optional
	function captureAudio(?config:Dynamic):Void;
	@:optional
	function captureVideo(?config:Dynamic):Void;
};
typedef ICordova = {
	>Ext.IBase,
};
