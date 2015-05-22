extern class Reputation {
	function new():Void;
	static function setLike(context:SP.ClientContext, listId:String, itemId:Float, like:Bool):Dynamic;
	static function setRating(context:SP.ClientContext, listId:String, itemId:Float, rating:Float):Dynamic;
}
