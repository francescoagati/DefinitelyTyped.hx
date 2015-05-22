extern class ConfigTopLevel {
	static var Promise : { function new<T>(resolver:T -> Void -> Dynamic -> Void -> Void):IPromise<T>; };
}
