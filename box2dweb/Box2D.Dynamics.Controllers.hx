extern class B2Controller {
	var m_bodyCount : Float;
	var m_bodyList : B2ControllerEdge;
	function AddBody(body:B2Body):Void;
	function Clear():Void;
	function Draw(debugDraw:B2DebugDraw):Void;
	function GetBodyList():B2ControllerEdge;
	function GetNext():B2Controller;
	function GetWorld():B2World;
	function RemoveBody(body:B2Body):Void;
	function Step(step:Dynamic):Void;
}
extern class B2ControllerEdge {
	var body : B2Body;
	var controller : B2Controller;
	var nextBody : B2ControllerEdge;
	var nextController : B2ControllerEdge;
	var prevBody : B2ControllerEdge;
	var prevController : B2ControllerEdge;
}
extern class B2BuoyancyController extends B2Controller {
	var angularDrag : Float;
	var density : Float;
	var gravity : Box2D.Common.Math.B2Vec2;
	var linearDrag : Float;
	var normal : Box2D.Common.Math.B2Vec2;
	var offset : Float;
	var useDensity : Bool;
	var useWorldGravity : Bool;
	var velocity : Box2D.Common.Math.B2Vec2;
}
extern class B2ConstantAccelController extends B2Controller {
	var A : Box2D.Common.Math.B2Vec2;
	function Step(step:Dynamic):Void;
}
extern class B2ConstantForceController extends B2Controller {
	var A : Box2D.Common.Math.B2Vec2;
	function Step(step:Dynamic):Void;
}
extern class B2GravityController extends B2Controller {
	var G : Float;
	var invSqr : Bool;
	function Step(step:Dynamic):Void;
}
extern class B2TensorDampingController extends B2Controller {
	var maxTimeStep : Float;
	var T : Box2D.Common.Math.B2Mat22;
	function SetAxisAligned(xDamping:Float, yDamping:Float):Void;
	function Step(step:Dynamic):Void;
}
