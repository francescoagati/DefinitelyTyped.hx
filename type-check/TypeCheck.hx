typedef CustomType = { };
typedef Options = {
	var customTypes : CustomType;
};
typedef TC = {
	var VERSION : String;
	var typeCheck : String -> Dynamic -> ?Options -> Bool;
	var parseType : String -> Dynamic;
	var parsedTypeCheck : Dynamic -> Dynamic -> Bool;
};
