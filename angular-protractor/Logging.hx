extern class Preferences extends webdriver.logging.Preferences {

}
extern class Entry extends webdriver.logging.Entry {

}
extern class LoggingTopLevel {
	static var Type : webdriver.logging.IType;
	static var Level : webdriver.logging.ILevelValues;
	static function getLevel(nameOrValue:String):webdriver.logging.ILevel;
	static function getLevel(nameOrValue:Float):webdriver.logging.ILevel;
}
