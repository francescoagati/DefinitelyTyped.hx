typedef IAbstract = {
	>Ext.IBase,
	@:optional
	function compose(?config:Dynamic):Void;
	@:optional
	function getMentions(?config:Dynamic):Void;
	@:optional
	function getPublicTimeline(?config:Dynamic):Void;
	@:optional
	function getTwitterRequest(?config:Dynamic):Void;
	@:optional
	function getTwitterUsername(?config:Dynamic):Void;
};
typedef ICordova = {
	>Ext.IBase,
};
