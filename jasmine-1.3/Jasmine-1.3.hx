extern class Jasmine-1.3TopLevel {
	static function describe(description:String, specDefinitions:Void -> Void):Void;
	static function xdescribe(description:String, specDefinitions:Void -> Void):Void;
	static function it(expectation:String, assertion:Void -> Void):Void;
	static function it(expectation:String, assertion:?Dynamic -> Void -> Void):Void;
	static function xit(expectation:String, assertion:Void -> Void):Void;
	static function beforeEach(action:Void -> Void):Void;
	static function afterEach(action:Void -> Void):Void;
	static function expect(spy:haxe.Constraints.Function):jasmine.Matchers;
	static function expect(actual:Dynamic):jasmine.Matchers;
	static function spyOn(object:Dynamic, method:String):jasmine.Spy;
	static function runs(asyncMethod:haxe.Constraints.Function):Void;
	static function waitsFor(latchMethod:Void -> Bool, ?failureMessage:String, ?timeout:Float):Void;
	static function waits(?timeout:Float):Void;
}
