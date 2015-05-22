typedef Mina = {
	var id : String;
	var duration : haxe.Constraints.Function;
	var easing : haxe.Constraints.Function;
	var speed : haxe.Constraints.Function;
	var status : haxe.Constraints.Function;
	var stop : haxe.Constraints.Function;
};
extern class MinaTopLevel {
	static function backin(n:Float):Float;
	static function backout(n:Float):Float;
	static function bounce(n:Float):Float;
	static function easein(n:Float):Float;
	static function easeinout(n:Float):Float;
	static function easeout(n:Float):Float;
	static function elastic(n:Float):Float;
	static function getById(id:String):Dynamic;
	static function linear(n:Float):Float;
	static function time():Float;
	static function Snap(width:Float, height:Float):Snap.Paper;
	static function Snap(query:String):Snap.Paper;
	static function Snap(DOM:SVGElement):Snap.Paper;
}
