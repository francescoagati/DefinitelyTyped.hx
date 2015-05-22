extern class EnvelopeTopLevel {
	static function createFromMdnXml(xml:String):Envelope;
	static function createFromPoints(pt1:Point, pt2:Point):Envelope;
	static function createFromCenterAndMargins(centerPtX:Float, centerPtY:Float, marginX:Float, marginY:Float):Envelope;
	static function intersects(env1:Envelope, env2:Envelope):Bool;
	static function union(env1:Envelope, env2:Envelope):Envelope;
}
extern class Geometry {
	function new(?isPath:Bool, ?isClosed:Bool):Void;
	function factoryPoly():Dynamic;
	function clone():Geometry;
	function foreachVertex(action:Float -> Float -> Float -> Float -> Array<Float> -> Void):Void;
	function getBounds():Envelope;
	function getIsPath():Bool;
	function getIsClosed():Bool;
	function getSetCount():Float;
	function getSet(idx:Float):Array<Float>;
	function pushSet(s:Array<Float>):Void;
	function popSet():Array<Float>;
	function toSvgPathData():String;
	function addPointToLastSet(pt:Point):{ var setIdx : Float; var idx : Float; };
	function isValid():Bool;
	function toString():String;
	function toWkt():String;
	function findNearestVertex(pt:Point):{ var setIdx : Float; var ptIdx : Float; var pt : Point; var distance : Float; };
	function findNearestSegment(pt:Point, ?close:Bool):{ var setIdx : Float; var ptIdx : Float; var pt : Point; var distance : Float; };
	function getLabelingPoint(?idx:Float):Point;
	function contains(pt:Point):Bool;
}
