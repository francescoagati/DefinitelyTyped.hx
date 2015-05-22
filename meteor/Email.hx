typedef EmailMessage = {
	var from : String;
	var to : haxe.extern.EitherType<String, Array<String>>;
	@:optional
	var cc : haxe.extern.EitherType<String, Array<String>>;
	@:optional
	var bcc : haxe.extern.EitherType<String, Array<String>>;
	@:optional
	var replyTo : haxe.extern.EitherType<String, Array<String>>;
	var subject : String;
	@:optional
	var text : String;
	@:optional
	var html : String;
	@:optional
	var headers : { };
};
extern class EmailTopLevel {
	static function send(options:{ @:optional
	var from : String; @:optional
	var to : haxe.extern.EitherType<String, Array<String>>; @:optional
	var cc : haxe.extern.EitherType<String, Array<String>>; @:optional
	var bcc : haxe.extern.EitherType<String, Array<String>>; @:optional
	var replyTo : haxe.extern.EitherType<String, Array<String>>; @:optional
	var subject : String; @:optional
	var text : String; @:optional
	var html : String; @:optional
	var headers : Dynamic; @:optional
	var attachments : Array<Dynamic>; }):Void;
	static var CompileStep : CompileStepStatic;
	static var PackageAPI : PackageAPIStatic;
	static var ReactiveVar : ReactiveVarStatic;
	static var Subscription : SubscriptionStatic;
	static var Template : TemplateStatic;
	static function MethodInvocation(options:{ }):Dynamic;
	static function check(value:Dynamic, pattern:Dynamic):Void;
}
typedef CompileStepStatic = {
	function new():CompileStep;
};
typedef CompileStep = {
	function addAsset(options:{ }, path:String, data:haxe.extern.EitherType<Dynamic, String>):Dynamic;
	function addHtml(options:{ @:optional
	var section : String; @:optional
	var data : String; }):Dynamic;
	function addJavaScript(options:{ @:optional
	var path : String; @:optional
	var data : String; @:optional
	var sourcePath : String; }):Dynamic;
	function addStylesheet(options:{ }, path:String, data:String, sourceMap:String):Dynamic;
	var arch : Dynamic;
	var declaredExports : Dynamic;
	function error(options:{ }, message:String, ?sourcePath:String, ?line:Float, ?func:String):Dynamic;
	var fileOptions : Dynamic;
	var fullInputPath : Dynamic;
	var inputPath : Dynamic;
	var inputSize : Dynamic;
	var packageName : Dynamic;
	var pathForSourceMap : Dynamic;
	function read(?n:Float):Dynamic;
	var rootOutputPath : Dynamic;
};
typedef PackageAPIStatic = {
	function new():PackageAPI;
};
typedef PackageAPI = {
	function addFiles(filename:haxe.extern.EitherType<String, Array<String>>, ?architecture:String):Void;
	function export(exportedObject:String, ?architecture:String):Void;
	function imply(packageSpecs:haxe.extern.EitherType<String, Array<String>>):Void;
	function use(packageNames:haxe.extern.EitherType<String, Array<String>>, ?architecture:String, ?options:{ @:optional
	var weak : Bool; @:optional
	var unordered : Bool; }):Void;
	function versionsFrom(meteorRelease:haxe.extern.EitherType<String, Array<String>>):Void;
};
typedef ReactiveVarStatic = {
	function new<T>(initialValue:T, ?equalsFunc:haxe.Constraints.Function):ReactiveVar<T>;
};
typedef ReactiveVar<T> = {
	function get():T;
	function set(newValue:T):Void;
};
typedef SubscriptionStatic = {
	function new():Subscription;
};
typedef Subscription = {
	function added(collection:String, id:String, fields:Dynamic):Void;
	function changed(collection:String, id:String, fields:Dynamic):Void;
	var connection : Meteor.Connection;
	function error(error:Error):Void;
	function onStop(func:haxe.Constraints.Function):Void;
	function ready():Void;
	function removed(collection:String, id:String):Void;
	function stop():Void;
	var userId : String;
};
typedef TemplateStatic = {
	function new():Template;
	var head : Template;
	function find(selector:String):Blaze.Template;
	function findAll(selector:String):Array<Blaze.Template>;
	var $ : Dynamic;
	var body : Template;
	function currentData():{ };
	function instance():Blaze.TemplateInstance;
	function parentData(?numLevels:Float):{ };
	function registerHelper(name:String, helperFunction:haxe.Constraints.Function):Void;
};
typedef Template = {
	var created : haxe.Constraints.Function;
	var destroyed : haxe.Constraints.Function;
	function events(eventMap:{ }):Void;
	function helpers(helpers:{ }):Void;
	var onCreated : haxe.Constraints.Function;
	var onDestroyed : haxe.Constraints.Function;
	var onRendered : haxe.Constraints.Function;
	var rendered : haxe.Constraints.Function;
};
