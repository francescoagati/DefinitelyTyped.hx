extern class Mat3TopLevel {
	static function create():GLM.IArray;
	static function clone(a:GLM.IArray):GLM.IArray;
	static function copy(out:GLM.IArray, a:GLM.IArray):GLM.IArray;
	static function identity(out:GLM.IArray):GLM.IArray;
	static function transpose(out:GLM.IArray, a:GLM.IArray):GLM.IArray;
	static function invert(out:GLM.IArray, a:GLM.IArray):GLM.IArray;
	static function adjoint(out:GLM.IArray, a:GLM.IArray):GLM.IArray;
	static function determinant(a:GLM.IArray):Float;
	static function multiply(out:GLM.IArray, a:GLM.IArray, b:GLM.IArray):GLM.IArray;
	static function mul(out:GLM.IArray, a:GLM.IArray, b:GLM.IArray):GLM.IArray;
	static function str(mat:GLM.IArray):String;
	static function frob(a:GLM.IArray):Float;
	static function normalFromMat4(out:GLM.IArray, a:GLM.IArray):GLM.IArray;
	static function fromQuat(out:GLM.IArray, q:GLM.IArray):GLM.IArray;
	static function fromMat4(out:GLM.IArray, a:GLM.IArray):GLM.IArray;
	static function scale(out:GLM.IArray, a:GLM.IArray, v:GLM.IArray):GLM.IArray;
	static function fromMat2d(out:GLM.IArray, a:GLM.IArray):GLM.IArray;
	static function translate(out:GLM.IArray, a:GLM.IArray, v:GLM.IArray):GLM.IArray;
	static function rotate(out:GLM.IArray, a:GLM.IArray, rad:Float):GLM.IArray;
}
