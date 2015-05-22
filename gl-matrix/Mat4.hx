extern class Mat4TopLevel {
	static function create():GLM.IArray;
	static function clone(a:GLM.IArray):GLM.IArray;
	static function copy(out:GLM.IArray, a:GLM.IArray):GLM.IArray;
	static function identity(a:GLM.IArray):GLM.IArray;
	static function transpose(out:GLM.IArray, a:GLM.IArray):GLM.IArray;
	static function invert(out:GLM.IArray, a:GLM.IArray):GLM.IArray;
	static function adjoint(out:GLM.IArray, a:GLM.IArray):GLM.IArray;
	static function determinant(a:GLM.IArray):Float;
	static function multiply(out:GLM.IArray, a:GLM.IArray, b:GLM.IArray):GLM.IArray;
	static function mul(out:GLM.IArray, a:GLM.IArray, b:GLM.IArray):GLM.IArray;
	static function translate(out:GLM.IArray, a:GLM.IArray, v:GLM.IArray):GLM.IArray;
	static function scale(out:GLM.IArray, a:GLM.IArray, v:GLM.IArray):GLM.IArray;
	static function rotate(out:GLM.IArray, a:GLM.IArray, rad:Float, axis:GLM.IArray):GLM.IArray;
	static function rotateX(out:GLM.IArray, a:GLM.IArray, rad:Float):GLM.IArray;
	static function rotateY(out:GLM.IArray, a:GLM.IArray, rad:Float):GLM.IArray;
	static function rotateZ(out:GLM.IArray, a:GLM.IArray, rad:Float):GLM.IArray;
	static function frustum(out:GLM.IArray, left:Float, right:Float, bottom:Float, top:Float, near:Float, far:Float):GLM.IArray;
	static function perspective(out:GLM.IArray, fovy:Float, aspect:Float, near:Float, far:Float):GLM.IArray;
	static function ortho(out:GLM.IArray, left:Float, right:Float, bottom:Float, top:Float, near:Float, far:Float):GLM.IArray;
	static function lookAt(out:GLM.IArray, eye:GLM.IArray, center:GLM.IArray, up:GLM.IArray):GLM.IArray;
	static function str(mat:GLM.IArray):String;
	static function frob(a:GLM.IArray):Float;
	static function fromRotationTranslation(out:GLM.IArray, q:GLM.IArray, v:GLM.IArray):GLM.IArray;
	static function fromQuat(out:GLM.IArray, q:GLM.IArray):GLM.IArray;
}
