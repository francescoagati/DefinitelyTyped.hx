extern class Durandal_systemTopLevel {
	static var getModuleId : Dynamic -> String;
	static var setModuleId : Dynamic -> String -> Void;
	static var debug : ?Bool -> Bool;
	static var isArray : Dynamic -> Bool;
	static var log : haxe.extern.Rest<Dynamic> -> Void;
	static var defer : ?haxe.Constraints.Function -> JQueryDeferred<Dynamic>;
	static var guid : Void -> String;
	static var acquire : haxe.extern.Rest<String> -> JQueryPromise<Dynamic>;
}
