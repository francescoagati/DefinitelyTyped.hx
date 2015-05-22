typedef ITimeLineConfiguration = {
	var width : String;
	var height : String;
	var source : Dynamic;
	@:optional
	var type : String;
	@:optional
	var embed_id : String;
	@:optional
	var start_at_end : Bool;
	@:optional
	var start_at_slide : String;
	@:optional
	var start_zoom_adjust : String;
	@:optional
	var hash_bookmark : Bool;
	@:optional
	var font : String;
	@:optional
	var debug : Bool;
	@:optional
	var lang : String;
	@:optional
	var css : String;
	@:optional
	var js : String;
	@:optional
	var gmap_key : String;
	@:optional
	var maptype : String;
};
typedef ITimelineModel = {
	var timeline : ITimeLine;
};
typedef ITimeLine = {
	@:optional
	var headline : String;
	@:optional
	var type : String;
	@:optional
	var text : String;
	@:optional
	var asset : ITimeLineAsset;
	@:optional
	var date : Array<ITimelineDate>;
	@:optional
	var era : Array<ITimelineEra>;
};
typedef ITimeLineAsset = {
	var media : String;
	@:optional
	var thumbnail : String;
	var credit : String;
	var caption : String;
};
typedef ITimelineDate = {
	>ITimelineEra,
	@:optional
	var classname : String;
	@:optional
	var asset : ITimeLineAsset;
};
typedef ITimelineEra = {
	var startDate : String;
	var endDate : String;
	var headline : String;
	var text : String;
	@:optional
	var tag : String;
};
