typedef KnockoutAMDModule = {
	var baseDir : String;
	var initializer : String;
	var disposeMethod : String;
	var templateProperty : String;
};
typedef KnockoutAMDTemplate = {
	var defaultPath : String;
	var defaultSuffix : String;
	var defaultRequireTextPluginName : String;
};
typedef KnockoutBindingHandlers = {
	var module : KnockoutAMDModule;
};
typedef KnockoutStatic = {
	var amdTemplateEngine : KnockoutAMDTemplate;
};
extern class Knockout-amd-helpersTopLevel {
	static var ko : KnockoutStatic;
}
