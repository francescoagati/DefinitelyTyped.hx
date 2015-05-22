typedef KoLiteActivityOptions = {
	@:optional
	var color : Dynamic;
	@:optional
	var segments : Float;
	@:optional
	var space : Float;
	@:optional
	var length : Float;
	@:optional
	var width : Float;
	@:optional
	var speed : Float;
	@:optional
	var align : String;
	@:optional
	var valign : String;
	@:optional
	var padding : Float;
};
typedef KoLiteActivity = {
	var defaults : KoLiteActivityOptions;
	function getOpacity(options:{ @:optional
	var steps : Float; @:optional
	var segments : Float; @:optional
	var opacity : Float; }, i:Float):Float;
};
typedef KnockoutBindingHandlers = {
	var activity : KnockoutBindingHandler;
};
typedef JQuery = {
	var activity : KoLiteActivity;
	function activityEx(isLoading:Bool):JQuery;
};
typedef DirtyFlag = {
	var isDirty : KnockoutComputed<Bool>;
	function new(objectToTrack:Dynamic, ?isInitiallyDirty:Bool, ?hashFunction:Void -> Dynamic):Dynamic;
	function reset():Void;
};
typedef KnockoutStatic = {
	var DirtyFlag : DirtyFlag;
};
typedef KoliteCommand = {
	var canExecute : KnockoutComputed<Bool>;
	function execute(args:haxe.extern.Rest<Dynamic>):Dynamic;
};
typedef KoliteAsyncCommand = {
	>KoliteCommand,
	var isExecuting : KnockoutObservable<Bool>;
};
typedef KoLiteCommandOptions = {
	function execute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	@:optional
	var canExecute : Bool -> Dynamic;
};
typedef KnockoutStatic = {
	function command(options:KoLiteCommandOptions):KoliteCommand;
	function asyncCommand(options:KoLiteCommandOptions):KoliteAsyncCommand;
};
typedef KnockoutUtils = {
	function wrapAccessor(accessor:Dynamic):haxe.Constraints.Function;
};
typedef KnockoutBindingHandlers = {
	var command : KnockoutBindingHandler;
};
