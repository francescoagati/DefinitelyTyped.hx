extern class DrawingTopLevel {
	static function align(elements:Dynamic, rect:kendo.geometry.Rect, alignment:String):Void;
	static function drawDOM(element:HTMLElement):JQueryPromise<Dynamic>;
	static function exportImage(group:kendo.drawing.Group, options:Dynamic):JQueryPromise<Dynamic>;
	static function exportPDF(group:kendo.drawing.Group, options:kendo.drawing.PDFOptions):JQueryPromise<Dynamic>;
	static function exportSVG(group:kendo.drawing.Group, options:Dynamic):JQueryPromise<Dynamic>;
	static function fit(element:kendo.drawing.Element, rect:kendo.geometry.Rect):Void;
	static function stack(elements:Dynamic):Void;
	static function vAlign(elements:Dynamic, rect:kendo.geometry.Rect, alignment:String):Void;
	static function vStack(elements:Dynamic):Void;
	static function vWrap(elements:Dynamic, rect:kendo.geometry.Rect):Dynamic;
	static function wrap(elements:Dynamic, rect:kendo.geometry.Rect):Dynamic;
}
