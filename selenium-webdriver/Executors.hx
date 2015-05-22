extern class ExecutorsTopLevel {
	static function createExecutor(url:String):webdriver.CommandExecutor;
	static function createExecutor(url:webdriver.promise.Promise<String>):webdriver.CommandExecutor;
}
