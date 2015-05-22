extern class MutableTypeArgumentMap {
	var typeParameterArgumentMap : TypeArgumentMap;
	var createdDuplicateTypeArgumentMap : Bool;
	function new(typeParameterArgumentMap:TypeArgumentMap):Void;
	function ensureTypeArgumentCopy():Void;
}
extern class PullInstantiationHelpersTopLevel {
	static function instantiateTypeArgument(resolver:PullTypeResolver, symbol:InstantiableSymbol, mutableTypeParameterMap:MutableTypeArgumentMap):Void;
	static function cleanUpTypeArgumentMap(symbol:InstantiableSymbol, mutableTypeArgumentMap:MutableTypeArgumentMap):Void;
	static function getAllowedToReferenceTypeParametersFromDecl(decl:PullDecl):Array<PullTypeParameterSymbol>;
	static function createTypeParameterArgumentMap(typeParameters:Array<PullTypeParameterSymbol>, typeArguments:Array<PullTypeSymbol>):TypeArgumentMap;
	static function updateTypeParameterArgumentMap(typeParameters:Array<PullTypeParameterSymbol>, typeArguments:Array<PullTypeSymbol>, typeParameterArgumentMap:TypeArgumentMap):TypeArgumentMap;
	static function updateMutableTypeParameterArgumentMap(typeParameters:Array<PullTypeParameterSymbol>, typeArguments:Array<PullTypeSymbol>, mutableMap:MutableTypeArgumentMap):Void;
	static function twoTypesAreInstantiationsOfSameNamedGenericType(type1:PullTypeSymbol, type2:PullTypeSymbol):Bool;
}
