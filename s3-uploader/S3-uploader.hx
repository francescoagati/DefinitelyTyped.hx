typedef S3UploaderVersion = {
	@:optional
	var original : Bool;
	@:optional
	var suffix : String;
	@:optional
	var quality : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var maxHeight : Float;
};
typedef S3UploaderOptions = {
	@:optional
	var awsAccessKeyId : String;
	@:optional
	var awsSecretAccessKey : String;
	@:optional
	var awsBucketRegion : String;
	@:optional
	var awsBucketPath : String;
	@:optional
	var awsBucketAcl : String;
	@:optional
	var awsMaxRetries : Float;
	@:optional
	var awsHttpTimeout : Float;
	@:optional
	var resizeQuality : Float;
	@:optional
	var returnExif : Bool;
	@:optional
	var tmpDir : String;
	@:optional
	var workers : Float;
	@:optional
	var url : String;
	@:optional
	var versions : S3UploaderVersion;
};
extern class Meta {
	var format : String;
	var fileSize : String;
	var imageSize : ImageSize;
	var orientation : String;
	var colorSpace : String;
	var compression : String;
	var quallity : String;
}
extern class ImageSize {
	var height : Float;
	var width : Float;
}
extern class Image {
	var etag : String;
	var format : String;
	var height : Float;
	var original : Bool;
	var path : String;
	var size : String;
	var src : String;
	var url : String;
	var width : Float;
}
extern class Upload {
	function new(awsBucketName:String, opts:S3UploaderOptions):Void;
	function upload(src:String, ?opts:S3UploaderOptions, ?cb:String -> Array<Image> -> Meta -> Void):Void;
}
