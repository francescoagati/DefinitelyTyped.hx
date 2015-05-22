typedef EmptyFunction = { };
typedef Matchers = {
	var not : Matchers;
	function toThrow(?expected:Dynamic):Bool;
	function toBe(expected:Dynamic):Bool;
	function toEqual(expected:Dynamic):Bool;
	function toBeFalsy():Bool;
	function toBeTruthy():Bool;
	function toBeNull():Bool;
	function toBeUndefined():Bool;
	function toMatch(expected:js.RegExp):Bool;
	function toContain(expected:String):Bool;
	function toBeCloseTo(expected:Float, delta:Float):Bool;
	function toBeGreaterThan(expected:Float):Bool;
	function toBeLessThen(expected:Float):Bool;
	function toBeCalled():Bool;
	function toBeCalledWith(args:haxe.extern.Rest<Dynamic>):Bool;
	function lastCalledWith(args:haxe.extern.Rest<Dynamic>):Bool;
};
typedef It = {
	function only(name:String, fn:EmptyFunction):Void;
};
typedef Require = {
	function requireActual(moduleName:String):Dynamic;
};
typedef Mock<T> = {
	function new():T;
	var mock : MockContext<T>;
	function mockClear():Void;
	function mockImplementation(fn:haxe.Constraints.Function):Mock<T>;
	function mockImpl(fn:haxe.Constraints.Function):Mock<T>;
	function mockReturnThis():Mock<T>;
	function mockReturnValue(value:Dynamic):Mock<T>;
	function mockReturnValueOnce(value:Dynamic):Mock<T>;
};
typedef MockContext<T> = {
	var calls : Array<Array<Dynamic>>;
	var instances : Array<T>;
};
extern class JestTopLevel {
	static function afterEach(fn:jest.EmptyFunction):Void;
	static function beforeEach(fn:jest.EmptyFunction):Void;
	static function describe(name:String, fn:jest.EmptyFunction):Void;
	static var it : jest.It;
	static function pit(name:String, fn:jest.EmptyFunction):Void;
	static var require : jest.Require;
	static function xdescribe(name:String, fn:jest.EmptyFunction):Void;
	static function xit(name:String, fn:jest.EmptyFunction):Void;
	static function expect(actual:Dynamic):jest.Matchers;
	static function autoMockOff():Void;
	static function autoMockOn():Void;
	static function clearAllTimers():Void;
	static function dontMock(moduleName:String):Void;
	static function genMockFromModule<T>(moduleName:String):Mock<T>;
	static function genMockFunction<T>():Mock<T>;
	static function genMockFn<T>():Mock<T>;
	static function mock(moduleName:String):Void;
	static function runAllTicks():Void;
	static function runAllTimers():Void;
	static function runOnlyPendingTimers():Void;
	static function setMock<T>(moduleName:String, moduleExports:T):Void;
}
extern class JestTopLevel {
	static function afterEach(fn:jest.EmptyFunction):Void;
	static function beforeEach(fn:jest.EmptyFunction):Void;
	static function describe(name:String, fn:jest.EmptyFunction):Void;
	static var it : jest.It;
	static function pit(name:String, fn:jest.EmptyFunction):Void;
	static var require : jest.Require;
	static function xdescribe(name:String, fn:jest.EmptyFunction):Void;
	static function xit(name:String, fn:jest.EmptyFunction):Void;
	static function expect(actual:Dynamic):jest.Matchers;
	static function autoMockOff():Void;
	static function autoMockOn():Void;
	static function clearAllTimers():Void;
	static function dontMock(moduleName:String):Void;
	static function genMockFromModule<T>(moduleName:String):Mock<T>;
	static function genMockFunction<T>():Mock<T>;
	static function genMockFn<T>():Mock<T>;
	static function mock(moduleName:String):Void;
	static function runAllTicks():Void;
	static function runAllTimers():Void;
	static function runOnlyPendingTimers():Void;
	static function setMock<T>(moduleName:String, moduleExports:T):Void;
}
