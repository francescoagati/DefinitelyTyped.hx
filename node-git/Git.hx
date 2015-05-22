extern class Git {
	function new(gitDirectory:Dynamic):Void;
	function refs(options:Dynamic, prefix:String, callback:Dynamic -> String -> Void):Void;
	function fs_read(gitDirectory:String, file:String, callback:Dynamic -> Dynamic -> Void):Void;
	function transform_options(options:Dynamic):Array<String>;
	function git(functionName:Dynamic, options:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	function call_git(prefix:String, command:Dynamic, postfix:String, options:Dynamic, args:Dynamic, callback:Dynamic -> String -> Void):Void;
	@:overload(function(options:Dynamic, callback:haxe.Constraints.Function):Void { })
	@:overload(function(options:Dynamic, reference:String, callback:haxe.Constraints.Function):Void { })
	function rev_list(callback:haxe.Constraints.Function):Void;
	@:overload(function(options:Dynamic, str:String, level:Float, callback:haxe.Constraints.Function):Void { })
	function rev_parse(options:Dynamic, str:String, callback:haxe.Constraints.Function):Void;
	@:overload(function(treeish:Dynamic, paths:Array<Dynamic>, callback:haxe.Constraints.Function):Void { })
	@:overload(function(treeish:Dynamic, paths:Array<Dynamic>, options:Dynamic, callback:haxe.Constraints.Function):Void { })
	function ls_tree(treeish:Dynamic, callback:haxe.Constraints.Function):Void;
	function cat_file(type:Dynamic, ref:Dynamic, callback:haxe.Constraints.Function):Void;
	function file_size(ref:Dynamic, callback:haxe.Constraints.Function):Void;
	function fs_mkdir(dir:Dynamic, callback:haxe.Constraints.Function):Void;
	function init(options:Dynamic, callback:haxe.Constraints.Function):Void;
	function clone(options:Dynamic, originalPath:Dynamic, targetPath:Dynamic, callback:haxe.Constraints.Function):Void;
	@:overload(function(commit1:Dynamic, commit2:Dynamic, options:Dynamic, callback:Dynamic -> String -> Void):Void { })
	function diff(commit1:Dynamic, commit2:Dynamic, callback:Dynamic -> String -> Void):Void;
	function fs_exist(path:Dynamic, callback:haxe.Constraints.Function):Void;
	function fs_write(file:Dynamic, content:Dynamic, callback:haxe.Constraints.Function):Void;
	function log(commit:Dynamic, path:Dynamic, options:Dynamic, callback:haxe.Constraints.Function):Void;
	function select_existing_objects(objectIds:Array<Dynamic>, callback:haxe.Constraints.Function):Void;
	function format_patch(options:Dynamic, reference:Dynamic, callback:haxe.Constraints.Function):Void;
	@:overload(function(options:Dynamic, callback:haxe.Constraints.Function):Void { })
	function blame(callback:haxe.Constraints.Function):Void;
	@:overload(function(commit:Dynamic, path:Dynamic, callback:haxe.Constraints.Function):Void { })
	function blame_tree(commit:Dynamic, callback:haxe.Constraints.Function):Void;
	@:overload(function(commit:Dynamic, path:Dynamic, callback:haxe.Constraints.Function):Void { })
	function looking_for(commit:Dynamic, callback:haxe.Constraints.Function):Void;
	@:overload(function(options:Dynamic, args:haxe.extern.Rest<Dynamic>):Void { })
	function commit(args:haxe.extern.Rest<Dynamic>):Void;
	@:overload(function(options:Dynamic, args:haxe.extern.Rest<Dynamic>):Void { })
	function config(args:haxe.extern.Rest<Dynamic>):Void;
	@:overload(function(options:Dynamic, args:haxe.extern.Rest<Dynamic>):Void { })
	function add(args:haxe.extern.Rest<Dynamic>):Void;
	@:overload(function(options:Dynamic, args:haxe.extern.Rest<Dynamic>):Void { })
	function remove(args:haxe.extern.Rest<Dynamic>):Void;
	@:overload(function(options:Dynamic, args:haxe.extern.Rest<Dynamic>):Void { })
	function ls_files(args:haxe.extern.Rest<Dynamic>):Void;
	@:overload(function(options:Dynamic, args:haxe.extern.Rest<Dynamic>):Void { })
	function diff_files(args:haxe.extern.Rest<Dynamic>):Void;
	@:overload(function(options:Dynamic, args:haxe.extern.Rest<Dynamic>):Void { })
	function diff_index(args:haxe.extern.Rest<Dynamic>):Void;
	@:overload(function(options:Dynamic, args:haxe.extern.Rest<Dynamic>):Void { })
	function file_type(args:haxe.extern.Rest<Dynamic>):Void;
	@:overload(function(options:Dynamic, args:haxe.extern.Rest<Dynamic>):Void { })
	function put_raw_object(args:haxe.extern.Rest<Dynamic>):Void;
	function commit_from_sha(id:String):Dynamic;
}
extern class Actor {
	var name : String;
	var email : String;
	function new(name:String, email:String):Void;
	static function from_string(str:String):Actor;
}
extern class Blame {
	var repo : Repo;
	var file : String;
	var commit : String;
	var lines : Array<BlameLine>;
	@:overload(function(repo:Repo, file:String, commit:String, callback:Dynamic -> Blame -> Void):Void { })
	function new(repo:Repo, file:String, callback:Dynamic -> Blame -> Void):Void;
}
extern class BlameLine {
	var lineno : Float;
	var oldlineno : Float;
	var commit : Dynamic;
	var line : String;
	function new(lineno:Float, oldlineno:Float, commit:Dynamic, line:String):Void;
}
extern class Blob {
	var repo : Repo;
	var id : Dynamic;
	var mode : Dynamic;
	var name : Dynamic;
	var data : Dynamic;
	var size : Dynamic;
	var mine_type : Dynamic;
	var basename : Dynamic;
	function new(repo:Dynamic, id:Dynamic, mode:Dynamic, name:Dynamic):Void;
	static function blame(repo:Dynamic, commit:Dynamic, file:Dynamic, callback:haxe.Constraints.Function):Void;
}
extern class Commit {
	var repo : Repo;
	var id : String;
	var parents : Array<Dynamic>;
	var tree : Dynamic;
	var author : Actor;
	var sha : String;
	var authored_date : String;
	var committer : Actor;
	var committed_date : String;
	var message : String;
	var filechanges : Dynamic;
	var short_message : String;
	var _id_abbrev : Dynamic;
	function new(repo:Repo, id:String, parents:Array<Dynamic>, tree:Dynamic, author:Actor, authoredDate:String, committer:Actor, committedDate:String, message:String, filechanges:Dynamic):Void;
	function load(callback:haxe.Constraints.Function):Void;
	function id_abbrev(callback:haxe.Constraints.Function):Void;
	static function list_from_string(repo:Dynamic, text:Dynamic):Array<Commit>;
	@:overload(function(repo:Dynamic, reference:Dynamic, callback:haxe.Constraints.Function):Void { })
	@:overload(function(repo:Dynamic, reference:Dynamic, options:Dynamic, callback:haxe.Constraints.Function):Void { })
	static function find_all(repo:Dynamic, callback:haxe.Constraints.Function):Void;
	static function count(repo:Dynamic, ref:Dynamic, callback:haxe.Constraints.Function):Void;
	@:overload(function(repo:Dynamic, a:Dynamic, b:Dynamic, callback:haxe.Constraints.Function):Void { })
	@:overload(function(repo:Dynamic, a:Dynamic, b:Dynamic, paths:Dynamic, callback:haxe.Constraints.Function):Void { })
	static function diff(repo:Dynamic, a:Dynamic, callback:haxe.Constraints.Function):Void;
	function show(callback:haxe.Constraints.Function):Void;
	function diffs(callback:haxe.Constraints.Function):Void;
	function toPatch(callback:haxe.Constraints.Function):Void;
}
extern class CommitStats {
	var repo : Dynamic;
	var id : Dynamic;
	var files : Array<Dynamic>;
	var additions : Dynamic;
	var deletions : Dynamic;
	var total : Dynamic;
	function new(repo:Dynamic, id:Dynamic, files:Array<Dynamic>):Void;
	@:overload(function(repo:Dynamic, reference:Dynamic, options:Dynamic, callback:haxe.Constraints.Function):Void { })
	static function find_all(repo:Dynamic, reference:Dynamic, callback:haxe.Constraints.Function):Void;
	static function list_from_string(repo:Dynamic, text:String):Array<CommitStats>;
}
extern class Config {
	var repo : Dynamic;
	var data : Dynamic;
	function new(repo:Dynamic):Void;
	function fetch(key:Dynamic, defaultValue:Dynamic):Dynamic;
	function set(key:Dynamic, value:Dynamic, callback:haxe.Constraints.Function):Void;
}
extern class Diff {
	var repo : Dynamic;
	var a_path : Dynamic;
	var b_path : Dynamic;
	var a_blob : Dynamic;
	var b_blob : Dynamic;
	var a_mode : Dynamic;
	var b_mode : Dynamic;
	var new_file : Dynamic;
	var deleted_file : Dynamic;
	var diff : Dynamic;
	function new(repo:Dynamic, aPath:Dynamic, bPath:Dynamic, aBlob:Dynamic, bBlob:Dynamic, aMode:Dynamic, bMode:Dynamic, newFile:Dynamic, deletedFile:Dynamic, diff:Dynamic):Void;
	static function list_from_string(repo:Dynamic, text:Dynamic, callback:haxe.Constraints.Function):Void;
}
extern class FileIndex {
	var repo_path : Dynamic;
	var index_file : Dynamic;
	var sha_count : Dynamic;
	var commit_index : Dynamic;
	var commit_order : Dynamic;
	var all_files : Dynamic;
	function new(repoPath:Dynamic, callback:haxe.Constraints.Function):Void;
	function commits_from(commitSha:Dynamic, callback:haxe.Constraints.Function):Void;
	function sort_commits(shaArray:Array<Dynamic>):Array<Dynamic>;
	function files(commitSha:Dynamic, callback:haxe.Constraints.Function):Void;
	function count_all(callback:haxe.Constraints.Function):Void;
	function count(commitSha:Dynamic, callback:haxe.Constraints.Function):Void;
	function commits_for(file:Dynamic, callback:haxe.Constraints.Function):Void;
	function last_commits(commitSha:Dynamic, filesMatcher:Dynamic, callback:haxe.Constraints.Function):Void;
}
extern class FileWindow {
	var idxfile : Dynamic;
	var version : Dynamic;
	var global_offset : Dynamic;
	var offset : Dynamic;
	var seek_offset : Dynamic;
	function new(idxfile:Dynamic, version:Dynamic):Void;
	function unmap():Void;
	@:overload(function(idx:Array<Dynamic>):Void { })
	function index(idx:Float):Void;
	function close():Void;
}
extern class GitFileOperations {
	static function glob_streaming(path:Dynamic):Dynamic;
	@:overload(function(path:Dynamic, files:Dynamic, callback:haxe.Constraints.Function):Void { })
	static function glob(path:Dynamic, callback:haxe.Constraints.Function):Void;
	static function fs_read(path:Dynamic, file:Dynamic, callback:haxe.Constraints.Function):Void;
	static function fs_mkdir(dir:Dynamic, callback:haxe.Constraints.Function):Void;
	static function fs_exist(dir:Dynamic, path:Dynamic, callback:haxe.Constraints.Function):Void;
	static function fs_rmdir_r(dir:Dynamic, callback:haxe.Constraints.Function):Void;
	static function fs_write(dir:Dynamic, file:Dynamic, content:Dynamic, callback:haxe.Constraints.Function):Void;
}
extern class GitIndex {
	var repo : Dynamic;
	var tree : Dynamic;
	var current_tree : Dynamic;
	function new(repo:Dynamic):Void;
	function read_tree(tree:Dynamic, callback:haxe.Constraints.Function):Void;
	function add(filePath:Dynamic, data:Dynamic):Void;
	@:overload(function(message:Dynamic, parents:Dynamic, callback:haxe.Constraints.Function):Void { })
	@:overload(function(message:Dynamic, parents:Dynamic, actor:Dynamic, callback:haxe.Constraints.Function):Void { })
	@:overload(function(message:Dynamic, parents:Dynamic, actor:Dynamic, lastTree:Dynamic, callback:haxe.Constraints.Function):Void { })
	function commit(message:Dynamic, callback:haxe.Constraints.Function):Void;
	@:overload(function(tree:Dynamic, nowTree:Dynamic, callback:haxe.Constraints.Function):Dynamic { })
	function write_tree(tree:Dynamic, callback:haxe.Constraints.Function):Dynamic;
	function write_blob(data:Dynamic):Dynamic;
}
extern class GitObject {
	static function from_raw(rawObject:Dynamic, repository:Dynamic):Dynamic;
}
extern class Head {
	var name : String;
	var commit : Dynamic;
	function new(name:String, commit:Dynamic):Void;
	@:overload(function(repo:Dynamic, options:Dynamic, callback:haxe.Constraints.Function):Void { })
	static function current(repo:Dynamic, callback:haxe.Constraints.Function):Void;
	@:overload(function(repo:Dynamic, options:Dynamic, callback:haxe.Constraints.Function):Void { })
	static function find_all(repo:Dynamic, callback:haxe.Constraints.Function):Void;
}
extern class LooseStorage {
	var directory : Dynamic;
	function new(directory:Dynamic):Void;
	function find(sha1:Dynamic):RawObject;
	function get_raw_object(buf:Dynamic):RawObject;
	function unpack_object_header_gently(buf:Dynamic):Array<Dynamic>;
	function is_legacy_loose_object(buf:Dynamic):Bool;
	function put_raw_object(content:Dynamic, type:Dynamic, callback:haxe.Constraints.Function):Void;
	static function verify_header(type:Dynamic, size:Dynamic):Void;
}
extern class Merge {
	static var STATUS_BOTH : String;
	static var STATUS_OURS : String;
	static var STATUS_THEIRS : String;
	var conflicts : Dynamic;
	var text : Dynamic;
	var sections : Dynamic;
	function new(str:String):Void;
}
extern class PackStorage {
	var name : Dynamic;
	var cache : Dynamic;
	var version : Dynamic;
	var offsets : Dynamic;
	var size : Dynamic;
	function new(file:Dynamic):Void;
	function find(sha1:Dynamic):RawObject;
	function close():Void;
	function parse_object(pack:Dynamic, offset:Dynamic):RawObject;
	function unpack_object(pack:Dynamic, packfile:Dynamic, offset:Dynamic, options:Dynamic):Array<Dynamic>;
	function unpack_deltified(packfile:Dynamic, type:Dynamic, offset:Dynamic, objOffset:Dynamic, size:Dynamic, options:Dynamic):Dynamic;
}
extern class RawObject {
	var type : Dynamic;
	var content : Dynamic;
	function new(type:Dynamic, content:Dynamic):Void;
	function sha1(?encoding:String):Dynamic;
	function sha1_hex():Dynamic;
}
extern class Ref {

}
extern class Remote {
	function new(name:Dynamic, commit:Dynamic):Void;
	@:overload(function(repo:Dynamic, options:Dynamic, callback:haxe.Constraints.Function):Void { })
	function find_all(repo:Dynamic, callback:haxe.Constraints.Function):Void;
}
extern class Repo {
	var path : String;
	var options : Dynamic;
	var git : Dynamic;
	var config_object : Dynamic;
	var bare : Dynamic;
	var working_directory : Dynamic;
	@:overload(function(path:String, options:Dynamic, callback:Dynamic -> Repo -> Void):Void { })
	function new(path:String, callback:Dynamic -> Repo -> Void):Void;
	function head(callback:Dynamic -> Head -> Void):Void;
	function heads(callback:Dynamic -> Array<Head> -> Void):Void;
	function tags(callback:haxe.Constraints.Function):Void;
	@:overload(function(start:String, callback:haxe.Constraints.Function):Void { })
	@:overload(function(start:String, maxCount:Float, callback:haxe.Constraints.Function):Void { })
	@:overload(function(start:String, maxCount:Float, skip:Dynamic, callback:haxe.Constraints.Function):Void { })
	function commits(callback:haxe.Constraints.Function):Void;
	function commit(id:String, callback:haxe.Constraints.Function):Void;
	function commit_count(start:Dynamic, callback:haxe.Constraints.Function):Void;
	@:overload(function(treeish:String, callback:haxe.Constraints.Function):Void { })
	@:overload(function(treeish:String, paths:Dynamic, callback:haxe.Constraints.Function):Void { })
	function tree(callback:haxe.Constraints.Function):Void;
	function blob(id:String, callback:haxe.Constraints.Function):Void;
	function init_bare(path:Dynamic, gitOptions:Dynamic, repoOptions:Dynamic, callback:haxe.Constraints.Function):Void;
	@:overload(function(path:Dynamic, options:Dynamic, callback:haxe.Constraints.Function):Void { })
	function fork_bare(path:Dynamic, callback:haxe.Constraints.Function):Void;
	@:overload(function(a:String, b:String, callback:Dynamic -> String -> Void):Void { })
	@:overload(function(a:String, b:String, paths:Dynamic, callback:Dynamic -> String -> Void):Void { })
	function diff(a:String, callback:Dynamic -> String -> Void):Void;
	function commit_diff(commit:String, callback:haxe.Constraints.Function):Void;
	function alternates(callback:haxe.Constraints.Function):Void;
	function set_alternates(alts:Dynamic, callback:haxe.Constraints.Function):Void;
	@:overload(function(commit:String, callback:Dynamic -> Array<Commit> -> Void):Void { })
	@:overload(function(commit:String, path:Dynamic, callback:Dynamic -> Array<Commit> -> Void):Void { })
	@:overload(function(commit:String, path:Dynamic, options:Dynamic, callback:Dynamic -> Array<Commit> -> Void):Void { })
	function log(callback:Dynamic -> Array<Commit> -> Void):Void;
	@:overload(function(otherRepo:Dynamic, reference:Dynamic, callback:haxe.Constraints.Function):Void { })
	@:overload(function(otherRepo:Dynamic, reference:Dynamic, otherReference:Dynamic, callback:haxe.Constraints.Function):Void { })
	function commit_deltas_from(otherRepo:Dynamic, callback:haxe.Constraints.Function):Void;
	function refs(callback:haxe.Constraints.Function):Void;
	function description(callback:haxe.Constraints.Function):Void;
	function update_ref(head:Dynamic, commitSha:Dynamic, callback:haxe.Constraints.Function):Void;
	function get_head(headName:Dynamic, callback:haxe.Constraints.Function):Void;
	function blame(file:String, commit:String, callback:Dynamic -> Blame -> Void):Void;
	@:overload(function(start:Dynamic, callback:haxe.Constraints.Function):Void { })
	@:overload(function(start:Dynamic, maxCount:Dynamic, callback:haxe.Constraints.Function):Void { })
	@:overload(function(start:Dynamic, maxCount:Dynamic, skip:Dynamic, callback:haxe.Constraints.Function):Void { })
	function commit_stats(callback:haxe.Constraints.Function):Void;
	function commit_index(message:Dynamic, callback:haxe.Constraints.Function):Void;
	function commit_all(message:Dynamic, callback:haxe.Constraints.Function):Void;
	function config(callback:haxe.Constraints.Function):Void;
	function add(files:Dynamic, callback:haxe.Constraints.Function):Void;
	function remove(files:Dynamic, callback:haxe.Constraints.Function):Void;
	function status(callback:haxe.Constraints.Function):Void;
	function is_head(headName:Dynamic, callback:haxe.Constraints.Function):Void;
	function index(callback:haxe.Constraints.Function):Void;
}
extern class Repository {
	var git_directory : Dynamic;
	var options : Dynamic;
	var already_searched : Dynamic;
	var packs : Dynamic;
	var loose : Dynamic;
	function new(gitDirectory:Dynamic, ?options:Dynamic):Void;
	function get_object_by_sha1(sha1:String):Dynamic;
	function files_changed(treeSha1:Dynamic, treeSha2:Dynamic, pathLimiter:Dynamic):Bool;
	function cat_file(sha:Dynamic):Dynamic;
	function cat_file_size(sha:Dynamic):Float;
	function cat_file_type(sha:Dynamic):Dynamic;
	function ls_tree(sha:Dynamic, paths:Dynamic, recursive:Dynamic):Dynamic;
	function get_raw_tree(sha:Dynamic, recursive:Dynamic):Dynamic;
	function get_raw_trees(sha:Dynamic, path:Dynamic):String;
	function ls_tree_path(sha:Dynamic, path:Dynamic, append:Dynamic):Dynamic;
	function quick_diff(tree1:Dynamic, tree2:Dynamic, path:Dynamic, recurse:Dynamic):Array<Dynamic>;
	function list_tree(sha:Dynamic):Dynamic;
	function rev_list(sha:Dynamic, options:Dynamic, callback:haxe.Constraints.Function):Void;
	function object_exists(sha1:Dynamic, callback:haxe.Constraints.Function):Void;
	function in_packs(shaHex:Dynamic, callback:haxe.Constraints.Function):Void;
	function in_loose(shaHex:Dynamic, callback:haxe.Constraints.Function):Void;
	function get_subtree(commitSha:Dynamic, path:Dynamic, callback:haxe.Constraints.Function):Void;
	static function init(dir:Dynamic, bare:Dynamic, callback:haxe.Constraints.Function):Void;
	function put_raw_object(content:Dynamic, type:Dynamic, callback:haxe.Constraints.Function):Dynamic;
}
extern class Status {
	var repo : Dynamic;
	var files : Array<Dynamic>;
	function new(repo:Dynamic, callback:haxe.Constraints.Function):Void;
	function index(file:Dynamic):Dynamic;
}
extern class StatusFile {
	var repo : Dynamic;
	var path : Dynamic;
	var type : Dynamic;
	var stage : Dynamic;
	var mode_index : Dynamic;
	var mode_repo : Dynamic;
	var sha_index : Dynamic;
	var sha_repo : Dynamic;
	var untracked : Dynamic;
	function new(repo:Dynamic, hash:Dynamic):Void;
}
extern class Submodule {
	var repo : Dynamic;
	var id : Dynamic;
	var mode : Dynamic;
	var name : Dynamic;
	var basename : Dynamic;
	function new(repo:Dynamic, id:Dynamic, mode:Dynamic, name:Dynamic):Void;
	static function create(repo:Dynamic, attributes:Dynamic, callback:haxe.Constraints.Function):Void;
	static function config(repo:Dynamic, ref:Dynamic, callback:haxe.Constraints.Function):Void;
}
extern class Tag {
	var name : Dynamic;
	var commit : Dynamic;
	function new(name:Dynamic, commit:Dynamic):Void;
	@:overload(function(repo:Dynamic, options:Dynamic, callback:haxe.Constraints.Function):Void { })
	static function find_all(repo:Dynamic, callback:haxe.Constraints.Function):Void;
}
extern class Tree {
	var repo : Dynamic;
	var id : Dynamic;
	var mode : Dynamic;
	var name : Dynamic;
	var contents : Dynamic;
	var basename : Dynamic;
	function new(repo:Dynamic, id:Dynamic, mode:Dynamic, name:Dynamic, contents:Dynamic):Void;
	static function content_from_string(repo:Dynamic, text:Dynamic, callback:haxe.Constraints.Function):Void;
	function find(file:String):Dynamic;
	@:overload(function(repo:Dynamic, attributes:Dynamic, callback:haxe.Constraints.Function):Void { })
	static function create(repo:Dynamic, callback:haxe.Constraints.Function):Void;
}
extern class UserInfo {
	var name : Dynamic;
	var email : Dynamic;
	var date : Dynamic;
	var offset : Dynamic;
	function new(str:String):Void;
}
