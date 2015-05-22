extern class ValidateTopLevel {
	static function isValidUri(uri:String):Bool;
	static function isValidHDInsightCreationObject(clusterCreationObject:ClusterCreationOptions):Void;
	static function isValidHDInsightCreationObject(clusterCreationObject:ClusterCreationOptions, callback:ErrorCallback):Void;
	static function isValidUuid(uuid:String):Void;
	static function isValidUuid(uuid:String, callback:ErrorCallback):Void;
	static function isBase64Encoded(key:String):Bool;
	static function isValidFunction(functionObject:Dynamic, functionName:String):Void;
	static function namespaceNameIsValid(name:String):Bool;
	static function namespaceNameIsValid(name:String, callback:ErrorCallback):Bool;
	static function containerNameIsValid(containerName:String):Bool;
	static function containerNameIsValid(containerName:String, callback:ErrorCallback):Bool;
	static function blobNameIsValid(containerName:String, blob:String):Bool;
	static function blobNameIsValid(containerName:String, blob:String, callback:ErrorCallback):Bool;
	static function tableNameIsValid(tableName:String):Bool;
	static function tableNameIsValid(tableName:String, callback:ErrorCallback):Bool;
	static function queueNameIsValid(queueName:String):Bool;
	static function queueNameIsValid(queueName:String, callback:ErrorCallback):Bool;
	static function pageRangesAreValid(rangeStart:Float, rangeEnd:Float, writeBlockSizeInBytes:Float):Bool;
	static function pageRangesAreValid(rangeStart:Float, rangeEnd:Float, writeBlockSizeInBytes:Float, callback:ErrorCallback):Bool;
	static function validateArgs(functionName:String, validationRules:haxe.Constraints.Function):Bool;
}
