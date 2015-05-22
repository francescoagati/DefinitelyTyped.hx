extern class B2Color {
	var r : Float;
	var g : Float;
	var b : Float;
	var color : Float;
	function new(rr:Float, gg:Float, bb:Float):Void;
	function Set(rr:Float, gg:Float, bb:Float):Void;
}
extern class B2Settings {
	static function b2Assert(a:Bool):Void;
	static function b2MixFriction(friction1:Float, friction2:Float):Float;
	static function b2MixRestitution(restitution1:Float, restitution2:Float):Float;
	static var b2_aabbExtension : Float;
	static var b2_aabbMultiplier : Float;
	static var b2_angularSleepTolerance : Float;
	static var b2_angularSlop : Float;
	static var b2_contactBaumgarte : Float;
	static var b2_linearSleepTolerance : Float;
	static var b2_linearSlop : Float;
	static var b2_maxAngularCorrection : Float;
	static var b2_maxLinearCorrection : Float;
	static var b2_maxManifoldPoints : Float;
	static var b2_maxRotation : Float;
	static var b2_maxRotationSquared : Float;
	static var b2_maxTOIContactsPerIsland : Float;
	static var b2_maxTOIJointsPerIsland : Float;
	static var b2_maxTranslation : Float;
	static var b2_maxTranslationSquared : Float;
	static var b2_pi : Float;
	static var b2_polygonRadius : Float;
	static var b2_timeToSleep : Float;
	static var b2_toiSlop : Float;
	static var b2_velocityThreshold : Float;
	static var USHRT_MAX : Float;
	static var VERSION : String;
}
