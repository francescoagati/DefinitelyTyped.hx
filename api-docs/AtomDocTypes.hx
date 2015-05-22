typedef Metadata = {
	var classes : { };
};
typedef ClassInfo = {
	var name : String;
	var superClass : String;
	var visibility : String;
	var filename : String;
	var srcUrl : String;
	var summary : String;
	var description : String;
	var examples : Array<Example>;
	var sections : Array<Section>;
	var classMethods : Array<ClassMethod>;
	var classProperties : Array<ClassProperty>;
	var instanceMethods : Array<InstanceMethod>;
	var instanceProperties : Array<InstanceProperty>;
};
typedef Example = {
	var description : String;
	var lang : String;
	var code : String;
	var raw : String;
};
typedef Section = {
	var name : String;
	var description : String;
};
typedef ClassMethod = {
	var name : String;
	var sectionName : String;
	var srcUrl : String;
	var visibility : String;
	var summary : String;
	var description : String;
	var arguments : Array<Argument>;
	var returnValues : Array<ReturnValue>;
};
typedef ClassProperty = { };
typedef InstanceMethod = {
	var name : String;
	var sectionName : String;
	var srcUrl : String;
	var visibility : String;
	var summary : String;
	var description : String;
	var arguments : Array<Argument>;
	var returnValues : Array<ReturnValue>;
	var titledArguments : Array<TitledArgument>;
};
typedef InstanceProperty = {
	var name : String;
	var sectionName : String;
	var srcUrl : String;
	var visibility : String;
	var summary : String;
	var description : String;
};
typedef Argument = {
	var name : String;
	var description : String;
	var type : String;
	var isOptional : Bool;
	var children : Array<Argument>;
};
typedef TitledArgument = {
	var title : String;
	var description : String;
	var arguments : Array<Argument>;
};
typedef ReturnValue = {
	var type : String;
	var description : String;
};
