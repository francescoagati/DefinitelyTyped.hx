typedef TestScheduler = {
	>VirtualTimeScheduler<Float, Float>,
	function createColdObservable<T>(records:haxe.extern.Rest<Recorded>):Observable<T>;
	function createHotObservable<T>(records:haxe.extern.Rest<Recorded>):Observable<T>;
	function createObserver<T>():MockObserver<T>;
	function startWithTiming<T>(create:Void -> Observable<T>, createdAt:Float, subscribedAt:Float, disposedAt:Float):MockObserver<T>;
	function startWithDispose<T>(create:Void -> Observable<T>, disposedAt:Float):MockObserver<T>;
	function startWithCreate<T>(create:Void -> Observable<T>):MockObserver<T>;
};
extern class Recorded {
	function new(time:Float, value:Dynamic, ?equalityComparer:Dynamic -> Dynamic -> Bool):Void;
	function equals(other:Recorded):Bool;
	function toString():String;
	var time : Float;
	var value : Dynamic;
}
extern class Subscription {
	function new(subscribeAt:Float, ?unsubscribeAt:Float):Void;
	function equals(other:Subscription):Bool;
}
typedef MockObserver<T> = {
	>Observer<T>,
	var messages : Array<Recorded>;
};
typedef MockObserverStatic = {
	>ObserverStatic,
	function new<T>(scheduler:IScheduler):MockObserver<T>;
};
extern class RxTopLevel {
	static var TestScheduler : { function new():TestScheduler; };
	static var ReactiveTest : { var created : Float; var subscribed : Float; var disposed : Float; @:overload(function(ticks:Float, predicate:Dynamic -> Bool):Recorded { })
	function onNext(ticks:Float, value:Dynamic):Recorded; @:overload(function(ticks:Float, predicate:Dynamic -> Bool):Recorded { })
	function onError(ticks:Float, exception:Dynamic):Recorded; function onCompleted(ticks:Float):Recorded; function subscribe(subscribeAt:Float, ?unsubscribeAt:Float):Subscription; };
	static var MockObserver : MockObserverStatic;
}
