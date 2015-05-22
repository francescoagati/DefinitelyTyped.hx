extern class Mat2TopLevel {
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
	static function rotate(out:GLM.IArray, a:GLM.IArray, rad:Float):GLM.IArray;
	static function scale(out:GLM.IArray, a:GLM.IArray, v:GLM.IArray):GLM.IArray;
	static function str(a:GLM.IArray):String;
	static function frob(a:GLM.IArray):Float;
	static function LDU(L:GLM.IArray, D:GLM.IArray, U:GLM.IArray, a:GLM.IArray):GLM.IArray;
}
