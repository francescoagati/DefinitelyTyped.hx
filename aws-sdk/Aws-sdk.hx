extern class Credentials {
	function new(accessKeyId:String, secretAccessKey:String, ?sessionToken:String):Void;
	var accessKeyId : String;
}
typedef Logger = {
	@:optional
	var write : Dynamic -> ?String -> ?Void -> Void -> Void;
	@:optional
	var log : haxe.extern.Rest<Dynamic> -> Void;
};
typedef HttpOptions = {
	@:optional
	var proxy : String;
	@:optional
	var agent : Dynamic;
	@:optional
	var timeout : Float;
	@:optional
	var xhrAsync : Bool;
	@:optional
	var xhrWithCredentials : Bool;
};
typedef Services = {
	@:optional
	var autoscaling : Dynamic;
	@:optional
	var cloudformation : Dynamic;
	@:optional
	var cloudfront : Dynamic;
	@:optional
	var cloudsearch : Dynamic;
	@:optional
	var cloudsearchdomain : Dynamic;
	@:optional
	var cloudtrail : Dynamic;
	@:optional
	var cloudwatch : Dynamic;
	@:optional
	var cloudwatchlogs : Dynamic;
	@:optional
	var cognitoidentity : Dynamic;
	@:optional
	var cognitosync : Dynamic;
	@:optional
	var datapipeline : Dynamic;
	@:optional
	var directconnect : Dynamic;
	@:optional
	var dynamodb : Dynamic;
	@:optional
	var ec2 : Dynamic;
	@:optional
	var elasticache : Dynamic;
	@:optional
	var elasticbeanstalk : Dynamic;
	@:optional
	var elastictranscoder : Dynamic;
	@:optional
	var elb : Dynamic;
	@:optional
	var emr : Dynamic;
	@:optional
	var glacier : Dynamic;
	@:optional
	var httpOptions : HttpOptions;
	@:optional
	var iam : Dynamic;
	@:optional
	var importexport : Dynamic;
	@:optional
	var kinesis : Dynamic;
	@:optional
	var opsworks : Dynamic;
	@:optional
	var rds : Dynamic;
	@:optional
	var redshift : Dynamic;
	@:optional
	var route53 : Dynamic;
	@:optional
	var route53domains : Dynamic;
	@:optional
	var s3 : Dynamic;
	@:optional
	var ses : Dynamic;
	@:optional
	var simpledb : Dynamic;
	@:optional
	var sns : Dynamic;
	@:optional
	var sqs : Dynamic;
	@:optional
	var storagegateway : Dynamic;
	@:optional
	var sts : Dynamic;
	@:optional
	var support : Dynamic;
	@:optional
	var swf : Dynamic;
};
typedef ClientConfigPartial = {
	>Services,
	@:optional
	var credentials : Credentials;
	@:optional
	var region : String;
	@:optional
	var computeChecksums : Bool;
	@:optional
	var convertResponseTypes : Bool;
	@:optional
	var logger : Logger;
	@:optional
	var maxRedirects : Float;
	@:optional
	var maxRetries : Float;
	@:optional
	var paramValidation : Bool;
	@:optional
	var s3ForcePathStyle : Bool;
	@:optional
	var apiVersion : Dynamic;
	@:optional
	var apiVersions : Services;
	@:optional
	var signatureVersion : String;
	@:optional
	var sslEnabled : Bool;
	@:optional
	var systemClockOffset : Float;
};
typedef ClientConfig = {
	>ClientConfigPartial,
	@:optional
	var update : ClientConfigPartial -> ?Bool -> Void;
	@:optional
	var getCredentials : ?Dynamic -> Void -> Void;
	@:optional
	var loadFromPath : String -> Void;
	var credentials : Credentials;
	var region : String;
};
extern class SQS {
	function new(?options:Dynamic):Void;
	var client : Sqs.Client;
}
extern class SES {
	function new(?options:Dynamic):Void;
	var client : Ses.Client;
}
extern class SNS {
	function new(?options:Dynamic):Void;
	var client : Sns.Client;
}
extern class SimpleWorkflow {
	function new(?options:Dynamic):Void;
	var client : Swf.Client;
}
extern class S3 {
	function new(?options:Dynamic):Void;
	var client : s3.Client;
}
extern class DynamoDB {
	function new(?options:Dynamic):Void;
}
extern class Aws-sdkTopLevel {
	static var config : ClientConfig;
	static function Config(json:Dynamic):Void;
}
extern class Aws-sdkTopLevel {
	static var config : ClientConfig;
	static function Config(json:Dynamic):Void;
}
