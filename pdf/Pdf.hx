typedef PDFPromise<T> = {
	function isResolved():Bool;
	function isRejected():Bool;
	function resolve(value:T):Void;
	function reject(reason:String):Void;
	function then(onResolve:T -> Void, ?onReject:String -> Void):PDFPromise<T>;
};
typedef PDFTreeNode = {
	var title : String;
	var bold : Bool;
	var italic : Bool;
	var color : Array<Float>;
	var dest : Dynamic;
	var items : Array<PDFTreeNode>;
};
typedef PDFInfo = {
	var PDFFormatVersion : String;
	var IsAcroFormPresent : Bool;
	var IsXFAPresent : Bool;
};
typedef PDFMetadata = {
	function parse():Void;
	function get(name:String):String;
	function has(name:String):Bool;
};
typedef PDFSource = {
	@:optional
	var url : String;
	@:optional
	var data : Uint8Array;
	@:optional
	var httpHeaders : Dynamic;
	@:optional
	var password : String;
};
typedef PDFProgressData = {
	var loaded : Float;
	var total : Float;
};
typedef PDFDocumentProxy = {
	var numPages : Float;
	var fingerprint : String;
	function embeddedFontsUsed():Bool;
	function getPage(number:Float):PDFPromise<PDFPageProxy>;
	function getDestinations():PDFPromise<Array<Dynamic>>;
	function getJavaScript():PDFPromise<Array<String>>;
	function getOutline():PDFPromise<Array<PDFTreeNode>>;
	function getMetadata():PDFPromise<{ var info : PDFInfo; var metadata : PDFMetadata; }>;
	function isEncrypted():PDFPromise<Bool>;
	function getData():PDFPromise<Uint8Array>;
	function dataLoaded():PDFPromise<Array<Dynamic>>;
	function destroy():Void;
};
typedef PDFRef = {
	var num : Float;
	var gen : Dynamic;
};
typedef PDFPageViewportOptions = {
	var viewBox : Dynamic;
	var scale : Float;
	var rotation : Float;
	var offsetX : Float;
	var offsetY : Float;
	var dontFlip : Bool;
};
typedef PDFPageViewport = {
	var width : Float;
	var height : Float;
	var fontScale : Float;
	var transforms : Array<Float>;
	function clone(options:PDFPageViewportOptions):PDFPageViewport;
	function convertToViewportPoint():Array<Float>;
	function convertToViewportRectangle():Array<Float>;
	function convertToPdfPoint():Array<Float>;
};
typedef PDFAnnotationData = {
	var subtype : String;
	var rect : Array<Float>;
	var annotationFlags : Dynamic;
	var color : Array<Float>;
	var borderWidth : Float;
	var hasAppearance : Bool;
};
typedef PDFAnnotations = {
	function getData():PDFAnnotationData;
	function hasHtml():Bool;
	function getHtmlElement(commonOjbs:Dynamic):HTMLElement;
	function getEmptyContainer(tagName:String, rect:Array<Float>):HTMLElement;
	function isViewable():Bool;
	function loadResources(keys:Dynamic):PDFPromise<Dynamic>;
	function getOperatorList(evaluator:Dynamic):PDFPromise<Dynamic>;
};
typedef PDFRenderTextLayer = {
	function beginLayout():Void;
	function endLayout():Void;
	function appendText():Void;
};
typedef PDFRenderImageLayer = {
	function beginLayout():Void;
	function endLayout():Void;
	function appendImage():Void;
};
typedef PDFRenderParams = {
	var canvasContext : CanvasRenderingContext2D;
	@:optional
	var textLayer : PDFRenderTextLayer;
	@:optional
	var imageLayer : PDFRenderImageLayer;
	@:optional
	var continueCallback : Void -> Void -> Void;
};
typedef PDFViewerParams = {
	var container : HTMLElement;
	@:optional
	var viewer : HTMLElement;
};
typedef PDFRenderTask = {
	>PDFPromise<PDFPageProxy>,
	function cancel():Void;
};
typedef PDFPageProxy = {
	function pageNumber():Float;
	function rotate():Float;
	function ref():PDFRef;
	function view():Array<Float>;
	function getViewport(scale:Float, ?rotate:Float):PDFPageViewport;
	function getAnnotations():PDFPromise<PDFAnnotations>;
	function render(params:PDFRenderParams):PDFRenderTask;
	function getTextContent():PDFPromise<TextContent>;
	function destroy():Void;
};
typedef TextContentItem = {
	var str : String;
	var transform : Array<Float>;
	var width : Float;
	var height : Float;
	var dir : String;
	var fontName : String;
};
typedef TextContent = {
	var items : Array<TextContentItem>;
	var styles : Dynamic;
};
typedef PDFObjects = {
	function get(objId:Dynamic, ?callback:Dynamic):Dynamic;
	function resolve(objId:Dynamic, data:Dynamic):Dynamic;
	function isResolved(objId:Dynamic):Bool;
	function hasData(objId:Dynamic):Bool;
	function getData(objId:Dynamic):Dynamic;
	function clear():Void;
};
typedef PDFJSStatic = {
	var maxImageSize : Float;
	var disableFontFace : Bool;
	@:overload(function(source:Uint8Array, ?pdfDataRangeTransport:Dynamic, ?passwordCallback:String -> Void -> String -> String, ?progressCallback:PDFProgressData -> Void):PDFPromise<PDFDocumentProxy> { })
	@:overload(function(source:PDFSource, ?pdfDataRangeTransport:Dynamic, ?passwordCallback:String -> Void -> String -> String, ?progressCallback:PDFProgressData -> Void):PDFPromise<PDFDocumentProxy> { })
	function getDocument(source:String, ?pdfDataRangeTransport:Dynamic, ?passwordCallback:String -> Void -> String -> String, ?progressCallback:PDFProgressData -> Void):PDFPromise<PDFDocumentProxy>;
	function PDFViewer(params:PDFViewerParams):Void;
};
extern class PdfTopLevel {
	static var PDFJS : PDFJSStatic;
}
