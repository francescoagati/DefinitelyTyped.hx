extern class B2AABB {
	var lowerBound : Box2D.Common.Math.B2Vec2;
	var upperBound : Box2D.Common.Math.B2Vec2;
	@:overload(function(aabb1:B2AABB, aabb2:B2AABB):Void { })
	static function Combine(aabb1:B2AABB, aabb2:B2AABB):B2AABB;
	function Contains(aabb:B2AABB):Bool;
	function GetCenter():Box2D.Common.Math.B2Vec2;
	function GetExtents():Box2D.Common.Math.B2Vec2;
	function IsValid():Bool;
	function RayCast(output:B2RayCastOutput, input:B2RayCastInput):Bool;
	function TestOverlap(other:B2AABB):Bool;
}
extern class B2ContactID {
	var features : Features;
	var Key : Float;
	function new():Void;
	function Copy():B2ContactID;
	function Set(id:B2ContactID):Void;
}
extern class B2ContactPoint {
	var friction : Float;
	var id : B2ContactID;
	var normal : Box2D.Common.Math.B2Vec2;
	var position : Box2D.Common.Math.B2Vec2;
	var restitution : Float;
	var separation : Float;
	var shape1 : Shapes.B2Shape;
	var shape2 : Shapes.B2Shape;
	var velocity : Box2D.Common.Math.B2Vec2;
}
extern class B2DistanceInput {
	var proxyA : B2DistanceProxy;
	var proxyB : B2DistanceProxy;
	var transformA : Box2D.Common.Math.B2Transform;
	var transformB : Box2D.Common.Math.B2Transform;
	var useRadii : Bool;
}
extern class B2DistanceOutput {
	var distance : Float;
	var iterations : Float;
	var pointA : Box2D.Common.Math.B2Vec2;
	var pointB : Box2D.Common.Math.B2Vec2;
}
extern class B2DistanceProxy {
	var m_count : Float;
	var m_radius : Float;
	var m_vertices : Array<Box2D.Common.Math.B2Vec2>;
	function GetSupport(d:Box2D.Common.Math.B2Vec2):Float;
	function GetSupportVertex(d:Box2D.Common.Math.B2Vec2):Box2D.Common.Math.B2Vec2;
	function GetVertex(index:Float):Box2D.Common.Math.B2Vec2;
	function GetVertexCount():Float;
	function Set(shape:Shapes.B2Shape):Void;
}
extern class B2DynamicTree {
	function new():Void;
	function CreateProxy(aabb:B2AABB, userData:Dynamic):B2DynamicTreeNode;
	function DestroyProxy(proxy:B2DynamicTreeNode):Void;
	function GetFatAABB(proxy:B2DynamicTreeNode):B2AABB;
	function GetUserData(proxy:B2DynamicTreeNode):Dynamic;
	function MoveProxy(proxy:B2DynamicTreeNode, aabb:B2AABB, displacement:Box2D.Common.Math.B2Vec2):Bool;
	function Query(callback:B2DynamicTreeNode -> Bool, aabb:B2AABB):Void;
	function RayCast(callback:B2RayCastInput -> B2DynamicTreeNode -> Float, input:B2RayCastInput):Void;
	function Rebalance(iterations:Float):Void;
}
extern class B2DynamicTreeBroadPhase {
	function new():Void;
	function CreateProxy(aabb:B2AABB, userData:Dynamic):B2DynamicTreeNode;
	function DestroyProxy(proxy:B2DynamicTreeNode):Void;
	function GetFatAABB(proxy:B2DynamicTreeNode):B2AABB;
	function GetProxyCount():Float;
	function GetUserData(proxy:B2DynamicTreeNode):Dynamic;
	function MoveProxy(proxy:B2DynamicTreeNode, aabb:B2AABB, displacement:Box2D.Common.Math.B2Vec2):Void;
	function Query(callback:B2DynamicTreeNode -> Bool, aabb:B2AABB):Void;
	function RayCast(callback:B2RayCastInput -> B2DynamicTreeNode -> Float, input:B2RayCastInput):Void;
	function Rebalance(iterations:Float):Void;
	function TestOverlap(proxyA:B2DynamicTreeNode, proxyB:B2DynamicTreeNode):Bool;
	function UpdatePairs(callback:Dynamic -> Dynamic -> Void):Void;
	function Validate():Void;
}
extern class B2DynamicTreeNode {

}
extern class B2Manifold {
	static var e_circles : Float;
	static var e_faceA : Float;
	static var e_faceB : Float;
	var m_localPlaneNormal : Box2D.Common.Math.B2Vec2;
	var m_localPoint : Box2D.Common.Math.B2Vec2;
	var m_pointCount : Float;
	var m_points : Array<B2ManifoldPoint>;
	var m_type : Float;
	function new():Void;
	function Copy():B2Manifold;
	function Reset():Void;
	function Set(m:B2Manifold):Void;
}
extern class B2ManifoldPoint {
	var m_id : B2ContactID;
	var m_localpoint : Box2D.Common.Math.B2Vec2;
	var m_normalImpulse : Float;
	var m_tangentImpulse : Float;
	function new():Void;
	function Reset():Void;
	function Set(m:B2ManifoldPoint):Void;
}
extern class B2OBB {
	var center : Box2D.Common.Math.B2Vec2;
	var extents : Box2D.Common.Math.B2Vec2;
	var R : Box2D.Common.Math.B2Mat22;
}
extern class B2RayCastInput {
	var maxFraction : Float;
	var p1 : Box2D.Common.Math.B2Vec2;
	var p2 : Box2D.Common.Math.B2Vec2;
	function new(?p1:Box2D.Common.Math.B2Vec2, ?p2:Box2D.Common.Math.B2Vec2, ?maxFraction:Float):Void;
}
extern class B2RayCastOutput {
	var fraction : Float;
	var normal : Box2D.Common.Math.B2Vec2;
}
extern class B2Segment {
	var p1 : Box2D.Common.Math.B2Vec2;
	var p2 : Box2D.Common.Math.B2Vec2;
	function Extend(aabb:B2AABB):Void;
	function ExtendBackward(aabb:B2AABB):Void;
	function ExtendForward(aabb:B2AABB):Void;
	function TestSegment(lambda:Array<Float>, normal:Box2D.Common.Math.B2Vec2, segment:B2Segment, maxLambda:Float):Bool;
}
extern class B2SimplexCache {
	var count : Float;
	var indexA : Array<Float>;
	var indexB : Array<Float>;
	var metric : Float;
}
extern class B2TOIInput {
	var proxyA : B2DistanceProxy;
	var proxyB : B2DistanceProxy;
	var sweepA : Box2D.Common.Math.B2Sweep;
	var sweepB : Box2D.Common.Math.B2Sweep;
	var tolerance : Float;
}
extern class B2WorldManifold {
	var m_normal : Box2D.Common.Math.B2Vec2;
	var m_points : Array<Box2D.Common.Math.B2Vec2>;
	function new():Void;
	function Initialize(manifold:B2Manifold, xfA:Box2D.Common.Math.B2Transform, radiusA:Float, xfB:Box2D.Common.Math.B2Transform, radiusB:Float):Void;
}
extern class Features {
	var flip : Float;
	var incidentEdge : Float;
	var incidentVertex : Float;
	var referenceEdge : Float;
}
typedef IBroadPhase = {
	function CreateProxy(aabb:B2AABB, userData:Dynamic):B2DynamicTreeNode;
	function DestroyProxy(proxy:B2DynamicTreeNode):Void;
	function GetFatAABB(proxy:B2DynamicTreeNode):B2AABB;
	function GetProxyCount():Float;
	function GetUserData(proxy:B2DynamicTreeNode):Dynamic;
	function MoveProxy(proxy:B2DynamicTreeNode, aabb:B2AABB, displacement:Box2D.Common.Math.B2Vec2):Void;
	function Query(callback:B2DynamicTreeNode -> Bool, aabb:B2AABB):Void;
	function RayCast(callback:B2RayCastInput -> B2DynamicTreeNode -> Float, input:B2RayCastInput):Void;
	function Rebalance(iterations:Float):Void;
};
