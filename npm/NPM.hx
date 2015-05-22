typedef Static = {
	>NodeJS.EventEmitter,
	var config : Config;
	var commands : Commands;
	var rollbacks : Array<Dynamic>;
	var spinner : Spinner;
	var fullList : Array<String>;
	var abbrevs : Dictionary<String>;
	var prefix : String;
	var bin : String;
	var globalBin : String;
	var dir : String;
	var globalDir : String;
	var root : String;
	var cache : String;
	var tmp : String;
	@:overload(function(callback:SimpleCallback<Config>):Void { })
	@:overload(function(cli:ConfigOptions, callback:SimpleCallback<Config>):Void { })
	function load(cli:ConfigOptions):Void;
	function deref(command:String):String;
};
typedef Commands = {
	var install : CommandFunction;
	var uninstall : CommandFunction;
	var cache : CommandFunction;
	var config : CommandFunction;
	var set : CommandFunction;
	var get : CommandFunction;
	var update : CommandFunction;
	var outdated : CommandFunction;
	var prune : CommandFunction;
	var submodule : CommandFunction;
	var pack : CommandFunction;
	var dedupe : CommandFunction;
	var rebuild : CommandFunction;
	var link : CommandFunction;
	var publish : CommandFunction;
	var star : CommandFunction;
	var stars : CommandFunction;
	var tag : CommandFunction;
	var adduser : CommandFunction;
	var unpublish : CommandFunction;
	var owner : CommandFunction;
	var deprecate : CommandFunction;
	var shrinkwrap : CommandFunction;
	var help : CommandFunction;
	var help-search : CommandFunction;
	var ls : CommandFunction;
	var search : CommandFunction;
	var view : CommandFunction;
	var init : CommandFunction;
	var version : CommandFunction;
	var edit : CommandFunction;
	var explore : CommandFunction;
	var docs : CommandFunction;
	var repo : CommandFunction;
	var bugs : CommandFunction;
	var faq : CommandFunction;
	var root : CommandFunction;
	var prefix : CommandFunction;
	var bin : CommandFunction;
	var whoami : CommandFunction;
	var test : CommandFunction;
	var stop : CommandFunction;
	var start : CommandFunction;
	var restart : CommandFunction;
	var run-script : CommandFunction;
	var completion : CommandFunction;
	var rm : CommandFunction;
	var r : CommandFunction;
	var un : CommandFunction;
	var unlink : CommandFunction;
	var remove : CommandFunction;
	var rb : CommandFunction;
	var list : CommandFunction;
	var la : CommandFunction;
	var ll : CommandFunction;
	var i : CommandFunction;
	var isntall : CommandFunction;
	var up : CommandFunction;
	var c : CommandFunction;
	var info : CommandFunction;
	var show : CommandFunction;
	var find : CommandFunction;
	var s : CommandFunction;
	var se : CommandFunction;
	var author : CommandFunction;
	var home : CommandFunction;
	var issues : CommandFunction;
	var unstar : CommandFunction;
	var apihelp : CommandFunction;
	var long : CommandFunction;
	var add-user : CommandFunction;
	var tst : CommandFunction;
	var t : CommandFunction;
	var find-dupes : CommandFunction;
	var ddp : CommandFunction;
	var v : CommandFunction;
	var build : CommandFunction;
	var unbuild : CommandFunction;
	var xmas : CommandFunction;
	var substack : CommandFunction;
	var visnup : CommandFunction;
};
typedef CommandFunction = { };
typedef CommandCallback = { };
typedef Spinner = {
	var int : String;
	var started : Bool;
	function start():Void;
	function stop():Void;
};
typedef ConfigStatic = {
	function new(base:Config):Config;
};
typedef Config = {
	var loaded : Bool;
	var sources : Dictionary<ConfigSource>;
	var rootConf : Config;
	var usingBuiltin : Bool;
	@:optional
	var root : Config;
	var Conf : ConfigStatic;
	var defs : ConfigDefs;
	function get(setting:String):String;
	function set(setting:String, value:String):Void;
	function loadPrefix(cb:ErrorCallback):Void;
	function loadCAFile(caFilePath:String, cb:ErrorCallback):Void;
	function loadUid(cb:SimpleCallback<String>):Void;
	function setUser(cb:ErrorCallback):Void;
	function findPrefix(prefix:String, cb:SimpleCallback<String>):Void;
	function getCredentialsByURI(uri:String):Credentials;
	function setCredentialsByURI(uri:String, cred:Credentials):Void;
	function loadExtras(cb:ErrorCallback):Void;
	function save(where:String, cb:ErrorCallback):Config;
	function addFile(file:String, name:String):Config;
	function parse(content:String, file:String):Dynamic;
	function add(data:Dynamic, marker:Dynamic):Dynamic;
	function addEnv(env:Dictionary<String>):Dynamic;
};
typedef ConfigDefs = {
	var defaults : ConfigOptions;
	var types : ConfigTypes;
};
typedef ConfigOptions = {
	@:optional
	var always-auth : Bool;
	@:optional
	var bin-links : Bool;
	@:optional
	var browser : String;
	@:optional
	var ca : Dynamic;
	@:optional
	var cafile : String;
	@:optional
	var cache : String;
	@:optional
	var cache-lock-stale : Float;
	@:optional
	var cache-lock-retries : Float;
	@:optional
	var cache-lock-wait : Float;
	@:optional
	var cache-max : Float;
	@:optional
	var cache-min : Float;
	@:optional
	var cert : String;
	@:optional
	var color : Dynamic;
	@:optional
	var depth : Float;
	@:optional
	var description : Bool;
	@:optional
	var dev : Bool;
	@:optional
	var editor : String;
	@:optional
	var engine-strict : Bool;
	@:optional
	var force : Bool;
	@:optional
	var fetch-retries : Float;
	@:optional
	var fetch-retry-factor : Float;
	@:optional
	var fetch-retry-mintimeout : Float;
	@:optional
	var fetch-retry-maxtimeout : Float;
	@:optional
	var git : String;
	@:optional
	var git-tag-version : Bool;
	@:optional
	var global : Bool;
	@:optional
	var globalconfig : String;
	@:optional
	var group : Dynamic;
	@:optional
	var heading : String;
	@:optional
	var ignore-scripts : Bool;
	@:optional
	var init-module : String;
	@:optional
	var init.author.name : String;
	@:optional
	var init.author.email : String;
	@:optional
	var init.author.url : String;
	@:optional
	var init.version : String;
	@:optional
	var init.license : String;
	@:optional
	var json : Bool;
	@:optional
	var key : String;
	@:optional
	var link : Bool;
	@:optional
	var local-address : String;
	@:optional
	var loglevel : String;
	@:optional
	var logstream : NodeJS.ReadWriteStream;
	@:optional
	var long : Bool;
	@:optional
	var message : String;
	@:optional
	var node-version : String;
	@:optional
	var npat : Bool;
	@:optional
	var onload-script : Bool;
	@:optional
	var optional : Bool;
	@:optional
	var parseable : Bool;
	@:optional
	var prefix : String;
	@:optional
	var production : Bool;
	@:optional
	var proprietary-attribs : Bool;
	@:optional
	var proxy : Dynamic;
	@:optional
	var https-proxy : String;
	@:optional
	var user-agent : String;
	@:optional
	var rebuild-bundle : Bool;
	@:optional
	var registry : String;
	@:optional
	var rollback : Bool;
	@:optional
	var save : Bool;
	@:optional
	var save-bundle : Bool;
	@:optional
	var save-dev : Bool;
	@:optional
	var save-exact : Bool;
	@:optional
	var save-optional : Bool;
	@:optional
	var save-prefix : String;
	@:optional
	var scope : String;
	@:optional
	var searchopts : String;
	@:optional
	var searchexclude : String;
	@:optional
	var searchsort : String;
	@:optional
	var shell : String;
	@:optional
	var shrinkwrap : Bool;
	@:optional
	var sign-git-tag : Bool;
	@:optional
	var spin : Dynamic;
	@:optional
	var strict-ssl : Bool;
	@:optional
	var tag : String;
	@:optional
	var tmp : String;
	@:optional
	var unicode : Bool;
	@:optional
	var unsafe-perm : Bool;
	@:optional
	var usage : Bool;
	@:optional
	var user : Dynamic;
	@:optional
	var userconfig : String;
	@:optional
	var umask : Float;
	@:optional
	var version : Bool;
	@:optional
	var versions : Bool;
	@:optional
	var viewer : String;
	@:optional
	var _exit : Bool;
};
typedef ConfigTypes = {
	var always-auth : Dynamic;
	var bin-links : Dynamic;
	var browser : Array<Dynamic>;
	var ca : Array<Dynamic>;
	var cafile : Dynamic;
	var cache : Dynamic;
	var cache-lock-stale : Dynamic;
	var cache-lock-retries : Dynamic;
	var cache-lock-wait : Dynamic;
	var cache-max : Dynamic;
	var cache-min : Dynamic;
	var cert : Dynamic;
	var color : Array<Dynamic>;
	var depth : Dynamic;
	var description : Dynamic;
	var dev : Dynamic;
	var editor : Dynamic;
	var engine-strict : Dynamic;
	var force : Dynamic;
	var fetch-retries : Dynamic;
	var fetch-retry-factor : Dynamic;
	var fetch-retry-mintimeout : Dynamic;
	var fetch-retry-maxtimeout : Dynamic;
	var git : Dynamic;
	var git-tag-version : Dynamic;
	var global : Dynamic;
	var globalconfig : Dynamic;
	var group : Array<Dynamic>;
	var heading : Dynamic;
	var ignore-scripts : Dynamic;
	var init-module : Dynamic;
	var init.author.name : Dynamic;
	var init.author.email : Dynamic;
	var init.author.url : Dynamic;
	var init.version : Dynamic;
	var init.license : Dynamic;
	var json : Dynamic;
	var key : Array<Dynamic>;
	var link : Dynamic;
	var local-address : Dynamic;
	var loglevel : Array<Dynamic>;
	var logstream : Dynamic;
	var long : Dynamic;
	var message : Dynamic;
	var node-version : Array<Dynamic>;
	var npat : Dynamic;
	var onload-script : Array<Dynamic>;
	var optional : Dynamic;
	var parseable : Dynamic;
	var prefix : Dynamic;
	var production : Dynamic;
	var proprietary-attribs : Dynamic;
	var proxy : Array<Dynamic>;
	var https-proxy : Array<Dynamic>;
	var user-agent : Dynamic;
	var rebuild-bundle : Boolean;
	var registry : Array<Dynamic>;
	var rollback : Dynamic;
	var save : Dynamic;
	var save-bundle : Dynamic;
	var save-dev : Dynamic;
	var save-exact : Dynamic;
	var save-optional : Dynamic;
	var save-prefix : Dynamic;
	var scope : Dynamic;
	var searchopts : Dynamic;
	var searchexclude : Array<Dynamic>;
	var searchsort : Array<Dynamic>;
	var shell : Dynamic;
	var shrinkwrap : Dynamic;
	var sign-git-tag : Dynamic;
	var spin : Array<Dynamic>;
	var strict-ssl : Dynamic;
	var tag : Dynamic;
	var tmp : Dynamic;
	var unicode : Dynamic;
	var unsafe-perm : Dynamic;
	var usage : Dynamic;
	var user : Dynamic;
	var userconfig : Dynamic;
	var umask : Dynamic;
	var version : Dynamic;
	var versions : Dynamic;
	var viewer : Dynamic;
	var _exit : Dynamic;
};
typedef ConfigShorthands = {
	var s : Array<Dynamic>;
	var d : Array<Dynamic>;
	var dd : Array<Dynamic>;
	var ddd : Array<Dynamic>;
	var noreg : Array<Dynamic>;
	var N : Array<Dynamic>;
	var reg : Array<Dynamic>;
	var no-reg : Array<Dynamic>;
	var silent : Array<Dynamic>;
	var verbose : Array<Dynamic>;
	var quiet : Array<Dynamic>;
	var q : Array<Dynamic>;
	var h : Array<Dynamic>;
	var H : Array<Dynamic>;
	var ? : Array<Dynamic>;
	var help : Array<Dynamic>;
	var v : Array<Dynamic>;
	var f : Array<Dynamic>;
	var gangster : Array<Dynamic>;
	var gangsta : Array<Dynamic>;
	var desc : Array<Dynamic>;
	var no-desc : Array<Dynamic>;
	var local : Array<Dynamic>;
	var l : Array<Dynamic>;
	var m : Array<Dynamic>;
	var p : Array<Dynamic>;
	var porcelain : Array<Dynamic>;
	var g : Array<Dynamic>;
	var S : Array<Dynamic>;
	var D : Array<Dynamic>;
	var E : Array<Dynamic>;
	var O : Array<Dynamic>;
	var y : Array<Dynamic>;
	var n : Array<Dynamic>;
	var B : Array<Dynamic>;
	var C : Array<Dynamic>;
};
typedef ConfigSource = {
	var path : String;
	var type : String;
};
typedef Credentials = {
	var scope : String;
	@:optional
	var token : String;
	@:optional
	var password : String;
	@:optional
	var username : String;
	@:optional
	var email : String;
	@:optional
	var auth : String;
};
typedef Dictionary<T> = { };
typedef ErrorCallback = { };
typedef SimpleCallback<T> = { };
