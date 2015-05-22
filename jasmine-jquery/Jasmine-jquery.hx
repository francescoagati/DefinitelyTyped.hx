extern class Jasmine-jqueryTopLevel {
	static function sandbox(?attributes:Dynamic):String;
	static function readFixtures(uls:haxe.extern.Rest<String>):String;
	static function preloadFixtures(uls:haxe.extern.Rest<String>):Dynamic;
	static function loadFixtures(uls:haxe.extern.Rest<String>):Dynamic;
	static function appendLoadFixtures(uls:haxe.extern.Rest<String>):Dynamic;
	static function setFixtures(html:String):String;
	static function appendSetFixtures(html:String):Dynamic;
	static function preloadStyleFixtures(uls:haxe.extern.Rest<String>):Dynamic;
	static function loadStyleFixtures(uls:haxe.extern.Rest<String>):Dynamic;
	static function appendLoadStyleFixtures(uls:haxe.extern.Rest<String>):Dynamic;
	static function setStyleFixtures(html:String):Dynamic;
	static function appendSetStyleFixtures(html:String):Dynamic;
	static function loadJSONFixtures(uls:haxe.extern.Rest<String>):jasmine.JSONFixtures;
	static function getJSONFixture(url:String):Dynamic;
	static function spyOnEvent(selector:String, eventName:String):jasmine.JQueryEventSpy;
}
