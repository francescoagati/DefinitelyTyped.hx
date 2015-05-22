typedef StatOptions = {
	var version : Float;
	var removed : Bool;
	var deleted : Bool;
	var readDir : Bool;
	var versionTag : String;
	var rev : String;
	var contentHash : String;
	var hash : String;
	var httpCache : Bool;
};
extern class ShareUrl {
	@:overload(function(urlData:{ }, isDirect:Bool):ShareUrl { })
	static function parse(urlData:String, isDirect:Bool):ShareUrl;
	var url : String;
	var expiresAt : Date;
	var isDirect : Bool;
	var isPreview : Bool;
	function toJSON():{ };
}
extern class CopyReference {
	@:overload(function(refData:{ }):CopyReference { })
	static function parse(refData:String):CopyReference;
	var tag : String;
	var expiresAt : Date;
	function toJSON():{ };
}
extern class Stat {
	static function parse(metadata:{ }):Stat;
	var path : String;
	var name : String;
	var inAppFolder : Bool;
	var isFolder : Bool;
	var isFile : Bool;
	var isRemoved : Bool;
	var typeIcon : String;
	var versionTag : String;
	var contentHash : String;
	var mimeType : String;
	var size : Float;
	var humanSize : String;
	var hasThumbnail : Bool;
	var modifiedAt : Date;
	var clientModifiedAt : Date;
	function toJSON():{ };
}
