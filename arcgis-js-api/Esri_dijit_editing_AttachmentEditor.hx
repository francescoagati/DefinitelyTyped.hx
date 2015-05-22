extern class AttachmentEditor {
	@:overload(function(params:Dynamic, srcNodeRef:String):Void { })
	function new(params:Dynamic, srcNodeRef:Node):Void;
	function showAttachments(graphic:Graphic, featureLayer:FeatureLayer):Void;
	function startup():Void;
}
