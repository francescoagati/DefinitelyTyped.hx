extern class B2CircleShape extends B2Shape {
	function new(?radius:Float):Void;
	function ComputeAABB(aabb:B2AABB, xf:Box2D.Common.Math.B2Transform):Void;
	function ComputeMass(massData:B2MassData, density:Float):Void;
	function ComputeSubmergedArea(normal:Box2D.Common.Math.B2Vec2, offset:Float, xf:Box2D.Common.Math.B2Transform, c:Box2D.Common.Math.B2Vec2):Float;
	function Copy():B2CircleShape;
	function GetLocalPosition():Box2D.Common.Math.B2Vec2;
	function GetRadius():Float;
	function RayCast(output:B2RayCastOutput, input:B2RayCastInput, transform:Box2D.Common.Math.B2Transform):Bool;
	function Set(other:B2CircleShape):Void;
	function SetLocalPosition(position:Box2D.Common.Math.B2Vec2):Void;
	function SetRadius(radius:Float):Void;
	function TestPoint(xf:Box2D.Common.Math.B2Transform, p:Box2D.Common.Math.B2Vec2):Bool;
}
extern class B2EdgeChainDef {
	var isALoop : Bool;
	var vertexCount : Float;
	var vertices : Box2D.Common.Math.B2Vec2;
	function new():Void;
}
extern class B2EdgeShape extends B2Shape {
	function new(v1:Box2D.Common.Math.B2Vec2, v2:Box2D.Common.Math.B2Vec2):Void;
	function ComputeAABB(aabb:B2AABB, xf:Box2D.Common.Math.B2Transform):Void;
	function ComputeMass(massData:B2MassData, density:Float):Void;
	function ComputeSubmergedArea(normal:Box2D.Common.Math.B2Vec2, offset:Float, xf:Box2D.Common.Math.B2Transform, c:Box2D.Common.Math.B2Vec2):Float;
	function GetLength():Float;
	function GetVertex1():Box2D.Common.Math.B2Vec2;
	function GetVertex2():Box2D.Common.Math.B2Vec2;
	function GetCoreVertex1():Box2D.Common.Math.B2Vec2;
	function GetCoreVertex2():Box2D.Common.Math.B2Vec2;
	function GetNormalVector():Box2D.Common.Math.B2Vec2;
	function GetDirectionVector():Box2D.Common.Math.B2Vec2;
	function GetCorner1Vector():Box2D.Common.Math.B2Vec2;
	function GetCorner2Vector():Box2D.Common.Math.B2Vec2;
	function Corner1IsConvex():Bool;
	function Corner2IsConvex():Bool;
	function GetFirstVertex(xf:Box2D.Common.Math.B2Transform):Box2D.Common.Math.B2Vec2;
	function GetNextEdge():B2EdgeShape;
	function GetPrevEdge():B2EdgeShape;
	function Support(xf:Box2D.Common.Math.B2Transform, dX:Float, dY:Float):Box2D.Common.Math.B2Vec2;
	function RayCast(output:B2RayCastOutput, input:B2RayCastInput, transform:Box2D.Common.Math.B2Transform):Bool;
	function TestPoint(xf:Box2D.Common.Math.B2Transform, p:Box2D.Common.Math.B2Vec2):Bool;
}
extern class B2MassData {
	var center : Box2D.Common.Math.B2Vec2;
	var I : Float;
	var mass : Float;
}
extern class B2PolygonShape extends B2Shape {
	static function AsArray(vertices:Array<Box2D.Common.Math.B2Vec2>, ?vertexCount:Float):B2PolygonShape;
	static function AsBox(hx:Float, hy:Float):B2PolygonShape;
	static function AsEdge(v1:Box2D.Common.Math.B2Vec2, b2:Box2D.Common.Math.B2Vec2):B2PolygonShape;
	static function AsOrientedBox(hx:Float, hy:Float, ?center:Box2D.Common.Math.B2Vec2, ?angle:Float):B2PolygonShape;
	static function AsVector(vertices:Array<Box2D.Common.Math.B2Vec2>, ?vertexCount:Float):B2PolygonShape;
	function ComputeAABB(aabb:B2AABB, xf:Box2D.Common.Math.B2Transform):Void;
	function ComputeMass(massData:B2MassData, density:Float):Void;
	function ComputeSubmergedArea(normal:Box2D.Common.Math.B2Vec2, offset:Float, xf:Box2D.Common.Math.B2Transform, c:Box2D.Common.Math.B2Vec2):Float;
	function Copy():B2PolygonShape;
	function GetNormals():Array<Box2D.Common.Math.B2Vec2>;
	function GetSupport(d:Box2D.Common.Math.B2Vec2):Float;
	function GetSupportVertex(d:Box2D.Common.Math.B2Vec2):Box2D.Common.Math.B2Vec2;
	function GetVertexCount():Float;
	function GetVertices():Array<Box2D.Common.Math.B2Vec2>;
	function RayCast(output:B2RayCastOutput, input:B2RayCastInput, transform:Box2D.Common.Math.B2Transform):Bool;
	function Set(other:B2Shape):Void;
	function SetAsArray(vertices:Array<Box2D.Common.Math.B2Vec2>, ?vertexCount:Float):Void;
	function SetAsBox(hx:Float, hy:Float):Void;
	function SetAsEdge(v1:Box2D.Common.Math.B2Vec2, b2:Box2D.Common.Math.B2Vec2):Void;
	function SetAsOrientedBox(hx:Float, hy:Float, ?center:Box2D.Common.Math.B2Vec2, ?angle:Float):Void;
	function SetAsVector(vertices:Array<Dynamic>, ?vertexCount:Float):Void;
	function TestPoint(xf:Box2D.Common.Math.B2Transform, p:Box2D.Common.Math.B2Vec2):Bool;
}
extern class B2Shape {
	static var e_hitCollide : Float;
	static var e_missCollide : Float;
	static var startsInsideCollide : Float;
	static var e_unknownShape : Float;
	static var e_circleShape : Float;
	static var e_polygonShape : Float;
	static var e_edgeShape : Float;
	static var e_shapeTypeCount : Float;
	function new():Void;
	function ComputeAABB(aabb:B2AABB, xf:Box2D.Common.Math.B2Transform):Void;
	function ComputeMass(massData:B2MassData, density:Float):Void;
	function ComputeSubmergedArea(normal:Box2D.Common.Math.B2Vec2, offset:Float, xf:Box2D.Common.Math.B2Transform, c:Box2D.Common.Math.B2Vec2):Float;
	function Copy():B2Shape;
	function GetType():Float;
	function RayCast(output:B2RayCastOutput, input:B2RayCastInput, transform:Box2D.Common.Math.B2Transform):Bool;
	function Set(other:B2Shape):Void;
	static function TestOverlap(shape1:B2Shape, transform1:Box2D.Common.Math.B2Transform, shape2:B2Shape, transform2:Box2D.Common.Math.B2Transform):Bool;
	function TestPoint(xf:Box2D.Common.Math.B2Transform, p:Box2D.Common.Math.B2Vec2):Bool;
}
