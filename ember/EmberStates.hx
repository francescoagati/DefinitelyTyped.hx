typedef Transition = {
	var targetName : String;
	var urlMethod : String;
	var intent : Dynamic;
	var params : haxe.extern.EitherType<{ }, Dynamic>;
	var pivotHandler : Dynamic;
	var resolveIndex : Float;
	var handlerInfos : Dynamic;
	var resolvedModels : haxe.extern.EitherType<{ }, Dynamic>;
	var isActive : Bool;
	var state : Dynamic;
	var queryParams : haxe.extern.EitherType<{ }, Dynamic>;
	var queryParamsOnly : Bool;
	var isTransition : Bool;
	var promise : Ember.RSVP.Promise;
	var data : Dynamic;
	function then(onFulfilled:haxe.Constraints.Function, onRejected:haxe.Constraints.Function, ?label:String):Ember.RSVP.Promise;
	function catch(onRejection:haxe.Constraints.Function, ?label:String):Ember.RSVP.Promise;
	function finally(callback:haxe.Constraints.Function, ?label:String):Ember.RSVP.Promise;
	function abort():EmberStates.Transition;
	function normalize(manager:Ember.StateManager, contexts:Array<Dynamic>):Void;
	function retry():EmberStates.Transition;
	function method(method:String):EmberStates.Transition;
	@:overload(function(eventName:String):Void { })
	function trigger(ignoreFailure:Bool, eventName:String):Void;
	function followRedirects():Ember.RSVP.Promise;
};
