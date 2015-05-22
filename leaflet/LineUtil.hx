extern class LineUtilTopLevel {
	static function simplify(points:Array<Point>, tolerance:Float):Array<Point>;
	static function pointToSegmentDistance(p:Point, p1:Point, p2:Point):Float;
	static function closestPointOnSegment(p:Point, p1:Point, p2:Point):Float;
	static function clipSegment(a:Point, b:Point, bounds:Bounds):Void;
}
