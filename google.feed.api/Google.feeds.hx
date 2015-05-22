extern class Feed {
	@:overload(function(url:String):Void { })
	function new():Void;
	function findFeeds(?query:String, ?callback:FindResult -> Void):Void;
	function getElementsByTagNameNS(node:String, ns:String, localName:String):Array<Dynamic>;
	function includeHistoricalEntries():Void;
	function load(?callback:FeedResult -> Void):Void;
	function setNumEntries(num:Float):Void;
	function setResultFormat(format:String):Void;
}
typedef FeedResult = {
	@:optional
	var error : FeedError;
	@:optional
	var xmlDocument : String;
	var feed : FeedJSON;
};
typedef FindResult = {
	@:optional
	var error : FeedError;
	@:optional
	var xmlDocument : String;
	var findEntries : Array<FindEntry>;
};
typedef FeedError = {
	var code : String;
	var message : String;
};
typedef FeedJSON = {
	var feedURL : String;
	var link : String;
	var author : String;
	var description : String;
	var entries : Array<FeedEntry>;
};
typedef FeedEntry = {
	var mediaGroup : Array<MediaGroup>;
	var title : String;
	var link : String;
	var content : String;
	var contentSnippet : String;
	var publishedDate : String;
	var categories : Array<String>;
};
typedef FindEntry = {
	var title : String;
	var link : String;
	var contentSnippet : String;
	var url : String;
};
typedef MediaGroup = {
	var content : Array<MediaContent>;
};
typedef MediaContent = {
	var url : String;
	var fileSize : Float;
	var type : String;
	var medium : String;
	var isDefault : Bool;
	var expression : String;
	var bitrate : Float;
	var framerate : Float;
	var samplingrate : Float;
	var channels : String;
	var duration : Float;
	var height : Float;
	var width : Float;
	var lang : String;
};
