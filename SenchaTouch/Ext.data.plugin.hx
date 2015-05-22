typedef IBuffered = {
	>Ext.IEvented,
	@:optional
	var leadingBufferZone : Float;
	@:optional
	var purgePageCount : Float;
	@:optional
	var trailingBufferZone : Float;
	@:optional
	function getBufferedCollection():Dynamic;
	@:optional
	function getLeadingBufferZone():Float;
	@:optional
	function getPageFromRecordIndex(?index:Float):Float;
	@:optional
	function getPurgePageCount():Float;
	@:optional
	function getStore():Dynamic;
	@:optional
	function getTrailingBufferZone():Float;
	@:optional
	function getViewSize():Float;
	@:optional
	function prefetch(?options:Dynamic):Void;
	@:optional
	function prefetchPage(?page:Float, ?options:Dynamic):Void;
	@:optional
	function setBufferedCollection(?bufferedCollection:Dynamic):Void;
	@:optional
	function setLeadingBufferZone(?leadingBufferZone:Float):Void;
	@:optional
	function setPurgePageCount(?purgePageCount:Float):Void;
	@:optional
	function setStore(?store:Dynamic):Void;
	@:optional
	function setTrailingBufferZone(?trailingBufferZone:Float):Void;
	@:optional
	function setViewSize(?viewSize:Float):Void;
};
