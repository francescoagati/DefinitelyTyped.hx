extern class B2Mat22 {
	var col1 : B2Vec2;
	var col2 : B2Vec2;
	function new():Void;
	function Abs():Void;
	function AddM(m:B2Mat22):Void;
	function Copy():B2Mat22;
	static function FromAngle(angle:Float):B2Mat22;
	static function FromVV(c1:B2Vec2, c2:B2Vec2):B2Mat22;
	function GetAngle():Float;
	function GetInverse(out:B2Mat22):B2Mat22;
	function Set(angle:Float):Void;
	function SetIdentity():Void;
	function SetM(m:B2Mat22):Void;
	function SetVV(c1:B2Vec2, c2:B2Vec2):Void;
	function SetZero():Void;
	function Solve(out:B2Vec2, bX:Float, bY:Float):B2Vec2;
}
extern class B2Mat33 {
	var col1 : B2Vec3;
	var col2 : B2Vec3;
	var col3 : B2Vec3;
	function new(c1:B2Vec3, c2:B2Vec3, c3:B2Vec3):Void;
	function AddM(m:B2Mat33):Void;
	function Copy():B2Mat33;
	function SetIdentity():Void;
	function SetM(m:B2Mat33):Void;
	function SetVVV(c1:B2Vec3, c2:B2Vec3, c3:B2Vec3):Void;
	function SetZero():Void;
	function Solve22(out:B2Vec2, bX:Float, bY:Float):B2Vec2;
	function Solve33(out:B2Vec3, bX:Float, bY:Float, bZ:Float):B2Vec3;
}
extern class B2Math {
	static function IsValid(x:Float):Bool;
	static function Dot(a:B2Vec2, b:B2Vec2):Float;
	static function CrossVV(a:B2Vec2, b:B2Vec2):Float;
	static function CrossVF(a:B2Vec2, s:Float):B2Vec2;
	static function CrossFV(s:Float, a:B2Vec2):B2Vec2;
	static function MulMV(A:B2Mat22, v:B2Vec2):B2Vec2;
	static function MulTMV(A:B2Mat22, v:B2Vec2):B2Vec2;
	static function MulX(T:B2Transform, v:B2Vec2):B2Vec2;
	static function MulXT(T:B2Transform, v:B2Vec2):B2Vec2;
	static function AddVV(a:B2Vec2, b:B2Vec2):B2Vec2;
	static function SubtractVV(a:B2Vec2, b:B2Vec2):B2Vec2;
	static function Distance(a:B2Vec2, b:B2Vec2):Float;
	static function DistanceSquared(a:B2Vec2, b:B2Vec2):Float;
	static function MulFV(s:Float, a:B2Vec2):B2Vec2;
	static function AddMM(A:B2Mat22, B:B2Mat22):B2Mat22;
	static function MulMM(A:B2Mat22, B:B2Mat22):B2Mat22;
	static function MulTMM(A:B2Mat22, B:B2Mat22):B2Mat22;
	static function Abs(a:Float):Float;
	static function AbsV(a:B2Vec2):B2Vec2;
	static function AbsM(A:B2Mat22):B2Mat22;
	static function Min(a:Float, b:Float):Float;
	static function MinV(a:B2Vec2, b:B2Vec2):B2Vec2;
	static function Max(a:Float, b:Float):Float;
	static function MaxV(a:B2Vec2, b:B2Vec2):B2Vec2;
	static function Clamp(a:Float, low:Float, high:Float):Float;
	static function ClampV(a:B2Vec2, low:B2Vec2, high:B2Vec2):B2Vec2;
	static function Swap(a:Dynamic, b:Dynamic):Void;
	static function Random():Float;
	static function RandomRange(lo:Float, hi:Float):Float;
	static function NextPowerOfTwo(x:Float):Float;
	static function IsPowerOfTwo(x:Float):Bool;
	static var b2Vec2_zero : B2Vec2;
	static var b2Mat22_identity : B2Mat22;
	static var b2Transform_identity : B2Transform;
}
extern class B2Sweep {
	var a : Float;
	var a0 : Float;
	var c : B2Vec2;
	var c0 : B2Vec2;
	var localCenter : B2Vec2;
	var t0 : B2Vec2;
	function Advance(t:Float):Void;
	function Copy():B2Sweep;
	function GetTransform(xf:B2Transform, alpha:Float):Void;
	function Set(other:B2Sweep):Void;
}
extern class B2Transform {
	var position : B2Vec2;
	var R : B2Mat22;
	function new(pos:B2Vec2, r:B2Mat22):Void;
	function GetAngle():Float;
	function Initialize(pos:B2Vec2, r:B2Mat22):Void;
	function Set(x:B2Transform):Void;
	function SetIdentity():Void;
}
extern class B2Vec2 {
	var x : Float;
	var y : Float;
	function new(?x:Float, ?y:Float):Void;
	function Abs():Void;
	function Add(v:B2Vec2):Void;
	function Copy():B2Vec2;
	function CrossFV(s:Float):Void;
	function CrossVF(s:Float):Void;
	function GetNegative():B2Vec2;
	function IsValid():Bool;
	function Length():Float;
	function LengthSquared():Float;
	static function Make(x:Float, y:Float):B2Vec2;
	function MaxV(b:B2Vec2):Void;
	function MinV(b:B2Vec2):Void;
	function MulM(A:B2Mat22):Void;
	function Multiply(a:Float):Void;
	function MulTM(A:B2Mat22):Void;
	function NegativeSelf():Void;
	function Normalize():Float;
	function Set(?x:Float, ?y:Float):Void;
	function SetV(v:B2Vec2):Void;
	function SetZero():Void;
	function Subtract(v:B2Vec2):Void;
}
extern class B2Vec3 {
	var x : Float;
	var y : Float;
	var z : Float;
	function new(?x:Float, ?y:Float, ?z:Float):Void;
	function Add(v:B2Vec3):Void;
	function Copy():B2Vec3;
	function GetNegative():B2Vec3;
	function Multiply(a:Float):Void;
	function NegativeSelf():Void;
	function Set(?x:Float, ?y:Float, ?z:Float):Void;
	function SetV(v:B2Vec3):Void;
	function SetZero():Void;
	function Subtract(v:B2Vec3):Void;
}
