extern class UtilsTopLevel {
	static function normalizeSortingInfo(info:String):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:Array<String>):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:Getter):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:Array<Getter>):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:{ var field : String; @:optional
	var dir : String; }):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:Array<{ var field : String; @:optional
	var dir : String; }>):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:{ var field : String; @:optional
	var desc : Bool; }):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:Array<{ var field : String; @:optional
	var desc : Bool; }>):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:{ var selector : String; @:optional
	var dir : String; }):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:Array<{ var selector : String; @:optional
	var dir : String; }>):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:{ var selector : String; @:optional
	var desc : Bool; }):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeSortingInfo(info:Array<{ var selector : String; @:optional
	var desc : Bool; }>):Array<{ var selector : String; @:optional
	var desc : Bool; }>;
	static function normalizeBinaryCriterion(criteria:Array<Dynamic>):Array<Dynamic>;
	static function keysEqual(key1:Dynamic, key2:Dynamic):Bool;
	static function keysEqual(keyExpr:Dynamic, key1:Dynamic, key2:Dynamic):Bool;
	static function toComparable(value:Date, ?caseSensitive:Bool):Float;
	static function toComparable(value:Guid, ?caseSensitive:Bool):String;
	static function toComparable(value:String, ?caseSensitive:Bool):String;
	static function compileGetter():Getter;
	static function compileGetter(expr:Array<Dynamic>):Getter;
	static function compileGetter(expr:String):Getter;
	static function compileGetter(expr:This):Getter;
	static function compileGetter(expr:Getter):Getter;
	static function compileSetter(expr:String):Setter;
}
