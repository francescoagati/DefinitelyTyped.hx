typedef DoTStatic = {
	var version : String;
	var templateSettings : TemplateSettings;
	function template(tmpl:String, ?c:TemplateSettings, ?def:Dynamic):haxe.Constraints.Function;
	function compile(tmpl:String, ?def:Dynamic):haxe.Constraints.Function;
};
typedef TemplateSettings = {
	var evaluate : js.RegExp;
	var interpolate : js.RegExp;
	var encode : js.RegExp;
	var use : js.RegExp;
	var useParams : js.RegExp;
	var define : js.RegExp;
	var defineParams : js.RegExp;
	var conditional : js.RegExp;
	var iterate : js.RegExp;
	var varname : String;
	var strip : Bool;
	var append : Bool;
	var selfcontained : Bool;
};
typedef String = {
	function encodeHTML():String;
};
