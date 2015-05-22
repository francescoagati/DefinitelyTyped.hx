typedef MessageHandler = { };
typedef CommandT<R> = { };
typedef ResCallbackT<R> = { };
typedef ServerInfo = {
	var redis_version : String;
	var versions : Array<Float>;
};
typedef ClientOpts = {
	@:optional
	var parser : String;
	@:optional
	var return_buffers : Bool;
	@:optional
	var detect_buffers : Bool;
	@:optional
	var socket_nodelay : Bool;
	@:optional
	var no_ready_check : Bool;
	@:optional
	var enable_offline_queue : Bool;
	@:optional
	var retry_max_delay : Float;
	@:optional
	var connect_timeout : Float;
	@:optional
	var max_attempts : Float;
	@:optional
	var auth_pass : String;
};
typedef RedisClient = {
	>NodeJS.EventEmitter,
	var connected : Bool;
	var retry_delay : Float;
	var retry_backoff : Float;
	var command_queue : Array<Dynamic>;
	var offline_queue : Array<Dynamic>;
	var server_info : ServerInfo;
	function end():Void;
	@:overload(function(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void { })
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function auth(password:String, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void { })
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function ping(?callback:ResCallbackT<Float>):Void;
	@:overload(function(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void { })
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function append(key:String, value:String, ?callback:ResCallbackT<Float>):Void;
	@:overload(function(key:String, start:Float, end:Float, ?callback:ResCallbackT<Float>):Void { })
	function bitcount(key:String, ?callback:ResCallbackT<Float>):Void;
	@:overload(function(args:Array<Dynamic>, ?callback:ResCallbackT<String>):Void { })
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function set(key:String, value:String, ?callback:ResCallbackT<String>):Void;
	@:overload(function(args:Array<Dynamic>, ?callback:ResCallbackT<String>):Void { })
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function get(key:String, ?callback:ResCallbackT<String>):Void;
	@:overload(function(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void { })
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function exists(key:String, value:String, ?callback:ResCallbackT<Float>):Void;
	@:overload(function(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void { })
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function publish(channel:String, value:Dynamic):Void;
	@:overload(function(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void { })
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function subscribe(channel:String):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function setnx(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function setex(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function strlen(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function del(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function setbit(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function getbit(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function setrange(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function getrange(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function substr(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function incr(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function decr(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function mget(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	function rpush(args:haxe.extern.Rest<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function lpush(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function rpushx(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function lpushx(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function linsert(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function rpop(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function lpop(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function brpop(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function brpoplpush(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function blpop(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function llen(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function lindex(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function lset(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function lrange(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function ltrim(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function lrem(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function rpoplpush(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function sadd(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function srem(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function smove(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function sismember(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function scard(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function spop(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function srandmember(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function sinter(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function sinterstore(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function sunion(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function sunionstore(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function sdiff(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function sdiffstore(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function smembers(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function zadd(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function zincrby(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function zrem(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function zremrangebyscore(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function zremrangebyrank(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function zunionstore(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function zinterstore(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function zrange(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function zrangebyscore(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function zrevrangebyscore(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function zcount(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function zrevrange(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function zcard(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function zscore(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function zrank(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function zrevrank(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function hset(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function hsetnx(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function hget(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(key:String, hash:Dynamic, ?callback:ResCallbackT<Dynamic>):Void { })
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function hmset(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function hmget(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function hincrby(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function hdel(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function hlen(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function hkeys(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function hvals(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	@:overload(function(key:String, ?callback:ResCallbackT<Dynamic>):Void { })
	function hgetall(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function hexists(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function incrby(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function decrby(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function getset(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function mset(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function msetnx(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function randomkey(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function select(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function move(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function rename(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function renamenx(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function expire(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function expireat(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function keys(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function dbsize(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function echo(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function save(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function bgsave(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function bgrewriteaof(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function shutdown(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function lastsave(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function type(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function multi(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function exec(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function discard(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function sync(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function flushdb(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function flushall(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function sort(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function info(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function monitor(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function ttl(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function persist(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function slaveof(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function debug(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function config(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function unsubscribe(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function psubscribe(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function punsubscribe(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function watch(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function unwatch(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function cluster(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function restore(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function migrate(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function dump(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function object(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function client(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function eval(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function evalsha(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
	@:overload(function(args:haxe.extern.Rest<Dynamic>):Void { })
	function quit(args:Array<Dynamic>, ?callback:ResCallbackT<Dynamic>):Void;
};
extern class RedisTopLevel {
	static function createClient(port_arg:Float, ?host_arg:String, ?options:ClientOpts):RedisClient;
	static function createClient(unix_socket:String, ?options:ClientOpts):RedisClient;
	static function createClient(?options:ClientOpts):RedisClient;
	static function print(err:Error, reply:Dynamic):Void;
	static var debug_mode : Bool;
}
extern class RedisTopLevel {
	static function createClient(port_arg:Float, ?host_arg:String, ?options:ClientOpts):RedisClient;
	static function createClient(unix_socket:String, ?options:ClientOpts):RedisClient;
	static function createClient(?options:ClientOpts):RedisClient;
	static function print(err:Error, reply:Dynamic):Void;
	static var debug_mode : Bool;
}
