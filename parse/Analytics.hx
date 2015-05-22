extern class AnalyticsTopLevel {
	static function track<T>(name:String, dimensions:Dynamic):Promise<T>;
}
