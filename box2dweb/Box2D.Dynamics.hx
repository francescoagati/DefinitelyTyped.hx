extern class B2Body {
	static var b2_dynamicBody : Float;
	static var b2_kinematicBody : Float;
	static var b2_staticBody : Float;
	function ApplyForce(force:Box2D.Common.Math.B2Vec2, point:Box2D.Common.Math.B2Vec2):Void;
	function ApplyImpulse(impulse:Box2D.Common.Math.B2Vec2, point:Box2D.Common.Math.B2Vec2):Void;
	function ApplyTorque(torque:Float):Void;
	function CreateFixture(def:B2FixtureDef):B2Fixture;
	function CreateFixture2(shape:Box2D.Collision.Shapes.B2Shape, ?density:Float):B2Fixture;
	function DestroyFixture(fixture:B2Fixture):Void;
	function GetAngle():Float;
	function GetAngularDamping():Float;
	function GetAngularVelocity():Float;
	function GetContactList():Contacts.B2ContactEdge;
	function GetControllerList():Controllers.B2ControllerEdge;
	function GetDefinition():B2BodyDef;
	function GetFixtureList():B2Fixture;
	function GetInertia():Float;
	function GetJointList():Joints.B2JointEdge;
	function GetLinearDamping():Float;
	function GetLinearVelocity():Box2D.Common.Math.B2Vec2;
	function GetLinearVelocityFromLocalPoint(localPoint:Box2D.Common.Math.B2Vec2):Box2D.Common.Math.B2Vec2;
	function GetLinearVelocityFromWorldPoint(worldPoint:Box2D.Common.Math.B2Vec2):Box2D.Common.Math.B2Vec2;
	function GetLocalCenter():Box2D.Common.Math.B2Vec2;
	function GetLocalPoint(worldPoint:Box2D.Common.Math.B2Vec2):Box2D.Common.Math.B2Vec2;
	function GetLocalVector(worldVector:Box2D.Common.Math.B2Vec2):Box2D.Common.Math.B2Vec2;
	function GetMass():Float;
	function GetMassData(data:Box2D.Collision.Shapes.B2MassData):Void;
	function GetNext():B2Body;
	function GetPosition():Box2D.Common.Math.B2Vec2;
	function GetTransform():Box2D.Common.Math.B2Transform;
	function GetType():Float;
	function GetUserData():Dynamic;
	function GetWorld():B2World;
	function GetWorldCenter():Box2D.Common.Math.B2Vec2;
	function GetWorldPoint(localPoint:Box2D.Common.Math.B2Vec2):Box2D.Common.Math.B2Vec2;
	function GetWorldVector(localVector:Box2D.Common.Math.B2Vec2):Box2D.Common.Math.B2Vec2;
	function IsActive():Bool;
	function IsAwake():Bool;
	function IsBullet():Bool;
	function IsFixedRotation():Bool;
	function IsSleepingAllowed():Bool;
	function Merge(other:B2Body):Void;
	function ResetMassData():Void;
	function SetActive(flag:Bool):Void;
	function SetAngle(angle:Float):Void;
	function SetAngularDamping(angularDamping:Float):Void;
	function SetAngularVelocity(omega:Float):Void;
	function SetAwake(flag:Bool):Void;
	function SetBullet(flag:Bool):Void;
	function SetFixedRotation(fixed:Bool):Void;
	function SetLinearDamping(linearDamping:Float):Void;
	function SetLinearVelocity(v:Box2D.Common.Math.B2Vec2):Void;
	function SetMassData(massData:Box2D.Collision.Shapes.B2MassData):Void;
	function SetPosition(position:Box2D.Common.Math.B2Vec2):Void;
	function SetPositionAndAngle(position:Box2D.Common.Math.B2Vec2, angle:Float):Void;
	function SetSleepingAllowed(flag:Bool):Void;
	function SetTransform(xf:Box2D.Common.Math.B2Transform):Void;
	function SetType(type:Float):Void;
	function SetUserData(data:Dynamic):Void;
	function Split(callback:B2Fixture -> Bool):B2Body;
}
extern class B2BodyDef {
	var active : Bool;
	var allowSleep : Bool;
	var angle : Float;
	var angularDamping : Float;
	var angularVelocity : Float;
	var awake : Bool;
	var bullet : Bool;
	var fixedRotation : Bool;
	var inertiaScale : Float;
	var linearDamping : Float;
	var linearVelocity : Box2D.Common.Math.B2Vec2;
	var position : Box2D.Common.Math.B2Vec2;
	var type : Float;
	var userData : Dynamic;
}
extern class B2ContactFilter {
	function RayCollide(userData:Dynamic):Bool;
	function ShouldCollide(fixtureA:B2Fixture, fixtureB:B2Fixture):Bool;
}
extern class B2ContactImpulse {
	var normalImpulses : Box2D.Common.Math.B2Vec2;
	var tangentImpulses : Box2D.Common.Math.B2Vec2;
}
extern class B2ContactListener {
	function BeginContact(contact:Contacts.B2Contact):Void;
	function EndContact(contact:Contacts.B2Contact):Void;
	function PostSolve(contact:Contacts.B2Contact, impulse:B2ContactImpulse):Void;
	function PreSolve(contact:Contacts.B2Contact, oldManifold:Box2D.Collision.B2Manifold):Void;
}
extern class B2DebugDraw {
	static var e_aabbBit : Float;
	static var e_centerOfMassBit : Float;
	static var e_controllerBit : Float;
	static var e_jointBit : Float;
	static var e_pairBit : Float;
	static var e_shapeBit : Float;
	function new():Void;
	function AppendFlags(flags:Float):Void;
	function ClearFlags(flags:Float):Void;
	function DrawCircle(center:Box2D.Common.Math.B2Vec2, radius:Float, color:Box2D.Common.B2Color):Void;
	function DrawPolygon(vertices:Array<Box2D.Common.Math.B2Vec2>, vertexCount:Float, color:Box2D.Common.B2Color):Void;
	function DrawSegment(p1:Box2D.Common.Math.B2Vec2, p2:Box2D.Common.Math.B2Vec2, color:Box2D.Common.B2Color):Void;
	function DrawSolidCircle(center:Box2D.Common.Math.B2Vec2, radius:Float, axis:Box2D.Common.Math.B2Vec2, color:Box2D.Common.B2Color):Void;
	function DrawSolidPolygon(vertices:Array<Box2D.Common.Math.B2Vec2>, vertexCount:Float, color:Box2D.Common.B2Color):Void;
	function DrawTransform(xf:Box2D.Common.Math.B2Transform):Void;
	function GetAlpha():Float;
	function GetDrawScale():Float;
	function GetFillAlpha():Float;
	function GetFlags():Float;
	function GetLineThickness():Float;
	function GetSprite():CanvasRenderingContext2D;
	function GetXFormScale():Float;
	function SetAlpha(alpha:Float):Void;
	function SetDrawScale(drawScale:Float):Void;
	function SetFillAlpha(alpha:Float):Void;
	function SetFlags(flags:Float):Void;
	function SetLineThickness(lineThickness:Float):Void;
	function SetSprite(canvas:CanvasRenderingContext2D):Void;
	function SetXFormScale(xformScale:Float):Void;
}
extern class B2DestructionListener {
	function SayGoodbyeFixture(fixture:B2Fixture):Void;
	function SayGoodbyeJoint(joint:Joints.B2Joint):Void;
}
extern class B2FilterData {
	var categoryBits : Float;
	var groupIndex : Float;
	var maskBits : Float;
	function Copy():B2FilterData;
}
extern class B2Fixture {
	function GetAABB():Box2D.Collision.B2AABB;
	function GetBody():B2Body;
	function GetDensity():Float;
	function GetFilterData():B2FilterData;
	function GetFriction():Float;
	function GetMassData(?massData:Box2D.Collision.Shapes.B2MassData):Box2D.Collision.Shapes.B2MassData;
	function GetNext():B2Fixture;
	function GetRestitution():Float;
	function GetShape():Box2D.Collision.Shapes.B2Shape;
	function GetType():Float;
	function GetUserData():Dynamic;
	function IsSensor():Bool;
	function RayCast(output:Box2D.Collision.B2RayCastOutput, input:Box2D.Collision.B2RayCastInput):Bool;
	function SetDensity(density:Float):Void;
	function SetFilterData(filter:Dynamic):Void;
	function SetFriction(friction:Float):Void;
	function SetRestitution(restitution:Float):Void;
	function SetSensor(sensor:Bool):Void;
	function SetUserData(data:Dynamic):Void;
	function TestPoint(p:Box2D.Common.Math.B2Vec2):Bool;
}
extern class B2FixtureDef {
	var density : Float;
	var filter : B2FilterData;
	var friction : Float;
	var isSensor : Bool;
	var restitution : Float;
	var shape : Box2D.Collision.Shapes.B2Shape;
	var userData : Dynamic;
	function new():Void;
}
extern class B2World {
	static var e_locked : Float;
	static var e_newFixture : Float;
	function new(gravity:Box2D.Common.Math.B2Vec2, doSleep:Bool):Void;
	function AddController(c:Controllers.B2Controller):Controllers.B2Controller;
	function ClearForces():Void;
	function CreateBody(def:B2BodyDef):B2Body;
	function CreateController(controller:Controllers.B2Controller):Controllers.B2Controller;
	function CreateJoint(def:Joints.B2JointDef):Joints.B2Joint;
	function DestroyBody(b:B2Body):Void;
	function DestroyController(controller:Controllers.B2Controller):Void;
	function DestroyJoint(j:Joints.B2Joint):Void;
	function DrawDebugData():Void;
	function GetBodyCount():Float;
	function GetBodyList():B2Body;
	function GetContactCount():Float;
	function GetContactList():Contacts.B2Contact;
	function GetGravity():Box2D.Common.Math.B2Vec2;
	function GetGroundBody():B2Body;
	function GetJointCount():Float;
	function GetJointList():Joints.B2Joint;
	function GetProxyCount():Float;
	function IsLocked():Bool;
	function QueryAABB(callback:B2Fixture -> Bool, aabb:Box2D.Collision.B2AABB):Void;
	function QueryPoint(callback:B2Fixture -> Bool, p:Box2D.Common.Math.B2Vec2):Void;
	function QueryShape(callback:B2Fixture -> Bool, shape:Box2D.Collision.Shapes.B2Shape, ?transform:Box2D.Common.Math.B2Transform):Void;
	function RayCast(callback:B2Fixture -> Box2D.Common.Math.B2Vec2 -> Box2D.Common.Math.B2Vec2 -> Float -> Float, point1:Box2D.Common.Math.B2Vec2, point2:Box2D.Common.Math.B2Vec2):Void;
	function RayCastAll(point1:Box2D.Common.Math.B2Vec2, point2:Box2D.Common.Math.B2Vec2):Array<B2Fixture>;
	function RayCastOne(point1:Box2D.Common.Math.B2Vec2, point2:Box2D.Common.Math.B2Vec2):B2Fixture;
	function RemoveController(c:Controllers.B2Controller):Void;
	function SetBroadPhase(broadPhase:Box2D.Collision.IBroadPhase):Void;
	function SetContactFilter(filter:B2ContactFilter):Void;
	function SetContactListener(listener:B2ContactListener):Void;
	function SetContinuousPhysics(flag:Bool):Void;
	function SetDebugDraw(debugDraw:B2DebugDraw):Void;
	function SetDestructionListener(listener:B2DestructionListener):Void;
	function SetGravity(gravity:Box2D.Common.Math.B2Vec2):Void;
	function SetWarmStarting(flag:Bool):Void;
	function Step(dt:Float, velocityIterations:Float, positionIterations:Float):Void;
	function Validate():Void;
}
