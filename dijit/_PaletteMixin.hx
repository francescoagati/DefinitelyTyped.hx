extern class __Dye {
	function new(alias:String, row:Dynamic, col:Dynamic):Void;
	function fillCell(cell:HTMLElement, blankGif:String):Void;
	function getValue():Void;
}
extern class _TemplatedMixin extends dijit._AttachMixin {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attachScope : Dynamic;
	var searchContainerNode : Bool;
	var templatePath : String;
	var templateString : String;
	function buildRendering():Void;
	function destroyRendering():Void;
	function getCachedTemplate(templateString:String, alwaysUseString:Bool, doc:HTMLDocument):Dynamic;
}
