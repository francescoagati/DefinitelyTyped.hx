typedef IComponentDelegation = {
	>Ext.event.publisher.IPublisher,
};
typedef IComponentPaint = {
	>Ext.event.publisher.IPublisher,
};
typedef IComponentSize = {
	>Ext.event.publisher.IPublisher,
};
typedef IDom = {
	>Ext.event.publisher.IPublisher,
};
typedef IElementPaint = {
	>Ext.event.publisher.IPublisher,
};
typedef IElementSize = {
	>Ext.event.publisher.IPublisher,
};
typedef IPublisher = {
	>Ext.IBase,
};
typedef ITouchGesture = {
	>Ext.event.publisher.IDom,
	@:optional
	function getMoveThrottle():Float;
	@:optional
	function getRecognizers():Dynamic;
	@:optional
	function setMoveThrottle(?moveThrottle:Float):Void;
	@:optional
	function setRecognizers(?recognizers:Dynamic):Void;
};
