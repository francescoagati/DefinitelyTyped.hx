typedef IPointStatic = {
	function new(?row:Float, ?column:Float):IPoint;
	@:overload(function(object:Array<Float>):IPoint { })
	@:overload(function(object:{ var row : Float; var column : Float; }):IPoint { })
	function fromObject(point:IPoint, ?copy:Bool):IPoint;
	@:overload(function(point1:Array<Float>, point2:IPoint):IPoint { })
	@:overload(function(point1:{ var row : Float; var column : Float; }, point2:IPoint):IPoint { })
	@:overload(function(point1:IPoint, point2:Array<Float>):IPoint { })
	@:overload(function(point1:Array<Float>, point2:Array<Float>):IPoint { })
	@:overload(function(point1:{ var row : Float; var column : Float; }, point2:Array<Float>):IPoint { })
	@:overload(function(point1:IPoint, point2:{ var row : Float; var column : Float; }):IPoint { })
	@:overload(function(point1:Array<Float>, point2:{ var row : Float; var column : Float; }):IPoint { })
	@:overload(function(point1:{ var row : Float; var column : Float; }, point2:{ var row : Float; var column : Float; }):IPoint { })
	function min(point1:IPoint, point2:IPoint):IPoint;
};
typedef IPoint = {
	var constructor : IPointStatic;
	var row : Float;
	var column : Float;
	function copy():IPoint;
	function freeze():IPoint;
	@:overload(function(delta:Array<Float>):IPoint { })
	@:overload(function(delta:{ var row : Float; var column : Float; }):IPoint { })
	function translate(delta:IPoint):IPoint;
	@:overload(function(other:Array<Float>):IPoint { })
	@:overload(function(other:{ var row : Float; var column : Float; }):IPoint { })
	function add(other:IPoint):IPoint;
	function splitAt(column:Float):Array<IPoint>;
	function compare(other:IPoint):Float;
	function isEqual(other:IPoint):Bool;
	function isLessThan(other:IPoint):Bool;
	function isLessThanOrEqual(other:IPoint):Bool;
	function isGreaterThan(other:IPoint):Bool;
	function isGreaterThanOrEqual(other:IPoint):Bool;
	function toArray():Array<Float>;
	function serialize():Array<Float>;
};
typedef IRangeStatic = {
	function deserialize(array:Array<IPoint>):IRange;
	@:overload(function(object:IRange, ?copy:Bool):IRange { })
	@:overload(function(object:{ var start : IPoint; var end : IPoint; }):IRange { })
	@:overload(function(object:{ var start : Array<Float>; var end : IPoint; }):IRange { })
	@:overload(function(object:{ var start : { var row : Float; var column : Float; }; var end : IPoint; }):IRange { })
	@:overload(function(object:{ var start : IPoint; var end : Array<Float>; }):IRange { })
	@:overload(function(object:{ var start : Array<Float>; var end : Array<Float>; }):IRange { })
	@:overload(function(object:{ var start : { var row : Float; var column : Float; }; var end : Array<Float>; }):IRange { })
	@:overload(function(object:{ var start : IPoint; var end : { var row : Float; var column : Float; }; }):IRange { })
	@:overload(function(object:{ var start : Array<Float>; var end : { var row : Float; var column : Float; }; }):IRange { })
	@:overload(function(object:{ var start : { var row : Float; var column : Float; }; var end : { var row : Float; var column : Float; }; }):IRange { })
	function fromObject(object:Array<IPoint>):IRange;
	@:overload(function(point:Array<Float>, text:String):IRange { })
	@:overload(function(point:{ var row : Float; var column : Float; }, text:String):IRange { })
	@:overload(function(text:String):IRange { })
	function fromText(point:IPoint, text:String):IRange;
	@:overload(function(startPoint:Array<Float>, rowDelta:Float, columnDelta:Float):IRange { })
	@:overload(function(startPoint:{ var row : Float; var column : Float; }, rowDelta:Float, columnDelta:Float):IRange { })
	function fromPointWithDelta(startPoint:IPoint, rowDelta:Float, columnDelta:Float):IRange;
	@:overload(function(point1:Array<Float>, point2:IPoint):IRange { })
	@:overload(function(point1:{ var row : Float; var column : Float; }, point2:IPoint):IRange { })
	@:overload(function(point1:IPoint, point2:Array<Float>):IRange { })
	@:overload(function(point1:Array<Float>, point2:Array<Float>):IRange { })
	@:overload(function(point1:{ var row : Float; var column : Float; }, point2:Array<Float>):IRange { })
	@:overload(function(point1:IPoint, point2:{ var row : Float; var column : Float; }):IRange { })
	@:overload(function(point1:Array<Float>, point2:{ var row : Float; var column : Float; }):IRange { })
	@:overload(function(point1:{ var row : Float; var column : Float; }, point2:{ var row : Float; var column : Float; }):IRange { })
	function new(point1:IPoint, point2:IPoint):IRange;
};
typedef IRange = {
	var constructor : IRangeStatic;
	var start : IPoint;
	var end : IPoint;
	function serialize():Array<Array<Float>>;
	function copy():IRange;
	function freeze():IRange;
	@:overload(function(other:Array<IPoint>):Bool { })
	function isEqual(other:IRange):Bool;
	@:overload(function(object:{ var start : IPoint; var end : IPoint; }):Float { })
	@:overload(function(object:{ var start : Array<Float>; var end : IPoint; }):Float { })
	@:overload(function(object:{ var start : { var row : Float; var column : Float; }; var end : IPoint; }):Float { })
	@:overload(function(object:{ var start : IPoint; var end : Array<Float>; }):Float { })
	@:overload(function(object:{ var start : Array<Float>; var end : Array<Float>; }):Float { })
	@:overload(function(object:{ var start : { var row : Float; var column : Float; }; var end : Array<Float>; }):Float { })
	@:overload(function(object:{ var start : IPoint; var end : { var row : Float; var column : Float; }; }):Float { })
	@:overload(function(object:{ var start : Array<Float>; var end : { var row : Float; var column : Float; }; }):Float { })
	@:overload(function(object:{ var start : { var row : Float; var column : Float; }; var end : { var row : Float; var column : Float; }; }):Float { })
	function compare(object:Array<IPoint>):Float;
	function isSingleLine():Bool;
	function coversSameRows(other:IRange):Bool;
	@:overload(function(object:{ var start : IPoint; var end : IPoint; }):IRange { })
	@:overload(function(object:{ var start : Array<Float>; var end : IPoint; }):IRange { })
	@:overload(function(object:{ var start : { var row : Float; var column : Float; }; var end : IPoint; }):IRange { })
	@:overload(function(object:{ var start : IPoint; var end : Array<Float>; }):IRange { })
	@:overload(function(object:{ var start : Array<Float>; var end : Array<Float>; }):IRange { })
	@:overload(function(object:{ var start : { var row : Float; var column : Float; }; var end : Array<Float>; }):IRange { })
	@:overload(function(object:{ var start : IPoint; var end : { var row : Float; var column : Float; }; }):IRange { })
	@:overload(function(object:{ var start : Array<Float>; var end : { var row : Float; var column : Float; }; }):IRange { })
	@:overload(function(object:{ var start : { var row : Float; var column : Float; }; var end : { var row : Float; var column : Float; }; }):IRange { })
	function add(object:Array<IPoint>):IRange;
	@:overload(function(startPoint:IPoint):IRange { })
	function translate(startPoint:IPoint, endPoint:IPoint):IRange;
	function intersectsWith(otherRange:IRange):Bool;
	function containsRange(otherRange:IRange, exclusive:Bool):Bool;
	@:overload(function(point:Array<Float>, exclusive:Bool):Bool { })
	@:overload(function(point:{ var row : Float; var column : Float; }, exclusive:Bool):Bool { })
	function containsPoint(point:IPoint, exclusive:Bool):Bool;
	function intersectsRow(row:Float):Bool;
	function intersectsRowRange(startRow:Float, endRow:Float):Bool;
	function union(otherRange:IRange):IRange;
	function isEmpty():Bool;
	function toDelta():IPoint;
	function getRowCount():Float;
	function getRows():Array<Float>;
};
typedef IHistory = { };
typedef IMarkerManager = { };
typedef IMarker = { };
typedef IBufferPatch = { };
typedef ITextBufferStatic = {
	var Point : IPointStatic;
	var Range : IRangeStatic;
	var newlineRegex : Dynamic;
	@:overload(function(params:Dynamic):ITextBuffer { })
	function new(text:String):ITextBuffer;
};
typedef ITextBuffer = {
	>Emissary.IEmitter,
	>Emissary.ISubscriber,
	var cachedText : String;
	var stoppedChangingDelay : Float;
	var stoppedChangingTimeout : Dynamic;
	var cachedDiskContents : String;
	var conflict : Bool;
	var file : Dynamic;
	var refcount : Float;
	var lines : Array<String>;
	var lineEndings : Array<String>;
	var offsetIndex : Dynamic;
	var history : IHistory;
	var markers : IMarkerManager;
	var loaded : Bool;
	var digestWhenLastPersisted : String;
	var modifiedWhenLastPersisted : Bool;
	var useSerializedText : Bool;
	function deserializeParams(params:Dynamic):Dynamic;
	function serializeParams():Dynamic;
	function getText():String;
	function getLines():String;
	function isEmpty():Bool;
	function getLineCount():Float;
	function getLastRow():Float;
	function lineForRow(row:Float):String;
	function getLastLine():String;
	function lineEndingForRow(row:Float):String;
	function lineLengthForRow(row:Float):Float;
	function setText(text:String):IRange;
	function setTextViaDiff(text:Dynamic):Array<Dynamic>;
	function setTextInRange(range:IRange, text:String, ?normalizeLineEndings:Bool):IRange;
	function insert(position:IPoint, text:String, ?normalizeLineEndings:Bool):IRange;
	function append(text:String, ?normalizeLineEndings:Bool):IRange;
	function delete(range:IRange):IRange;
	function deleteRow(row:Float):IRange;
	function deleteRows(startRow:Float, endRow:Float):IRange;
	function buildPatch(oldRange:IRange, newText:String, ?normalizeLineEndings:Bool):IBufferPatch;
	function applyPatch(patch:IBufferPatch):Dynamic;
	function getTextInRange(range:IRange):String;
	function clipRange(range:IRange):IRange;
	function clipPosition(position:IPoint):IPoint;
	function getFirstPosition():IPoint;
	function getEndPosition():IPoint;
	function getRange():IRange;
	function rangeForRow(row:Float, ?includeNewline:Bool):IRange;
	function characterIndexForPosition(position:IPoint):Float;
	function positionForCharacterIndex(offset:Float):IPoint;
	function getMaxCharacterIndex():Float;
	function loadSync():ITextBuffer;
	function load():Q.IPromise<ITextBuffer>;
	function finishLoading():ITextBuffer;
	function handleTextChange(event:Dynamic):Dynamic;
	function destroy():Dynamic;
	function isAlive():Bool;
	function isDestroyed():Bool;
	function isRetained():Bool;
	function retain():ITextBuffer;
	function release():ITextBuffer;
	function subscribeToFile():Dynamic;
	function hasMultipleEditors():Bool;
	function reload():Dynamic;
	function updateCachedDiskContentsSync():String;
	function updateCachedDiskContents():Q.IPromise<String>;
	function getBaseName():String;
	function getPath():String;
	function getUri():String;
	function setPath(filePath:String):Dynamic;
	function save():Void;
	function saveAs(filePath:String):Dynamic;
	function isModified():Bool;
	function isInConflict():Bool;
	function destroyMarker(id:Dynamic):Dynamic;
	function matchesInCharacterRange(regex:Dynamic, startIndex:Dynamic, endIndex:Dynamic):Array<Dynamic>;
	function scan(regex:Dynamic, iterator:Dynamic):Dynamic;
	function backwardsScan(regex:Dynamic, iterator:Dynamic):Dynamic;
	function replace(regex:Dynamic, replacementText:Dynamic):Dynamic;
	function scanInRange(regex:Dynamic, range:Dynamic, iterator:Dynamic, reverse:Dynamic):Dynamic;
	function backwardsScanInRange(regex:Dynamic, range:Dynamic, iterator:Dynamic):Dynamic;
	function isRowBlank(row:Float):Bool;
	function previousNonBlankRow(startRow:Float):Float;
	function nextNonBlankRow(startRow:Float):Float;
	function usesSoftTabs():Bool;
	function cancelStoppedChangingTimeout():Dynamic;
	function scheduleModifiedEvents():Dynamic;
	function emitModifiedStatusChanged(modifiedStatus:Dynamic):Dynamic;
	function logLines(start:Float, end:Float):Void;
	function undo():Dynamic;
	function redo():Dynamic;
	function transact(fn:haxe.Constraints.Function):Dynamic;
	function beginTransaction():Dynamic;
	function commitTransaction():Dynamic;
	function abortTransaction():Dynamic;
	function clearUndoStack():Dynamic;
	function markRange(range:Dynamic, properties:Dynamic):Dynamic;
	function markPosition(range:Dynamic, properties:Dynamic):Dynamic;
	function getMarker(id:Float):IMarker;
	function getMarkers():Array<IMarker>;
	function getMarkerCount():Float;
};
