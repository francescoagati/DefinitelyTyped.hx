typedef LivestampGlobal = {
	function update():Void;
	function pause():Void;
	function resume():Void;
	@:overload(function(interval:Float):Void { })
	function interval():Float;
};
typedef JQueryStatic = {
	var livestamp : LivestampGlobal;
};
typedef JQuery = {
	@:overload(function(moment:moment.Moment):JQuery { })
	@:overload(function(timestamp:Float):JQuery { })
	@:overload(function(timestamp:String):JQuery { })
	function livestamp(date:Date):JQuery;
};
