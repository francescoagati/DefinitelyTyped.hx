typedef Twitter = {
	function ready(callback:Twitter -> Void):Void;
	var widgets : TwitterWidgets;
	var events : TwitterEvents;
};
typedef TwitterWidgets = {
	@:overload(function(element:HTMLElement):Void { })
	@:overload(function(elements:Array<HTMLElement>):Void { })
	function load():Void;
	function createShareButton(url:String, target:HTMLElement, ?options:TwitterButtonWidgetOptions):Dynamic;
	function createFollowButton(screen_name:String, target:HTMLElement, ?options:TwitterButtonWidgetOptions):Dynamic;
	function createHashtagButton(hashtag:String, target:HTMLElement, ?options:TwitterButtonWidgetOptions):Dynamic;
	function createMentionButton(screen_name:String, target:HTMLElement, ?options:TwitterButtonWidgetOptions):Dynamic;
	function createTimeline(widgetId:String, target:HTMLElement, ?options:TwitterTimelineWidgetOptions):Dynamic;
	function createTweet(tweetId:String, target:HTMLElement, ?options:TwitterTweetWidgetOptions):Dynamic;
};
typedef TwitterWidgetOptions = {
	@:optional
	var dnt : Bool;
	@:optional
	var hashtags : String;
	@:optional
	var lang : String;
	@:optional
	var related : String;
	@:optional
	var via : String;
};
typedef TwitterButtonWidgetOptions = {
	>TwitterWidgetOptions,
	@:optional
	var align : String;
	@:optional
	var count : String;
	@:optional
	var counturl : String;
	@:optional
	var size : String;
	@:optional
	var text : String;
};
typedef TwitterTweetWidgetOptions = {
	>TwitterWidgetOptions,
	@:optional
	var align : String;
	@:optional
	var conversation : String;
	@:optional
	var cards : String;
	@:optional
	var width : haxe.extern.EitherType<String, Float>;
	@:optional
	var linkColor : String;
	@:optional
	var theme : String;
};
typedef TwitterTimelineWidgetOptions = {
	>TwitterWidgetOptions,
	>TwitterButtonWidgetOptions,
	>TwitterTweetWidgetOptions,
	@:optional
	var ariaPolite : String;
	@:optional
	var height : haxe.extern.EitherType<String, Float>;
	@:optional
	var borderColor : String;
	@:optional
	var chrome : String;
	@:optional
	var tweetLimit : Float;
	@:optional
	var screenName : String;
	@:optional
	var userId : String;
	@:optional
	var showReplies : Bool;
	@:optional
	var favoritesScreenName : String;
	@:optional
	var favoritesUserId : String;
	@:optional
	var listOwnerScreenName : String;
	@:optional
	var listOwnerId : String;
	@:optional
	var listId : String;
	@:optional
	var listSlug : String;
};
typedef TwitterEvents = {
	@:overload(function(name:Rendered, callback:Dynamic -> Void):Void { })
	@:overload(function(name:Tweet, callback:TwitterIntentEvent -> Void):Void { })
	@:overload(function(name:Follow, callback:TwitterIntentEvent -> Void):Void { })
	@:overload(function(name:Retweet, callback:TwitterIntentEvent -> Void):Void { })
	@:overload(function(name:Favorite, callback:TwitterIntentEvent -> Void):Void { })
	@:overload(function(name:Click, callback:TwitterIntentEvent -> Void):Void { })
	@:overload(function(name:String, callback:Dynamic -> Void):Void { })
	function bind(name:Loaded, callback:Dynamic -> Void):Void;
};
typedef TwitterIntentEvent = {
	var target : HTMLElement;
	var region : String;
	var data : TwitterIntentEventData;
	var type : String;
};
typedef TwitterIntentEventData = {
	@:optional
	var tweet_id : String;
	@:optional
	var source_tweet_id : String;
	@:optional
	var screen_name : String;
	@:optional
	var user_id : String;
};
extern class TwitterTopLevel {
	static var twttr : Twitter;
}
