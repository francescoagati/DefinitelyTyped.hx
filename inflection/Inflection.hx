typedef Inflection = {
	function indexOf<T, T2>(arr:Array<T>, item:T2, ?from_index:Float, ?compare_func:T -> T2 -> Bool):Float;
	function pluralize(str:String, ?plural:String):String;
	function singularize(str:String, ?singular:String):String;
	function inflect(str:String, count:Float, ?singular:String, ?plural:String):String;
	function camelize(str:String, ?low_first_letter:Bool):String;
	function underscore(str:String, ?all_upper_case:Bool):String;
	function humanize(str:String, ?low_first_letter:Bool):String;
	function capitalize(str:String):String;
	function dasherize(str:String):String;
	function titleize(str:String):String;
	function demodulize(str:String):String;
	function tableize(str:String):String;
	function classify(str:String):String;
	function foreign_key(str:String, ?drop_id_ubar:Bool):String;
	function ordinalize(str:String):String;
	function transform(str:String, arr:Array<String>):String;
};
extern class InflectionTopLevel {
	static var inflection : Inflection;
}
extern class InflectionTopLevel {
	static var inflection : Inflection;
}
