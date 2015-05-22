extern class Arc extends kendo.drawing.Element {
	function new(?options:ArcOptions):Void;
	var options : ArcOptions;
	function bbox():kendo.geometry.Rect;
	@:overload(function(clip:kendo.drawing.Path):Void { })
	function clip():kendo.drawing.Path;
	function clippedBBox():kendo.geometry.Rect;
	@:overload(function(value:kendo.geometry.Arc):Void { })
	function geometry():kendo.geometry.Arc;
	function fill(color:String, ?opacity:Float):kendo.drawing.Arc;
	@:overload(function(opacity:Float):Void { })
	function opacity():Float;
	function stroke(color:String, ?width:Float, ?opacity:Float):kendo.drawing.Arc;
	@:overload(function(transform:kendo.geometry.Transformation):Void { })
	function transform():kendo.geometry.Transformation;
	@:overload(function(visible:Bool):Void { })
	function visible():Bool;
}
typedef ArcOptions = {
	@:optional
	var name : String;
	@:optional
	var clip : kendo.drawing.Path;
	@:optional
	var fill : kendo.drawing.FillOptions;
	@:optional
	var opacity : Float;
	@:optional
	var stroke : kendo.drawing.StrokeOptions;
	@:optional
	var transform : kendo.geometry.Transformation;
	@:optional
	var visible : Bool;
};
typedef ArcEvent = {
	var sender : Arc;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Circle extends kendo.drawing.Element {
	function new(?options:CircleOptions):Void;
	var options : CircleOptions;
	function bbox():kendo.geometry.Rect;
	@:overload(function(clip:kendo.drawing.Path):Void { })
	function clip():kendo.drawing.Path;
	function clippedBBox():kendo.geometry.Rect;
	@:overload(function(value:kendo.geometry.Circle):Void { })
	function geometry():kendo.geometry.Circle;
	function fill(color:String, ?opacity:Float):kendo.drawing.Circle;
	@:overload(function(opacity:Float):Void { })
	function opacity():Float;
	function stroke(color:String, ?width:Float, ?opacity:Float):kendo.drawing.Circle;
	@:overload(function(transform:kendo.geometry.Transformation):Void { })
	function transform():kendo.geometry.Transformation;
	@:overload(function(visible:Bool):Void { })
	function visible():Bool;
}
typedef CircleOptions = {
	@:optional
	var name : String;
	@:optional
	var clip : kendo.drawing.Path;
	@:optional
	var fill : kendo.drawing.FillOptions;
	@:optional
	var opacity : Float;
	@:optional
	var stroke : kendo.drawing.StrokeOptions;
	@:optional
	var transform : kendo.geometry.Transformation;
	@:optional
	var visible : Bool;
};
typedef CircleEvent = {
	var sender : Circle;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Element extends kendo.Class {
	function new(?options:ElementOptions):Void;
	var options : ElementOptions;
	function bbox():kendo.geometry.Rect;
	@:overload(function(clip:kendo.drawing.Path):Void { })
	function clip():kendo.drawing.Path;
	function clippedBBox():kendo.geometry.Rect;
	@:overload(function(opacity:Float):Void { })
	function opacity():Float;
	@:overload(function(transform:kendo.geometry.Transformation):Void { })
	function transform():kendo.geometry.Transformation;
	@:overload(function(visible:Bool):Void { })
	function visible():Bool;
}
typedef ElementOptions = {
	@:optional
	var name : String;
	@:optional
	var clip : kendo.drawing.Path;
	@:optional
	var opacity : Float;
	@:optional
	var transform : kendo.geometry.Transformation;
	@:optional
	var visible : Bool;
};
typedef ElementEvent = {
	var sender : Element;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef FillOptions = {
	var color : String;
	var opacity : Float;
};
extern class Gradient extends kendo.Class {
	function new(?options:GradientOptions):Void;
	var options : GradientOptions;
	function addStop(offset:Float, color:String, opacity:Float):kendo.drawing.GradientStop;
	function removeStop(stop:kendo.drawing.GradientStop):Void;
	var stops : Dynamic;
}
typedef GradientOptions = {
	@:optional
	var name : String;
	@:optional
	var stops : Dynamic;
};
typedef GradientEvent = {
	var sender : Gradient;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class GradientStop extends kendo.Class {
	function new(?options:GradientStopOptions):Void;
	var options : GradientStopOptions;
}
typedef GradientStopOptions = {
	@:optional
	var name : String;
	@:optional
	var offset : Float;
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef GradientStopEvent = {
	var sender : GradientStop;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Group extends kendo.drawing.Element {
	function new(?options:GroupOptions):Void;
	var options : GroupOptions;
	function append(element:kendo.drawing.Element):Void;
	function clear():Void;
	@:overload(function(clip:kendo.drawing.Path):Void { })
	function clip():kendo.drawing.Path;
	function clippedBBox():kendo.geometry.Rect;
	@:overload(function(opacity:Float):Void { })
	function opacity():Float;
	function remove(element:kendo.drawing.Element):Void;
	function removeAt(index:Float):Void;
	@:overload(function(visible:Bool):Void { })
	function visible():Bool;
	var children : Dynamic;
}
typedef GroupOptions = {
	@:optional
	var name : String;
	@:optional
	var clip : kendo.drawing.Path;
	@:optional
	var opacity : Float;
	@:optional
	var pdf : kendo.drawing.PDFOptions;
	@:optional
	var transform : kendo.geometry.Transformation;
	@:optional
	var visible : Bool;
};
typedef GroupEvent = {
	var sender : Group;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Image extends kendo.drawing.Element {
	function new(?options:ImageOptions):Void;
	var options : ImageOptions;
	function bbox():kendo.geometry.Rect;
	@:overload(function(clip:kendo.drawing.Path):Void { })
	function clip():kendo.drawing.Path;
	function clippedBBox():kendo.geometry.Rect;
	@:overload(function(opacity:Float):Void { })
	function opacity():Float;
	@:overload(function(value:String):Void { })
	function src():String;
	@:overload(function(value:kendo.geometry.Rect):Void { })
	function rect():kendo.geometry.Rect;
	@:overload(function(transform:kendo.geometry.Transformation):Void { })
	function transform():kendo.geometry.Transformation;
	@:overload(function(visible:Bool):Void { })
	function visible():Bool;
}
typedef ImageOptions = {
	@:optional
	var name : String;
	@:optional
	var clip : kendo.drawing.Path;
	@:optional
	var opacity : Float;
	@:optional
	var transform : kendo.geometry.Transformation;
	@:optional
	var visible : Bool;
};
typedef ImageEvent = {
	var sender : Image;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Layout extends kendo.drawing.Group {
	function new(?options:LayoutOptions):Void;
	var options : LayoutOptions;
	@:overload(function(rect:kendo.geometry.Rect):Void { })
	function rect():kendo.geometry.Rect;
	function reflow():Void;
}
typedef LayoutOptions = {
	@:optional
	var name : String;
	@:optional
	var alignContent : String;
	@:optional
	var alignItems : String;
	@:optional
	var justifyContent : String;
	@:optional
	var lineSpacing : Float;
	@:optional
	var spacing : Float;
	@:optional
	var orientation : String;
	@:optional
	var wrap : Bool;
};
typedef LayoutEvent = {
	var sender : Layout;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class LinearGradient extends kendo.drawing.Gradient {
	function new(?options:LinearGradientOptions):Void;
	var options : LinearGradientOptions;
	function addStop(offset:Float, color:String, opacity:Float):kendo.drawing.GradientStop;
	@:overload(function(end:Dynamic):Void { })
	@:overload(function(end:kendo.geometry.Point):Void { })
	function end():kendo.geometry.Point;
	@:overload(function(start:Dynamic):Void { })
	@:overload(function(start:kendo.geometry.Point):Void { })
	function start():kendo.geometry.Point;
	function removeStop(stop:kendo.drawing.GradientStop):Void;
	var stops : Dynamic;
}
typedef LinearGradientOptions = {
	@:optional
	var name : String;
	@:optional
	var stops : Dynamic;
};
typedef LinearGradientEvent = {
	var sender : LinearGradient;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class MultiPath extends kendo.drawing.Element {
	function new(?options:MultiPathOptions):Void;
	var options : MultiPathOptions;
	function bbox():kendo.geometry.Rect;
	@:overload(function(clip:kendo.drawing.Path):Void { })
	function clip():kendo.drawing.Path;
	function clippedBBox():kendo.geometry.Rect;
	function close():kendo.drawing.MultiPath;
	@:overload(function(controlOut:Dynamic, controlIn:kendo.geometry.Point):kendo.drawing.MultiPath { })
	@:overload(function(controlOut:kendo.geometry.Point, controlIn:Dynamic):kendo.drawing.MultiPath { })
	@:overload(function(controlOut:kendo.geometry.Point, controlIn:kendo.geometry.Point):kendo.drawing.MultiPath { })
	function curveTo(controlOut:Dynamic, controlIn:Dynamic):kendo.drawing.MultiPath;
	function fill(color:String, ?opacity:Float):kendo.drawing.MultiPath;
	@:overload(function(x:Dynamic, ?y:Float):kendo.drawing.MultiPath { })
	@:overload(function(x:kendo.geometry.Point, ?y:Float):kendo.drawing.MultiPath { })
	function lineTo(x:Float, ?y:Float):kendo.drawing.MultiPath;
	@:overload(function(x:Dynamic, ?y:Float):kendo.drawing.MultiPath { })
	@:overload(function(x:kendo.geometry.Point, ?y:Float):kendo.drawing.MultiPath { })
	function moveTo(x:Float, ?y:Float):kendo.drawing.MultiPath;
	@:overload(function(opacity:Float):Void { })
	function opacity():Float;
	function stroke(color:String, ?width:Float, ?opacity:Float):kendo.drawing.MultiPath;
	@:overload(function(transform:kendo.geometry.Transformation):Void { })
	function transform():kendo.geometry.Transformation;
	@:overload(function(visible:Bool):Void { })
	function visible():Bool;
	var paths : Dynamic;
}
typedef MultiPathOptions = {
	@:optional
	var name : String;
	@:optional
	var clip : kendo.drawing.Path;
	@:optional
	var fill : kendo.drawing.FillOptions;
	@:optional
	var opacity : Float;
	@:optional
	var stroke : kendo.drawing.StrokeOptions;
	@:optional
	var transform : kendo.geometry.Transformation;
	@:optional
	var visible : Bool;
};
typedef MultiPathEvent = {
	var sender : MultiPath;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class OptionsStore extends kendo.Class {
	var options : OptionsStoreOptions;
	function get(field:String):Dynamic;
	function set(field:String, value:Dynamic):Void;
	var observer : Dynamic;
}
typedef OptionsStoreOptions = {
	@:optional
	var name : String;
};
typedef OptionsStoreEvent = {
	var sender : OptionsStore;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef PDFOptions = {
	var creator : String;
	var date : Date;
	var keywords : String;
	var landscape : Bool;
	var margin : Dynamic;
	var paperSize : Dynamic;
	var subject : String;
	var title : String;
};
extern class Path extends kendo.drawing.Element {
	function new(?options:PathOptions):Void;
	var options : PathOptions;
	function bbox():kendo.geometry.Rect;
	@:overload(function(clip:kendo.drawing.Path):Void { })
	function clip():kendo.drawing.Path;
	function clippedBBox():kendo.geometry.Rect;
	function close():kendo.drawing.Path;
	@:overload(function(controlOut:Dynamic, controlIn:kendo.geometry.Point):kendo.drawing.Path { })
	@:overload(function(controlOut:kendo.geometry.Point, controlIn:Dynamic):kendo.drawing.Path { })
	@:overload(function(controlOut:kendo.geometry.Point, controlIn:kendo.geometry.Point):kendo.drawing.Path { })
	function curveTo(controlOut:Dynamic, controlIn:Dynamic):kendo.drawing.Path;
	function fill(color:String, ?opacity:Float):kendo.drawing.Path;
	@:overload(function(x:Dynamic, ?y:Float):kendo.drawing.Path { })
	@:overload(function(x:kendo.geometry.Point, ?y:Float):kendo.drawing.Path { })
	function lineTo(x:Float, ?y:Float):kendo.drawing.Path;
	@:overload(function(x:Dynamic, ?y:Float):kendo.drawing.Path { })
	@:overload(function(x:kendo.geometry.Point, ?y:Float):kendo.drawing.Path { })
	function moveTo(x:Float, ?y:Float):kendo.drawing.Path;
	@:overload(function(opacity:Float):Void { })
	function opacity():Float;
	function stroke(color:String, ?width:Float, ?opacity:Float):kendo.drawing.Path;
	@:overload(function(transform:kendo.geometry.Transformation):Void { })
	function transform():kendo.geometry.Transformation;
	@:overload(function(visible:Bool):Void { })
	function visible():Bool;
	static function fromPoints(points:Dynamic):kendo.drawing.Path;
	static function fromRect(rect:kendo.geometry.Rect):kendo.drawing.Path;
	static function parse(svgPath:String, ?options:Dynamic):kendo.drawing.Path;
	var segments : Dynamic;
}
typedef PathOptions = {
	@:optional
	var name : String;
	@:optional
	var clip : kendo.drawing.Path;
	@:optional
	var fill : kendo.drawing.FillOptions;
	@:optional
	var opacity : Float;
	@:optional
	var stroke : kendo.drawing.StrokeOptions;
	@:optional
	var transform : kendo.geometry.Transformation;
	@:optional
	var visible : Bool;
};
typedef PathEvent = {
	var sender : Path;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class RadialGradient extends kendo.drawing.Gradient {
	function new(?options:RadialGradientOptions):Void;
	var options : RadialGradientOptions;
	function addStop(offset:Float, color:String, opacity:Float):kendo.drawing.GradientStop;
	@:overload(function(center:Dynamic):Void { })
	@:overload(function(center:kendo.geometry.Point):Void { })
	function center():kendo.geometry.Point;
	@:overload(function(value:Float):Void { })
	function radius():Float;
	function removeStop(stop:kendo.drawing.GradientStop):Void;
	var stops : Dynamic;
}
typedef RadialGradientOptions = {
	@:optional
	var name : String;
	@:optional
	var center : Dynamic;
	@:optional
	var radius : Float;
	@:optional
	var stops : Dynamic;
};
typedef RadialGradientEvent = {
	var sender : RadialGradient;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Segment extends kendo.Class {
	var options : SegmentOptions;
	@:overload(function(value:kendo.geometry.Point):Void { })
	function anchor():kendo.geometry.Point;
	@:overload(function(value:kendo.geometry.Point):Void { })
	function controlIn():kendo.geometry.Point;
	@:overload(function(value:kendo.geometry.Point):Void { })
	function controlOut():kendo.geometry.Point;
}
typedef SegmentOptions = {
	@:optional
	var name : String;
};
typedef SegmentEvent = {
	var sender : Segment;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef StrokeOptions = {
	var color : String;
	var dashType : String;
	var lineCap : String;
	var lineJoin : String;
	var opacity : Float;
	var width : Float;
};
extern class Surface extends kendo.Observable {
	function new(?options:SurfaceOptions):Void;
	var options : SurfaceOptions;
	function clear():Void;
	function draw(element:kendo.drawing.Element):Void;
	function eventTarget(e:Dynamic):kendo.drawing.Element;
	function resize(?force:Bool):Void;
	@:overload(function(element:Element, ?options:Dynamic):kendo.drawing.Surface { })
	static function create(element:JQuery, ?options:Dynamic):kendo.drawing.Surface;
}
typedef SurfaceOptions = {
	@:optional
	var name : String;
	@:optional
	var type : String;
	@:optional
	var height : String;
	@:optional
	var width : String;
	@:optional
	function click(e:SurfaceClickEvent):Void;
	@:optional
	function mouseenter(e:SurfaceMouseenterEvent):Void;
	@:optional
	function mouseleave(e:SurfaceMouseleaveEvent):Void;
};
typedef SurfaceEvent = {
	var sender : Surface;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef SurfaceClickEvent = {
	>SurfaceEvent,
	@:optional
	var element : kendo.drawing.Element;
	@:optional
	var originalEvent : Dynamic;
};
typedef SurfaceMouseenterEvent = {
	>SurfaceEvent,
	@:optional
	var element : kendo.drawing.Element;
	@:optional
	var originalEvent : Dynamic;
};
typedef SurfaceMouseleaveEvent = {
	>SurfaceEvent,
	@:optional
	var element : kendo.drawing.Element;
	@:optional
	var originalEvent : Dynamic;
};
extern class Text extends kendo.drawing.Element {
	function new(?options:TextOptions):Void;
	var options : TextOptions;
	function bbox():kendo.geometry.Rect;
	@:overload(function(clip:kendo.drawing.Path):Void { })
	function clip():kendo.drawing.Path;
	function clippedBBox():kendo.geometry.Rect;
	@:overload(function(value:String):Void { })
	function content():String;
	function fill(color:String, ?opacity:Float):kendo.drawing.Text;
	@:overload(function(opacity:Float):Void { })
	function opacity():Float;
	@:overload(function(value:kendo.geometry.Point):Void { })
	function position():kendo.geometry.Point;
	function stroke(color:String, ?width:Float, ?opacity:Float):kendo.drawing.Text;
	@:overload(function(transform:kendo.geometry.Transformation):Void { })
	function transform():kendo.geometry.Transformation;
	@:overload(function(visible:Bool):Void { })
	function visible():Bool;
}
typedef TextOptions = {
	@:optional
	var name : String;
	@:optional
	var clip : kendo.drawing.Path;
	@:optional
	var fill : kendo.drawing.FillOptions;
	@:optional
	var font : String;
	@:optional
	var opacity : Float;
	@:optional
	var stroke : kendo.drawing.StrokeOptions;
	@:optional
	var transform : kendo.geometry.Transformation;
	@:optional
	var visible : Bool;
};
typedef TextEvent = {
	var sender : Text;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
