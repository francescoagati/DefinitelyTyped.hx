typedef MatchingDelegate<T> = { };
typedef IterativeDelegate<T> = { };
typedef ItemCollection<T> = {
	function forEach(delegate:IterativeDelegate<T>):Void;
	@:overload(function(itemNumber:Float):T { })
	@:overload(function(itemName:String):T { })
	@:overload(function():Array<T> { })
	function get(delegate:MatchingDelegate<T>):Array<T>;
	function getLength():Float;
};
