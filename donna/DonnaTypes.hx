typedef Metadata = {
	var files : { };
};
typedef File = {
	var objects : { };
	var exports : Dynamic;
};
typedef Line = { };
typedef Object = {
	var type : String;
	var name : String;
	var bindingType : String;
	@:optional
	var classProperties : Array<Dynamic>;
	@:optional
	var prototypeProperties : Array<Array<Float>>;
	@:optional
	var doc : String;
	var range : Array<Array<Float>>;
};
