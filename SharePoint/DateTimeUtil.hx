extern class SimpleDate {
	function construction(year:Float, month:Float, day:Float, era:Float):Dynamic;
	function get_year():Float;
	function set_year(value:Float):Void;
	function get_month():Float;
	function set_month(value:Float):Void;
	function get_day():Float;
	function set_day(value:Float):Void;
	function get_era():Float;
	function set_era(value:Float):Void;
	static function dateEquals(date1:SimpleDate, date2:SimpleDate):Bool;
	static function dateLessEqual(date1:SimpleDate, date2:SimpleDate):Bool;
	static function dateGreaterEqual(date1:SimpleDate, date2:SimpleDate):Bool;
	static function dateLess(date1:SimpleDate, date2:SimpleDate):Bool;
	static function dateGreater(date1:SimpleDate, date2:SimpleDate):Bool;
}
