extern class B2Joint {
	function GetAnchorA():Box2D.Common.Math.B2Vec2;
	function GetAnchorB():Box2D.Common.Math.B2Vec2;
	function GetBodyA():B2Body;
	function GetBodyB():B2Body;
	function GetNext():B2Joint;
	function GetReactionForce(inv_dt:Float):Box2D.Common.Math.B2Vec2;
	function GetReactionTorque(inv_dt:Float):Float;
	function GetType():Float;
	function GetUserData():Dynamic;
	function IsActive():Bool;
	function SetUserData(data:Dynamic):Void;
}
extern class B2JointDef {
	var bodyA : B2Body;
	var bodyB : B2Body;
	var collideConnected : Bool;
	var type : Float;
	var userData : Dynamic;
	function new():Void;
}
extern class B2JointEdge {
	var joint : B2Joint;
	var next : B2JointEdge;
	var other : B2Body;
	var prev : B2JointEdge;
}
extern class B2DistanceJoint extends B2Joint {
	function GetAnchorA():Box2D.Common.Math.B2Vec2;
	function GetAnchorB():Box2D.Common.Math.B2Vec2;
	function GetDampingRatio():Float;
	function GetFrequency():Float;
	function GetLength():Float;
	function GetReactionForce(inv_dt:Float):Box2D.Common.Math.B2Vec2;
	function GetReactionTorque(inv_dt:Float):Float;
	function SetDampingRatio(ratio:Float):Void;
	function SetFrequency(hz:Float):Void;
	function SetLength(length:Float):Void;
}
extern class B2DistanceJointDef extends B2JointDef {
	var dampingRatio : Float;
	var frequencyHz : Float;
	var length : Float;
	var localAnchorA : Box2D.Common.Math.B2Vec2;
	var localAnchorB : Box2D.Common.Math.B2Vec2;
	function new():Void;
	function Initialize(bA:B2Body, bB:B2Body, anchorA:Box2D.Common.Math.B2Vec2, anchorB:Box2D.Common.Math.B2Vec2):Void;
}
extern class B2FrictionJoint extends B2Joint {
	var m_angularMass : Float;
	var m_linearMass : Box2D.Common.Math.B2Mat22;
	function GetAnchorA():Box2D.Common.Math.B2Vec2;
	function GetAnchorB():Box2D.Common.Math.B2Vec2;
	function GetMaxForce():Float;
	function GetMaxTorque():Float;
	function GetReactionForce(inv_dt:Float):Box2D.Common.Math.B2Vec2;
	function GetReactionTorque(inv_dt:Float):Float;
	function SetMaxForce(force:Float):Void;
	function SetMaxTorque(torque:Float):Void;
}
extern class B2FrictionJointDef extends B2JointDef {
	var localAnchorA : Box2D.Common.Math.B2Vec2;
	var localAnchorB : Box2D.Common.Math.B2Vec2;
	var maxForce : Float;
	var maxTorque : Float;
	function new():Void;
	function Initialize(bA:B2Body, bB:B2Body, anchor:Box2D.Common.Math.B2Vec2):Void;
}
extern class B2GearJoint extends B2Joint {
	function GetAnchorA():Box2D.Common.Math.B2Vec2;
	function GetAnchorB():Box2D.Common.Math.B2Vec2;
	function GetRatio():Float;
	function GetReactionForce(inv_dt:Float):Box2D.Common.Math.B2Vec2;
	function GetReactionTorque(inv_dt:Float):Float;
	function SetRatio(ratio:Float):Void;
}
extern class B2GearJointDef extends B2JointDef {
	var joint1 : B2Joint;
	var joint2 : B2Joint;
	var ratio : Float;
	function new():Void;
}
extern class B2LineJoint extends B2Joint {
	function EnableLimit(flag:Bool):Void;
	function EnableMotor(flag:Bool):Void;
	function GetAnchorA():Box2D.Common.Math.B2Vec2;
	function GetAnchorB():Box2D.Common.Math.B2Vec2;
	function GetJointSpeed():Float;
	function GetJointTranslation():Float;
	function GetLowerLimit():Float;
	function GetMaxMotorForce():Float;
	function GetMotorForce():Float;
	function GetMotorSpeed():Float;
	function GetReactionForce(inv_dt:Float):Box2D.Common.Math.B2Vec2;
	function GetReactionTorque(inv_dt:Float):Float;
	function GetUpperLimit():Float;
	function IsLimitEnabled():Bool;
	function IsMotorEnabled():Bool;
	function SetLimits(lower:Float, upper:Float):Void;
	function SetMaxMotorForce(force:Float):Void;
	function SetMotorSpeed(speed:Float):Void;
}
extern class B2LineJointDef extends B2JointDef {
	var enableLimit : Bool;
	var enableMotor : Bool;
	var localAnchorA : Box2D.Common.Math.B2Vec2;
	var localAnchorB : Box2D.Common.Math.B2Vec2;
	var localAxisA : Box2D.Common.Math.B2Vec2;
	var lowerTranslation : Float;
	var maxMotorForce : Float;
	var motorSpeed : Float;
	var upperTranslation : Float;
	function new():Void;
	function Initialize(bA:B2Body, bB:B2Body, anchor:Box2D.Common.Math.B2Vec2, axis:Box2D.Common.Math.B2Vec2):Void;
}
extern class B2MouseJoint extends B2Joint {
	function GetAnchorA():Box2D.Common.Math.B2Vec2;
	function GetAnchorB():Box2D.Common.Math.B2Vec2;
	function GetDampingRatio():Float;
	function GetFrequency():Float;
	function GetMaxForce():Float;
	function GetReactionForce(inv_dt:Float):Box2D.Common.Math.B2Vec2;
	function GetReactionTorque(inv_dt:Float):Float;
	function GetTarget():Box2D.Common.Math.B2Vec2;
	function SetDampingRatio(ratio:Float):Void;
	function SetFrequency(hz:Float):Void;
	function SetMaxForce(maxForce:Float):Void;
	function SetTarget(target:Box2D.Common.Math.B2Vec2):Void;
}
extern class B2MouseJointDef extends B2JointDef {
	var dampingRatio : Float;
	var frequencyHz : Float;
	var maxForce : Float;
	function new():Void;
}
extern class B2PrismaticJoint extends B2Joint {
	function EnableLimit(flag:Bool):Void;
	function EnableMotor(flag:Bool):Void;
	function GetAnchorA():Box2D.Common.Math.B2Vec2;
	function GetAnchorB():Box2D.Common.Math.B2Vec2;
	function GetJointSpeed():Float;
	function GetJointTranslation():Float;
	function GetLowerLimit():Float;
	function GetMotorForce():Float;
	function GetMotorSpeed():Float;
	function GetReactionForce(inv_dt:Float):Box2D.Common.Math.B2Vec2;
	function GetReactionTorque(inv_dt:Float):Float;
	function GetUpperLimit():Float;
	function IsLimitEnabled():Bool;
	function IsMotorEnabled():Bool;
	function SetLimits(lower:Float, upper:Float):Void;
	function SetMaxMotorForce(force:Float):Void;
	function SetMotorSpeed(speed:Float):Void;
}
extern class B2PrismaticJointDef extends B2JointDef {
	var enableLimit : Bool;
	var enableMotor : Bool;
	var localAnchorA : Box2D.Common.Math.B2Vec2;
	var localAnchorB : Box2D.Common.Math.B2Vec2;
	var localAxisA : Box2D.Common.Math.B2Vec2;
	var lowerTranslation : Float;
	var maxMotorForce : Float;
	var motorSpeed : Float;
	var referenceAngle : Float;
	var upperTranslation : Float;
	function new():Void;
	function Initialize(bA:B2Body, bB:B2Body, anchor:Box2D.Common.Math.B2Vec2, axis:Box2D.Common.Math.B2Vec2):Void;
}
extern class B2PullyJoint extends B2Joint {
	function GetAnchorA():Box2D.Common.Math.B2Vec2;
	function GetAnchorB():Box2D.Common.Math.B2Vec2;
	function GetGroundAnchorA():Box2D.Common.Math.B2Vec2;
	function GetGroundAnchorB():Box2D.Common.Math.B2Vec2;
	function GetLength1():Float;
	function GetLength2():Float;
	function GetRatio():Float;
	function GetReactionForce(inv_dt:Float):Box2D.Common.Math.B2Vec2;
	function GetReactionTorque(inv_dt:Float):Float;
}
extern class B2PullyJointDef extends B2JointDef {
	var groundAnchorA : Box2D.Common.Math.B2Vec2;
	var groundAnchorB : Box2D.Common.Math.B2Vec2;
	var lengthA : Float;
	var lengthB : Float;
	var localAnchorA : Box2D.Common.Math.B2Vec2;
	var localAnchorB : Box2D.Common.Math.B2Vec2;
	var maxLengthA : Float;
	var maxLengthB : Float;
	var ratio : Float;
	function new():Void;
	function Initialize(bA:B2Body, bB:B2Body, gaA:Box2D.Common.Math.B2Vec2, gaB:Box2D.Common.Math.B2Vec2, anchorA:Box2D.Common.Math.B2Vec2, anchorB:Box2D.Common.Math.B2Vec2):Void;
}
extern class B2RevoluteJoint extends B2Joint {
	function EnableLimit(flag:Bool):Void;
	function EnableMotor(flag:Bool):Void;
	function GetAnchorA():Box2D.Common.Math.B2Vec2;
	function GetAnchorB():Box2D.Common.Math.B2Vec2;
	function GetJointAngle():Float;
	function GetJointSpeed():Float;
	function GetLowerLimit():Float;
	function GetMotorSpeed():Float;
	function GetMotorTorque():Float;
	function GetReactionForce(inv_dt:Float):Box2D.Common.Math.B2Vec2;
	function GetReactionTorque(inv_dt:Float):Float;
	function GetUpperLimit():Float;
	function IsLimitEnabled():Bool;
	function IsMotorEnabled():Bool;
	function SetLimits(lower:Float, upper:Float):Void;
	function SetMaxMotorTorque(torque:Float):Void;
	function SetMotorSpeed(speed:Float):Void;
}
extern class B2RevoluteJointDef extends B2JointDef {
	var enableLimit : Bool;
	var enableMotor : Bool;
	var localAnchorA : Box2D.Common.Math.B2Vec2;
	var localAnchorB : Box2D.Common.Math.B2Vec2;
	var lowerAngle : Float;
	var maxMotorTorque : Float;
	var motorSpeed : Float;
	var referenceAngle : Float;
	var upperAngle : Float;
	function new():Void;
	function Initialize(bA:B2Body, bB:B2Body, anchor:Box2D.Common.Math.B2Vec2):Void;
}
extern class B2WeldJoint extends B2Joint {
	function GetAnchorA():Box2D.Common.Math.B2Vec2;
	function GetAnchorB():Box2D.Common.Math.B2Vec2;
	function GetReactionForce(inv_dt:Float):Box2D.Common.Math.B2Vec2;
	function GetReactionTorque(inv_dt:Float):Float;
}
extern class B2WeldJointDef extends B2JointDef {
	var localAnchorA : Box2D.Common.Math.B2Vec2;
	var localAnchorB : Box2D.Common.Math.B2Vec2;
	var referenceAngle : Float;
	function new():Void;
	function Initialize(bA:B2Body, bB:B2Body, anchor:Box2D.Common.Math.B2Vec2):Void;
}
