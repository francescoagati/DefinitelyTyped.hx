typedef KnockoutPostBox = {
	function subscribe<T>(topic:String, handler:T -> Void, ?target:Dynamic):KnockoutSubscription;
	function publish<T>(topic:String, ?value:T):Void;
	function defaultComparer<T>(newValue:T, oldValue:T):Bool;
	var serializer : Dynamic -> String;
	function reset():Void;
};
typedef KnockoutObservable<T> = {
	function subscribeTo(topic:String, ?useLastPublishedValueToInitialize:Bool, ?transform:Dynamic -> T):KnockoutObservable<T>;
	function unsubscribeFrom(topic:String):KnockoutObservable<T>;
	function publishOn(topic:String, ?skipInitialPublish:Bool, ?equalityComparer:T -> T -> Bool):KnockoutObservable<T>;
	function stopPublishingOn(topic:String):KnockoutObservable<T>;
	function syncWith(topic:String, ?initializeWithLatestValue:Bool, ?skipInitialPublish:Bool, ?equalityComparer:T -> T -> Bool):KnockoutObservable<T>;
};
typedef KnockoutObservableArray<T> = {
	function subscribeTo(topic:String, ?useLastPublishedValueToInitialize:Bool, ?transform:Dynamic -> Dynamic):KnockoutObservableArray<T>;
	function unsubscribeFrom(topic:String):KnockoutObservableArray<T>;
	function publishOn(topic:String, ?skipInitialPublish:Bool, ?equalityComparer:Dynamic -> Dynamic -> Bool):KnockoutObservableArray<T>;
	function stopPublishingOn(topic:String):KnockoutObservableArray<T>;
	function syncWith(topic:String, ?initializeWithLatestValue:Bool, ?skipInitialPublish:Bool, ?equalityComparer:Dynamic -> Dynamic -> Bool):KnockoutObservableArray<T>;
};
typedef KnockoutStatic = {
	var postbox : KnockoutPostBox;
};
