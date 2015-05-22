extern class StropheTopLevel {
	static function $build(name:String, ?attrs:Dynamic):Strophe.Builder;
	static function $msg(?attrs:Dynamic):Strophe.Builder;
	static function $iq(?attrs:Dynamic):Strophe.Builder;
	static function $pres(?attrs:Dynamic):Strophe.Builder;
}
