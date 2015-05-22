typedef Material = {
	>THREE.Material,
	var _physijs : { var id : Float; var friction : Float; var restriction : Float; };
};
typedef Constraint = {
	function getDefinition():Dynamic;
};
typedef PointConstraintDefinition = {
	var type : String;
	var id : Float;
	var objecta : THREE.Object3D;
	var objectb : THREE.Object3D;
	var positiona : THREE.Vector3;
	var positionb : THREE.Vector3;
};
extern class PointConstraint {
	function new(objecta:THREE.Object3D, objectb:THREE.Object3D, ?position:THREE.Vector3):Void;
	function getDefinition():PointConstraintDefinition;
}
typedef HingeConstraintDefinition = {
	var type : String;
	var id : Float;
	var objecta : THREE.Object3D;
	var objectb : THREE.Object3D;
	var positiona : THREE.Vector3;
	var positionb : THREE.Vector3;
	var axis : THREE.Vector3;
};
extern class HingeConstraint {
	function new(objecta:THREE.Object3D, objectb:THREE.Object3D, position:THREE.Vector3, ?axis:THREE.Vector3):Void;
	function getDefinition():HingeConstraintDefinition;
	function setLimits(low:Float, high:Float, bias_factor:Float, relaxation_factor:Float):Void;
	function enableAngularMotor(velocity:Float, acceleration:Float):Void;
	function disableMotor():Void;
}
typedef SliderConstraintDefinition = {
	var type : String;
	var id : Float;
	var objecta : THREE.Object3D;
	var objectb : THREE.Object3D;
	var positiona : THREE.Vector3;
	var positionb : THREE.Vector3;
	var axis : THREE.Vector3;
};
extern class SliderConstraint {
	function new(objecta:THREE.Object3D, objectb:THREE.Object3D, position:THREE.Vector3, ?axis:THREE.Vector3):Void;
	function getDefinition():SliderConstraintDefinition;
	function setLimits(lin_lower:Float, lin_upper:Float, ang_lower:Float, ang_upper:Float):Void;
	function setRestitution(linear:Float, angular:Float):Void;
	function enableLinearMotor(velocity:Float, acceleration:Float):Void;
	function disableLinearMotor():Void;
	function enableAngularMotor(velocity:Float, acceleration:Float):Void;
	function disableAngularMotor():Void;
}
typedef ConeTwistConstraintDefinition = {
	var type : String;
	var id : Float;
	var objecta : THREE.Object3D;
	var objectb : THREE.Object3D;
	var positiona : THREE.Vector3;
	var positionb : THREE.Vector3;
	var axisa : THREE.Vector3;
	var axisb : THREE.Vector3;
};
extern class ConeTwistConstraint {
	function new(objecta:THREE.Object3D, objectb:THREE.Object3D, position:THREE.Vector3):Void;
	function getDefinition():ConeTwistConstraintDefinition;
	function setLimit(x:Float, y:Float, z:Float):Void;
	function enableMotor():Void;
	function setMaxMotorImpulse(max_impulse:Float):Void;
	@:overload(function(target:THREE.Euler):Void { })
	@:overload(function(target:THREE.Matrix4):Void { })
	function setMotorTarget(target:THREE.Vector3):Void;
	function disableMotor():Void;
}
typedef DOFConstraintDefinition = {
	var type : String;
	var id : Float;
	var objecta : THREE.Object3D;
	var objectb : THREE.Object3D;
	var positiona : THREE.Vector3;
	var positionb : THREE.Vector3;
	var axisa : THREE.Vector3;
	var axisb : THREE.Vector3;
};
extern class DOFConstraint {
	function new(objecta:THREE.Object3D, objectb:THREE.Object3D, ?position:THREE.Vector3):Void;
	function getDefinition():DOFConstraintDefinition;
	function setLinearLowerLimit(limit:THREE.Vector3):Void;
	function setLinearUpperLimit(limit:THREE.Vector3):Void;
	function setAngularLowerLimit(limit:THREE.Vector3):Void;
	function setAngularUpperLimit(limit:THREE.Vector3):Void;
	function enableAngularMotor(which:Float):Void;
	function configureAngularMotor(which:Float, low_angle:Float, high_angle:Float, velocity:Float, max_force:Float):Void;
	function disableAngularMotor(which:Float):Void;
}
typedef SceneParameters = {
	@:optional
	var ammo : String;
	@:optional
	var fixedTimeStep : Float;
	@:optional
	var rateLimit : Bool;
};
extern class Scene extends THREE.Scene {
	function new(?param:SceneParameters):Void;
	function addConstraint(constraint:Constraint, ?show_marker:Bool):Void;
	function onSimulationResume():Void;
	function removeConstraint(constraint:Constraint):Void;
	function execute(cmd:String, params:Dynamic):Void;
	function add(object:THREE.Object3D):Void;
	function remove(object:THREE.Object3D):Void;
	function setFixedTimeStep(fixedTimeStep:Float):Void;
	function setGravity(gravity:Float):Void;
	function simulate(?timeStep:Float, ?maxSubSteps:Float):Bool;
	function addEventListener(event_name:String, callback:Dynamic -> Void):Void;
	function removeEventListener(event_name:String, callback:Dynamic -> Void):Void;
	@:overload(function(event:{ var type : String; var target : Dynamic; }):Void { })
	function dispatchEvent(event_name:String):Void;
}
extern class Mesh extends THREE.Mesh {
	function new(geometry:THREE.Geometry, ?material:THREE.Material, ?mass:Float):Void;
	function applyCentralImpulse(force:THREE.Vector3):Void;
	function applyImpulse(force:THREE.Vector3, offset:THREE.Vector3):Void;
	function applyCentralForce(force:THREE.Vector3):Void;
	function applyForce(force:THREE.Vector3, offset:THREE.Vector3):Void;
	function getAngularVelocity():THREE.Vector3;
	function setAngularVelocity(velocity:THREE.Vector3):Void;
	function getLinearVelocity():THREE.Vector3;
	function setLinearVelocity(velocity:THREE.Vector3):Void;
	function setAngularFactor(factor:THREE.Vector3):Void;
	function setLinearFactor(factor:THREE.Vector3):Void;
	function setDamping(linear:Float, angular:Float):Void;
	function setCcdMotionThreshold(threshold:Float):Void;
	function setCcdSweptSphereRadius(radius:Float):Void;
	function addEventListener(event_name:String, callback:Dynamic -> Void):Void;
	function removeEventListener(event_name:String, callback:Dynamic -> Void):Void;
	@:overload(function(event:{ var type : String; var target : Dynamic; }):Void { })
	function dispatchEvent(event_name:String):Void;
}
extern class PlaneMesh extends Mesh {
	function new(geometry:THREE.Geometry, material:THREE.Material, ?mass:Float):Void;
}
extern class HeightfieldMesh extends Mesh {
	function new(geometry:THREE.Geometry, material:THREE.Material, ?mass:Float, ?xdiv:Float, ?ydiv:Float):Void;
}
extern class BoxMesh extends Mesh {
	function new(geometry:THREE.Geometry, material:THREE.Material, ?mass:Float):Void;
}
extern class SphereMesh extends Mesh {
	function new(geometry:THREE.Geometry, material:THREE.Material, ?mass:Float):Void;
}
extern class CylinderMesh extends Mesh {
	function new(geometry:THREE.Geometry, material:THREE.Material, ?mass:Float):Void;
}
extern class CapsuleMesh extends Mesh {
	function new(geometry:THREE.Geometry, material:THREE.Material, ?mass:Float):Void;
}
extern class ConeMesh extends Mesh {
	function new(geometry:THREE.Geometry, material:THREE.Material, ?mass:Float):Void;
}
extern class ConcaveMesh extends Mesh {
	function new(geometry:THREE.Geometry, material:THREE.Material, ?mass:Float):Void;
}
extern class ConvexMesh extends Mesh {
	function new(geometry:THREE.Geometry, material:THREE.Material, ?mass:Float):Void;
}
extern class Vehicle {
	function new(mesh:Mesh, ?tuning:VehicleTuning):Void;
	var mesh : THREE.Mesh;
	var wheels : Array<THREE.Mesh>;
	function addWheel(wheel_geometry:THREE.Geometry, wheel_material:THREE.Material, connection_point:THREE.Vector3, wheel_direction:THREE.Vector3, wheel_axle:THREE.Vector3, suspension_rest_length:Float, wheel_radius:Float, is_front_wheel:Bool, ?tuning:VehicleTuning):Void;
	function setSteering(amount:Float, ?wheel:THREE.Mesh):Void;
	function setBrake(amount:Float, ?wheel:THREE.Mesh):Void;
	function applyEngineForce(amount:Float, ?wheel:THREE.Mesh):Void;
}
extern class VehicleTuning {
	function new(?suspension_stiffness:Float, ?suspension_compression:Float, ?suspension_damping:Float, ?max_suspension_travel:Float, ?friction_slip:Float, ?max_suspension_force:Float):Void;
	var suspension_stiffness : Float;
	var suspension_compression : Float;
	var suspension_damping : Float;
	var max_suspension_travel : Float;
	var friction_slip : Float;
	var max_suspension_force : Float;
}
extern class PhysijsTopLevel {
	static function noConflict():Dynamic;
	static function createMaterial(material:THREE.Material, ?friction:Float, ?restitution:Float):Material;
	static var scripts : { var worker : String; var ammo : String; };
}
