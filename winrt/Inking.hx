@:enum abstract InkManipulationMode(Int) {
	var inking = 0;
	var erasing = 1;
	var selecting = 2;
}
@:enum abstract InkRecognitionTarget(Int) {
	var all = 0;
	var selected = 1;
	var recent = 2;
}
@:enum abstract PenTipShape(Int) {
	var circle = 0;
	var rectangle = 1;
}
typedef IInkDrawingAttributes = {
	var color : Windows.UI.Color;
	var fitToCurve : Bool;
	var ignorePressure : Bool;
	var penTip : Windows.UI.Input.Inking.PenTipShape;
	var size : Windows.Foundation.Size;
};
extern class InkDrawingAttributes {
	var color : Windows.UI.Color;
	var fitToCurve : Bool;
	var ignorePressure : Bool;
	var penTip : Windows.UI.Input.Inking.PenTipShape;
	var size : Windows.Foundation.Size;
}
typedef IInkStrokeRenderingSegment = {
	var bezierControlPoint1 : Windows.Foundation.Point;
	var bezierControlPoint2 : Windows.Foundation.Point;
	var position : Windows.Foundation.Point;
	var pressure : Float;
	var tiltX : Float;
	var tiltY : Float;
	var twist : Float;
};
extern class InkStrokeRenderingSegment {
	var bezierControlPoint1 : Windows.Foundation.Point;
	var bezierControlPoint2 : Windows.Foundation.Point;
	var position : Windows.Foundation.Point;
	var pressure : Float;
	var tiltX : Float;
	var tiltY : Float;
	var twist : Float;
}
typedef IInkStroke = {
	var boundingRect : Windows.Foundation.Rect;
	var drawingAttributes : Windows.UI.Input.Inking.InkDrawingAttributes;
	var recognized : Bool;
	var selected : Bool;
	function getRenderingSegments():Windows.Foundation.Collections.IVectorView<Windows.UI.Input.Inking.InkStrokeRenderingSegment>;
	function clone():Windows.UI.Input.Inking.InkStroke;
};
extern class InkStroke {
	var boundingRect : Windows.Foundation.Rect;
	var drawingAttributes : Windows.UI.Input.Inking.InkDrawingAttributes;
	var recognized : Bool;
	var selected : Bool;
	function getRenderingSegments():Windows.Foundation.Collections.IVectorView<Windows.UI.Input.Inking.InkStrokeRenderingSegment>;
	function clone():Windows.UI.Input.Inking.InkStroke;
}
typedef IInkStrokeBuilder = {
	function beginStroke(pointerPoint:Windows.UI.Input.PointerPoint):Void;
	function appendToStroke(pointerPoint:Windows.UI.Input.PointerPoint):Windows.UI.Input.PointerPoint;
	function endStroke(pointerPoint:Windows.UI.Input.PointerPoint):Windows.UI.Input.Inking.InkStroke;
	function createStroke(points:Windows.Foundation.Collections.IIterable<Windows.Foundation.Point>):Windows.UI.Input.Inking.InkStroke;
	function setDefaultDrawingAttributes(drawingAttributes:Windows.UI.Input.Inking.InkDrawingAttributes):Void;
};
extern class InkStrokeBuilder {
	function beginStroke(pointerPoint:Windows.UI.Input.PointerPoint):Void;
	function appendToStroke(pointerPoint:Windows.UI.Input.PointerPoint):Windows.UI.Input.PointerPoint;
	function endStroke(pointerPoint:Windows.UI.Input.PointerPoint):Windows.UI.Input.Inking.InkStroke;
	function createStroke(points:Windows.Foundation.Collections.IIterable<Windows.Foundation.Point>):Windows.UI.Input.Inking.InkStroke;
	function setDefaultDrawingAttributes(drawingAttributes:Windows.UI.Input.Inking.InkDrawingAttributes):Void;
}
typedef IInkRecognitionResult = {
	var boundingRect : Windows.Foundation.Rect;
	function getTextCandidates():Windows.Foundation.Collections.IVectorView<String>;
	function getStrokes():Windows.Foundation.Collections.IVectorView<Windows.UI.Input.Inking.InkStroke>;
};
extern class InkRecognitionResult {
	var boundingRect : Windows.Foundation.Rect;
	function getTextCandidates():Windows.Foundation.Collections.IVectorView<String>;
	function getStrokes():Windows.Foundation.Collections.IVectorView<Windows.UI.Input.Inking.InkStroke>;
}
typedef IInkStrokeContainer = {
	var boundingRect : Windows.Foundation.Rect;
	function addStroke(stroke:Windows.UI.Input.Inking.InkStroke):Void;
	function deleteSelected():Windows.Foundation.Rect;
	function moveSelected(translation:Windows.Foundation.Point):Windows.Foundation.Rect;
	function selectWithPolyLine(polyline:Windows.Foundation.Collections.IIterable<Windows.Foundation.Point>):Windows.Foundation.Rect;
	function selectWithLine(from:Windows.Foundation.Point, to:Windows.Foundation.Point):Windows.Foundation.Rect;
	function copySelectedToClipboard():Void;
	function pasteFromClipboard(position:Windows.Foundation.Point):Windows.Foundation.Rect;
	function canPasteFromClipboard():Bool;
	function loadAsync(inputStream:Windows.Storage.Streams.IInputStream):Windows.Foundation.IAsyncActionWithProgress<Float>;
	function saveAsync(outputStream:Windows.Storage.Streams.IOutputStream):Windows.Foundation.IAsyncOperationWithProgress<Float, Float>;
	function updateRecognitionResults(recognitionResults:Windows.Foundation.Collections.IVectorView<Windows.UI.Input.Inking.InkRecognitionResult>):Void;
	function getStrokes():Windows.Foundation.Collections.IVectorView<Windows.UI.Input.Inking.InkStroke>;
	function getRecognitionResults():Windows.Foundation.Collections.IVectorView<Windows.UI.Input.Inking.InkRecognitionResult>;
};
extern class InkStrokeContainer {
	var boundingRect : Windows.Foundation.Rect;
	function addStroke(stroke:Windows.UI.Input.Inking.InkStroke):Void;
	function deleteSelected():Windows.Foundation.Rect;
	function moveSelected(translation:Windows.Foundation.Point):Windows.Foundation.Rect;
	function selectWithPolyLine(polyline:Windows.Foundation.Collections.IIterable<Windows.Foundation.Point>):Windows.Foundation.Rect;
	function selectWithLine(from:Windows.Foundation.Point, to:Windows.Foundation.Point):Windows.Foundation.Rect;
	function copySelectedToClipboard():Void;
	function pasteFromClipboard(position:Windows.Foundation.Point):Windows.Foundation.Rect;
	function canPasteFromClipboard():Bool;
	function loadAsync(inputStream:Windows.Storage.Streams.IInputStream):Windows.Foundation.IAsyncActionWithProgress<Float>;
	function saveAsync(outputStream:Windows.Storage.Streams.IOutputStream):Windows.Foundation.IAsyncOperationWithProgress<Float, Float>;
	function updateRecognitionResults(recognitionResults:Windows.Foundation.Collections.IVectorView<Windows.UI.Input.Inking.InkRecognitionResult>):Void;
	function getStrokes():Windows.Foundation.Collections.IVectorView<Windows.UI.Input.Inking.InkStroke>;
	function getRecognitionResults():Windows.Foundation.Collections.IVectorView<Windows.UI.Input.Inking.InkRecognitionResult>;
}
typedef IInkRecognizer = {
	var name : String;
};
extern class InkRecognizer {
	var name : String;
}
typedef IInkRecognizerContainer = {
	function setDefaultRecognizer(recognizer:Windows.UI.Input.Inking.InkRecognizer):Void;
	function recognizeAsync(strokeCollection:Windows.UI.Input.Inking.InkStrokeContainer, recognitionTarget:Windows.UI.Input.Inking.InkRecognitionTarget):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.UI.Input.Inking.InkRecognitionResult>>;
	function getRecognizers():Windows.Foundation.Collections.IVectorView<Windows.UI.Input.Inking.InkRecognizer>;
};
extern class InkRecognizerContainer {
	function setDefaultRecognizer(recognizer:Windows.UI.Input.Inking.InkRecognizer):Void;
	function recognizeAsync(strokeCollection:Windows.UI.Input.Inking.InkStrokeContainer, recognitionTarget:Windows.UI.Input.Inking.InkRecognitionTarget):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.UI.Input.Inking.InkRecognitionResult>>;
	function getRecognizers():Windows.Foundation.Collections.IVectorView<Windows.UI.Input.Inking.InkRecognizer>;
}
typedef IInkManager = {
	>Windows.UI.Input.Inking.IInkStrokeContainer,
	>Windows.UI.Input.Inking.IInkRecognizerContainer,
	var mode : Windows.UI.Input.Inking.InkManipulationMode;
	function processPointerDown(pointerPoint:Windows.UI.Input.PointerPoint):Void;
	function processPointerUpdate(pointerPoint:Windows.UI.Input.PointerPoint):Dynamic;
	function processPointerUp(pointerPoint:Windows.UI.Input.PointerPoint):Windows.Foundation.Rect;
	function setDefaultDrawingAttributes(drawingAttributes:Windows.UI.Input.Inking.InkDrawingAttributes):Void;
	@:overload(function(recognitionTarget:Windows.UI.Input.Inking.InkRecognitionTarget):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.UI.Input.Inking.InkRecognitionResult>> { })
	function recognizeAsync(strokeCollection:Windows.UI.Input.Inking.InkStrokeContainer, recognitionTarget:Windows.UI.Input.Inking.InkRecognitionTarget):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.UI.Input.Inking.InkRecognitionResult>>;
};
extern class InkManager {
	var mode : Windows.UI.Input.Inking.InkManipulationMode;
	var boundingRect : Windows.Foundation.Rect;
	function processPointerDown(pointerPoint:Windows.UI.Input.PointerPoint):Void;
	function processPointerUpdate(pointerPoint:Windows.UI.Input.PointerPoint):Dynamic;
	function processPointerUp(pointerPoint:Windows.UI.Input.PointerPoint):Windows.Foundation.Rect;
	function setDefaultDrawingAttributes(drawingAttributes:Windows.UI.Input.Inking.InkDrawingAttributes):Void;
	@:overload(function(strokeCollection:Windows.UI.Input.Inking.InkStrokeContainer, recognitionTarget:Windows.UI.Input.Inking.InkRecognitionTarget):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.UI.Input.Inking.InkRecognitionResult>> { })
	function recognizeAsync(recognitionTarget:Windows.UI.Input.Inking.InkRecognitionTarget):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.UI.Input.Inking.InkRecognitionResult>>;
	function addStroke(stroke:Windows.UI.Input.Inking.InkStroke):Void;
	function deleteSelected():Windows.Foundation.Rect;
	function moveSelected(translation:Windows.Foundation.Point):Windows.Foundation.Rect;
	function selectWithPolyLine(polyline:Windows.Foundation.Collections.IIterable<Windows.Foundation.Point>):Windows.Foundation.Rect;
	function selectWithLine(from:Windows.Foundation.Point, to:Windows.Foundation.Point):Windows.Foundation.Rect;
	function copySelectedToClipboard():Void;
	function pasteFromClipboard(position:Windows.Foundation.Point):Windows.Foundation.Rect;
	function canPasteFromClipboard():Bool;
	function loadAsync(inputStream:Windows.Storage.Streams.IInputStream):Windows.Foundation.IAsyncActionWithProgress<Float>;
	function saveAsync(outputStream:Windows.Storage.Streams.IOutputStream):Windows.Foundation.IAsyncOperationWithProgress<Float, Float>;
	function updateRecognitionResults(recognitionResults:Windows.Foundation.Collections.IVectorView<Windows.UI.Input.Inking.InkRecognitionResult>):Void;
	function getStrokes():Windows.Foundation.Collections.IVectorView<Windows.UI.Input.Inking.InkStroke>;
	function getRecognitionResults():Windows.Foundation.Collections.IVectorView<Windows.UI.Input.Inking.InkRecognitionResult>;
	function setDefaultRecognizer(recognizer:Windows.UI.Input.Inking.InkRecognizer):Void;
	function getRecognizers():Windows.Foundation.Collections.IVectorView<Windows.UI.Input.Inking.InkRecognizer>;
}
