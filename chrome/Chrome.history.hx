typedef VisitItem = {
	var transition : String;
	@:optional
	var visitTime : Float;
	var visitId : String;
	var referringVisitId : String;
	var id : String;
};
typedef HistoryItem = {
	@:optional
	var typedCount : Float;
	@:optional
	var title : String;
	@:optional
	var url : String;
	@:optional
	var lastVisitTime : Float;
	@:optional
	var visitCount : Float;
	var id : String;
};
typedef HistoryQuery = {
	var text : String;
	@:optional
	var maxResults : Float;
	@:optional
	var startTime : Float;
	@:optional
	var endTime : Float;
};
typedef Url = {
	var url : String;
};
typedef Range = {
	var endTime : Float;
	var startTime : Float;
};
typedef RemovedResult = {
	var allHistory : Bool;
	@:optional
	var urls : Array<String>;
};
typedef HistoryVisitedEvent = {
	>chrome.events.Event,
	function addListener(callback:HistoryItem -> Void):Void;
};
typedef HistoryVisitRemovedEvent = {
	>chrome.events.Event,
	function addListener(callback:RemovedResult -> Void):Void;
};
extern class Chrome.historyTopLevel {
	static function search(query:HistoryQuery, callback:Array<HistoryItem> -> Void):Void;
	static function addUrl(details:Url, ?callback:haxe.Constraints.Function):Void;
	static function deleteRange(range:Range, callback:haxe.Constraints.Function):Void;
	static function deleteAll(callback:haxe.Constraints.Function):Void;
	static function getVisits(details:Url, callback:Array<VisitItem> -> Void):Void;
	static function deleteUrl(details:Url, ?callback:haxe.Constraints.Function):Void;
	static var onVisited : HistoryVisitedEvent;
	static var onVisitRemoved : HistoryVisitRemovedEvent;
}
