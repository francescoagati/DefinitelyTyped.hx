typedef GitObject = {
	var type : String;
	var body : Dynamic;
};
typedef GitCommit = {
	var tree : String;
	var author : GitAuthor;
	var message : String;
};
typedef GitAuthor = {
	var name : String;
	var email : String;
	var date : Date;
};
typedef GitTree = { };
typedef GitTreeElem = {
	var mode : Float;
	var name : String;
	var hash : String;
};
typedef StringMap = { };
typedef Remote = {
	var hostname : String;
	var pathname : String;
	function discover(callback:Dynamic -> StringMap -> Void):Void;
	function fetch(repo:Repo, opts:Dynamic, callback:Dynamic -> Void):Void;
	function close(?callback:Dynamic -> Void):Void;
};
typedef DB = {
	function get(key:String, callback:Dynamic -> Dynamic -> Void):Void;
	function set(key:String, value:Dynamic, callback:Dynamic -> Void):Void;
	function has(key:String, callback:Dynamic -> Bool -> Void):Void;
	function del(key:String, callback:Dynamic -> Void):Void;
	function keys(prefix:String, callback:Dynamic -> Array<String> -> Void):Void;
	function init(callback:Dynamic -> Void):Void;
	function clear(callback:Dynamic -> Void):Void;
};
typedef Repo = {
	function load(hashish:String, callback:Dynamic -> GitObject -> Void):Void;
	function save(git_object:GitObject, callback:Dynamic -> String -> Void):Void;
	function loadAs(type:String, hash:String, callback:Dynamic -> Dynamic -> Void):Void;
	function saveAs(type:String, body:Dynamic, callback:Dynamic -> String -> Void):Void;
	function remove(hash:String, callback:Dynamic -> Void):Void;
	function unpack(packFileStream:Dynamic, opts:Dynamic, callback:Dynamic -> Void):Void;
	function logWalk(hashish:String, callback:Dynamic -> Dynamic -> Void):Void;
	function treeWalk(hashish:String, callback:Dynamic -> Dynamic -> Void):Void;
	function walk(seed:Dynamic, scan:Dynamic, loadKey:Dynamic, compare:Dynamic):Dynamic;
	function resolveHashish(hashish:String, callback:Dynamic -> String -> Void):Void;
	function updateHead(hash:String, callback:Dynamic -> Void):Void;
	function getHead(callback:Dynamic -> String -> Void):Void;
	function setHead(ref:String, callback:Dynamic -> Void):Void;
	function fetch(remote:Remote, opts:Dynamic, callback:Dynamic -> Void):Void;
};
