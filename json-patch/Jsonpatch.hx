typedef Patch = {
	var op : String;
};
typedef AddPath = {
	>Patch,
	var path : String;
	var value : Dynamic;
};
typedef RemovePath = {
	>Patch,
	var path : String;
};
typedef ReplacePath = {
	>Patch,
	var path : String;
	var value : Dynamic;
};
typedef MovePath = {
	>Patch,
	var from : String;
	var path : String;
};
typedef CopyPath = {
	>Patch,
	var from : String;
	var path : String;
};
typedef TestPath = {
	>Patch,
	var path : String;
	var value : Dynamic;
};
extern class JsonpatchTopLevel {
	static function apply(document:Dynamic, patches:Array<OpPatch>):Dynamic;
	static function compile(patches:Array<OpPatch>):Dynamic -> Dynamic;
}
