extern class B2Contact {
	function new():Void;
	function FlagForFiltering():Void;
	function GetFixtureA():B2Fixture;
	function GetFixtureB():B2Fixture;
	function GetManifold():Box2D.Collision.B2Manifold;
	function GetNext():B2Contact;
	function GetWorldManifold(worldManifold:Box2D.Collision.B2WorldManifold):Void;
	function IsContinuous():Bool;
	function IsEnabled():Bool;
	function IsSensor():Bool;
	function IsTouching():Bool;
	function SetEnabled(flag:Bool):Void;
	function SetSensor(sensor:Bool):Void;
}
extern class B2ContactEdge {
	var contact : B2Contact;
	var next : B2ContactEdge;
	var other : B2Body;
	var prev : B2ContactEdge;
}
extern class B2ContactResult {
	var id : Box2D.Collision.B2ContactID;
	var normal : Box2D.Common.Math.B2Vec2;
	var normalImpulse : Float;
	var position : Box2D.Common.Math.B2Vec2;
	var shape1 : Box2D.Collision.Shapes.B2Shape;
	var shape2 : Box2D.Collision.Shapes.B2Shape;
	var tangentImpulse : Float;
}
