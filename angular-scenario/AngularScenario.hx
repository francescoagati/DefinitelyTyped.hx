typedef RunFunction = { };
typedef RunFunctionWithDescription = { };
typedef PauseFunction = { };
typedef SleepFunction = { };
typedef Future = { };
typedef TestWindow = {
	function href():Future;
	function path():Future;
	function search():Future;
	function hash():Future;
};
typedef TestLocation = {
	function url():Future;
	function path():Future;
	function search():Future;
	function hash():Future;
};
typedef Browser = {
	@:overload(function(urlDescription:String, urlFunction:Void -> String):Void { })
	function navigateTo(url:String):Void;
	function reload():Void;
	function window():TestWindow;
	function location():TestLocation;
};
typedef Matchers = {
	function toEqual(value:Dynamic):Void;
	function toBe(value:Dynamic):Void;
	function toBeDefined():Void;
	function toBeTruthy():Void;
	function toBeFalsy():Void;
	function toMatch(regularExpression:Dynamic):Void;
	function toBeNull():Void;
	function toContain(value:Dynamic):Void;
	function toBeLessThan(value:Dynamic):Void;
	function toBeGreaterThan(value:Dynamic):Void;
};
typedef CustomMatchers = {
	>Matchers,
};
typedef Expect = {
	>CustomMatchers,
	function not():angularScenario.CustomMatchers;
};
typedef UsingFunction = { };
typedef BindingFunction = { };
typedef Input = {
	function enter(value:Dynamic):Dynamic;
	function check():Dynamic;
	function select(radioButtonValue:Dynamic):Dynamic;
	function val():Future;
};
typedef Repeater = {
	function count():Future;
	function row(index:Float):Future;
	function column(ngBindingExpression:String):Future;
};
typedef Select = {
	@:overload(function(listOfValues:haxe.extern.Rest<Dynamic>):Dynamic { })
	function option(value:Dynamic):Dynamic;
};
typedef Element = {
	function count():Future;
	function click():Dynamic;
	function dblclick():Dynamic;
	function mouseover():Dynamic;
	function mousedown():Dynamic;
	function mouseup():Dynamic;
	function query(callback:JQuery -> Dynamic -> Dynamic -> Dynamic -> Dynamic):Dynamic;
	@:overload(function(value:Dynamic):Void { })
	function val():Future;
	@:overload(function(value:Dynamic):Void { })
	function text():Future;
	@:overload(function(value:Dynamic):Void { })
	function html():Future;
	@:overload(function(value:Dynamic):Void { })
	function height():Future;
	@:overload(function(value:Dynamic):Void { })
	function innerHeight():Future;
	@:overload(function(value:Dynamic):Void { })
	function outerHeight():Future;
	@:overload(function(value:Dynamic):Void { })
	function width():Future;
	@:overload(function(value:Dynamic):Void { })
	function innerWidth():Future;
	@:overload(function(value:Dynamic):Void { })
	function outerWidth():Future;
	@:overload(function(value:Dynamic):Void { })
	function position():Future;
	@:overload(function(value:Dynamic):Void { })
	function scrollLeft():Future;
	@:overload(function(value:Dynamic):Void { })
	function scrollTop():Future;
	@:overload(function(value:Dynamic):Void { })
	function offset():Future;
	@:overload(function(key:Dynamic, value:Dynamic):Void { })
	function attr(key:Dynamic):Future;
	@:overload(function(key:Dynamic, value:Dynamic):Void { })
	function prop(key:Dynamic):Future;
	@:overload(function(key:Dynamic, value:Dynamic):Void { })
	function css(key:Dynamic):Future;
};
