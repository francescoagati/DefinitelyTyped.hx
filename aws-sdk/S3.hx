typedef Client = {
	var config : ClientConfig;
	function putObject(params:PutObjectRequest, callback:Dynamic -> Dynamic -> Void):Void;
	function getObject(params:GetObjectRequest, callback:Dynamic -> Dynamic -> Void):Void;
};
typedef PutObjectRequest = {
	@:optional
	var ACL : String;
	@:optional
	var Body : Dynamic;
	var Bucket : String;
	@:optional
	var CacheControl : String;
	@:optional
	var ContentDisposition : String;
	@:optional
	var ContentEncoding : String;
	@:optional
	var ContentLanguage : String;
	@:optional
	var ContentLength : String;
	@:optional
	var ContentMD5 : String;
	@:optional
	var ContentType : String;
	@:optional
	var Expires : Dynamic;
	@:optional
	var GrantFullControl : String;
	@:optional
	var GrantRead : String;
	@:optional
	var GrantReadACP : String;
	@:optional
	var GrantWriteACP : String;
	var Key : String;
	@:optional
	var Metadata : Array<String>;
	@:optional
	var ServerSideEncryption : String;
	@:optional
	var StorageClass : String;
	@:optional
	var WebsiteRedirectLocation : String;
};
typedef GetObjectRequest = {
	var Bucket : String;
	@:optional
	var IfMatch : String;
	@:optional
	var IfModifiedSince : Dynamic;
	@:optional
	var IfNoneMatch : String;
	@:optional
	var IfUnmodifiedSince : Dynamic;
	var Key : String;
	@:optional
	var Range : String;
	@:optional
	var ResponseCacheControl : String;
	@:optional
	var ResponseContentDisposition : String;
	@:optional
	var ResponseContentEncoding : String;
	@:optional
	var ResponseContentLanguage : String;
	@:optional
	var ResponseContentType : String;
	@:optional
	var ResponseExpires : Dynamic;
	@:optional
	var VersionId : String;
};
