extern class Dsv {
	function parse<TRow>(table:String, ?accessor:Dynamic -> TRow):Array<TRow>;
	function parseRows<TRow>(table:String, ?accessor:Array<String> -> TRow):Array<TRow>;
	function format(rows:Array<Dynamic>):String;
	function formatRows(rows:Array<Dynamic>):String;
}
