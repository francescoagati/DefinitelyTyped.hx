typedef PodcastStatic = {
	function new(options:IFeedOptions):PodcastStatic;
	function item(options:IItemOptions):Void;
	function xml(?indent:String):String;
};
typedef IFeedOptions = {
	var title : String;
	@:optional
	var description : String;
	@:optional
	var generator : String;
	var feed_url : String;
	var site_url : String;
	@:optional
	var image_url : String;
	@:optional
	var docs : String;
	var author : String;
	@:optional
	var managingEditor : String;
	@:optional
	var webMaster : String;
	@:optional
	var copyright : String;
	@:optional
	var language : String;
	@:optional
	var categories : Array<String>;
	@:optional
	var pubDate : Date;
	@:optional
	var ttl : Float;
	@:optional
	var itunesAuthor : String;
	@:optional
	var itunesSubtitle : String;
	@:optional
	var itunesSummary : String;
	@:optional
	var itunesOwner : IItunesOwner;
	@:optional
	var itunesExplicit : Bool;
	@:optional
	var itunesCategory : IItunesCategory;
	@:optional
	var itunesImage : String;
};
typedef IItunesOwner = {
	var name : String;
	var email : String;
};
typedef IItunesCategory = {
	var name : String;
	var subcats : Array<IItunesSubCategory>;
};
typedef IItunesSubCategory = {
	var name : String;
	var subcat : Array<String>;
};
typedef IItemOptions = {
	var title : String;
	var description : String;
	var url : String;
	var guid : String;
	@:optional
	var categories : Array<String>;
	@:optional
	var author : String;
	var date : Date;
	@:optional
	var lat : Float;
	@:optional
	var long : Float;
	@:optional
	var itunesAuthor : String;
	@:optional
	var itunesExplicit : Bool;
	@:optional
	var itunesSubtitle : String;
	@:optional
	var itunesSummary : String;
	@:optional
	var itunesDuration : Float;
	@:optional
	var itunesKeywords : Array<String>;
};
extern class PodcastTopLevel {
	static var Podcast : PodcastStatic;
}
extern class PodcastTopLevel {
	static var Podcast : PodcastStatic;
}
