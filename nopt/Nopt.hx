typedef CommandData = { };
typedef TypeDefs = { };
typedef TypeInfo = {
	var type : Dynamic;
	var validate : CommandData -> String -> String -> Bool;
};
extern class NoptTopLevel {
	static function clean(data:CommandData, types:FlagTypeMap, ?typeDefs:TypeDefs):String;
	static var typeDefs : TypeDefs;
	static function nopt(types:FlagTypeMap, ?shorthands:ShortFlags, ?args:Array<String>, ?slice:Float):OptionsParsed;
}
typedef FlagTypeMap = { };
typedef ShortFlags = { };
typedef OptionsParsed = {
	var argv : { var remain : Array<String>; var cooked : Array<String>; var original : Array<String>; };
};
extern class NoptTopLevel {
	static function clean(data:CommandData, types:FlagTypeMap, ?typeDefs:TypeDefs):String;
	static var typeDefs : TypeDefs;
	static function nopt(types:FlagTypeMap, ?shorthands:ShortFlags, ?args:Array<String>, ?slice:Float):OptionsParsed;
}
extern class NoptTopLevel {
	static function clean(data:CommandData, types:FlagTypeMap, ?typeDefs:TypeDefs):String;
	static var typeDefs : TypeDefs;
	static function nopt(types:FlagTypeMap, ?shorthands:ShortFlags, ?args:Array<String>, ?slice:Float):OptionsParsed;
}
