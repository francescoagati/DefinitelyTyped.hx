typedef RedisOptions = {
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
};
typedef Command = { };
typedef Commands = {
	var get : Command;
	var set : Command;
	var setnx : Command;
	var setex : Command;
	var append : Command;
	var strlen : Command;
	var del : Command;
	var exists : Command;
	var setbit : Command;
	var getbit : Command;
	var setrange : Command;
	var getrange : Command;
	var substr : Command;
	var incr : Command;
	var decr : Command;
	var mget : Command;
	var rpush : Command;
	var lpush : Command;
	var rpushx : Command;
	var lpushx : Command;
	var linsert : Command;
	var rpop : Command;
	var lpop : Command;
	var brpop : Command;
	var brpoplpush : Command;
	var blpop : Command;
	var llen : Command;
	var lindex : Command;
	var lset : Command;
	var lrange : Command;
	var ltrim : Command;
	var lrem : Command;
	var rpoplpush : Command;
	var sadd : Command;
	var srem : Command;
	var smove : Command;
	var sismember : Command;
	var scard : Command;
	var spop : Command;
	var srandmember : Command;
	var sinter : Command;
	var sinterstore : Command;
	var sunion : Command;
	var sunionstore : Command;
	var sdiff : Command;
	var sdiffstore : Command;
	var smembers : Command;
	var zadd : Command;
	var zincrby : Command;
	var zrem : Command;
	var zremrangebyscore : Command;
	var zremrangebyrank : Command;
	var zunionstore : Command;
	var zinterstore : Command;
	var zrange : Command;
	var zrangebyscore : Command;
	var zrevrangebyscore : Command;
	var zcount : Command;
	var zrevrange : Command;
	var zcard : Command;
	var zscore : Command;
	var zrank : Command;
	var zrevrank : Command;
	var hset : Command;
	var hsetnx : Command;
	var hget : Command;
	var hmset : Command;
	var hmget : Command;
	var hincrby : Command;
	var hdel : Command;
	var hlen : Command;
	var hkeys : Command;
	var hvals : Command;
	var hgetall : Command;
	var hexists : Command;
	var incrby : Command;
	var decrby : Command;
	var getset : Command;
	var mset : Command;
	var msetnx : Command;
	var randomkey : Command;
	var select : Command;
	var move : Command;
	var rename : Command;
	var renamenx : Command;
	var expire : Command;
	var expireat : Command;
	var keys : Command;
	var dbsize : Command;
	var auth : Command;
	var ping : Command;
	var echo : Command;
	var save : Command;
	var bgsave : Command;
	var bgrewriteaof : Command;
	var shutdown : Command;
	var lastsave : Command;
	var type : Command;
	var multi : Command;
	var exec : Command;
	var discard : Command;
	var sync : Command;
	var flushdb : Command;
	var flushall : Command;
	var sort : Command;
	var info : Command;
	var monitor : Command;
	var ttl : Command;
	var persist : Command;
	var slaveof : Command;
	var debug : Command;
	var config : Command;
	var subscribe : Command;
	var unsubscribe : Command;
	var psubscribe : Command;
	var punsubscribe : Command;
	var publish : Command;
	var watch : Command;
	var unwatch : Command;
	var cluster : Command;
	var restore : Command;
	var migrate : Command;
	var dump : Command;
	var object : Command;
	var client : Command;
	var eval : Command;
	var evalsha : Command;
	var quit : Command;
	var GET : Command;
	var SET : Command;
	var SETNX : Command;
	var SETEX : Command;
	var APPEND : Command;
	var STRLEN : Command;
	var DEL : Command;
	var EXISTS : Command;
	var SETBIT : Command;
	var GETBIT : Command;
	var SETRANGE : Command;
	var GETRANGE : Command;
	var SUBSTR : Command;
	var INCR : Command;
	var DECR : Command;
	var MGET : Command;
	var RPUSH : Command;
	var LPUSH : Command;
	var RPUSHX : Command;
	var LPUSHX : Command;
	var LINSERT : Command;
	var RPOP : Command;
	var LPOP : Command;
	var BRPOP : Command;
	var BRPOPLPUSH : Command;
	var BLPOP : Command;
	var LLEN : Command;
	var LINDEX : Command;
	var LSET : Command;
	var LRANGE : Command;
	var LTRIM : Command;
	var LREM : Command;
	var RPOPLPUSH : Command;
	var SADD : Command;
	var SREM : Command;
	var SMOVE : Command;
	var SISMEMBER : Command;
	var SCARD : Command;
	var SPOP : Command;
	var SRANDMEMBER : Command;
	var SINTER : Command;
	var SINTERSTORE : Command;
	var SUNION : Command;
	var SUNIONSTORE : Command;
	var SDIFF : Command;
	var SDIFFSTORE : Command;
	var SMEMBERS : Command;
	var ZADD : Command;
	var ZINCRBY : Command;
	var ZREM : Command;
	var ZREMRANGEBYSCORE : Command;
	var ZREMRANGEBYRANK : Command;
	var ZUNIONSTORE : Command;
	var ZINTERSTORE : Command;
	var ZRANGE : Command;
	var ZRANGEBYSCORE : Command;
	var ZREVRANGEBYSCORE : Command;
	var ZCOUNT : Command;
	var ZREVRANGE : Command;
	var ZCARD : Command;
	var ZSCORE : Command;
	var ZRANK : Command;
	var ZREVRANK : Command;
	var HSET : Command;
	var HSETNX : Command;
	var HGET : Command;
	var HMSET : Command;
	var HMGET : Command;
	var HINCRBY : Command;
	var HDEL : Command;
	var HLEN : Command;
	var HKEYS : Command;
	var HVALS : Command;
	var HGETALL : Command;
	var HEXISTS : Command;
	var INCRBY : Command;
	var DECRBY : Command;
	var GETSET : Command;
	var MSET : Command;
	var MSETNX : Command;
	var RANDOMKEY : Command;
	var SELECT : Command;
	var MOVE : Command;
	var RENAME : Command;
	var RENAMENX : Command;
	var EXPIRE : Command;
	var EXPIREAT : Command;
	var KEYS : Command;
	var DBSIZE : Command;
	var AUTH : Command;
	var PING : Command;
	var ECHO : Command;
	var SAVE : Command;
	var BGSAVE : Command;
	var BGREWRITEAOF : Command;
	var SHUTDOWN : Command;
	var LASTSAVE : Command;
	var TYPE : Command;
	var MULTI : Command;
	var EXEC : Command;
	var DISCARD : Command;
	var SYNC : Command;
	var FLUSHDB : Command;
	var FLUSHALL : Command;
	var SORT : Command;
	var INFO : Command;
	var MONITOR : Command;
	var TTL : Command;
	var PERSIST : Command;
	var SLAVEOF : Command;
	var DEBUG : Command;
	var CONFIG : Command;
	var SUBSCRIBE : Command;
	var UNSUBSCRIBE : Command;
	var PSUBSCRIBE : Command;
	var PUNSUBSCRIBE : Command;
	var PUBLISH : Command;
	var WATCH : Command;
	var UNWATCH : Command;
	var CLUSTER : Command;
	var RESTORE : Command;
	var MIGRATE : Command;
	var DUMP : Command;
	var OBJECT : Command;
	var CLIENT : Command;
	var EVAL : Command;
	var EVALSHA : Command;
	var QUIT : Command;
};
typedef Multi = {
	>Commands,
};
typedef RedisClient = {
	>Commands,
	function initialize_retry_vars():Void;
	function flush_and_error(message:String):Void;
	function on_error(message:String):Void;
	function do_auth():Void;
	function on_connect():Void;
	function init_parser():Void;
	function on_ready():Void;
	function on_info_cmd(err:Dynamic, res:Dynamic):Void;
	function ready_check():Void;
	function send_offline_queue():Void;
	function connection_gone(why:String):Void;
	function on_data(data:Dynamic):Void;
	function return_error(err:Dynamic):Void;
	function return_reply(reply:Dynamic):Void;
	@:overload(function(command:String, args:haxe.extern.Rest<Dynamic>):Dynamic { })
	function send_command(command:String, args:Array<Dynamic>, ?callback:haxe.Constraints.Function):Dynamic;
	function pub_sub_command(command:{ var command : String; var args : Array<Dynamic>; }):Dynamic;
	var port : Float;
	var host : String;
	var reply_parser : Dynamic;
	var stream : Dynamic;
	var server_info : Dynamic;
	var connected : Bool;
	var command_queue : Array<Dynamic>;
	var offline_queue : Array<Dynamic>;
	var retry_delay : Float;
	var retry_backoff : Float;
	function auth(?password:String, ?callback:haxe.Constraints.Function):Void;
	function AUTH(?password:String, ?callback:haxe.Constraints.Function):Void;
	function end():RedisClient;
	function on(eventName:String, callback:haxe.Constraints.Function):Void;
	function once(eventName:String, callback:haxe.Constraints.Function):Void;
	function removeListener(eventName:String, callback:haxe.Constraints.Function):Void;
	function multi(?commands:Array<Dynamic>):Multi;
	function MULTI():Multi;
};
extern class RedisTopLevel {
	static var debug_mode : Bool;
	static function createClient():RedisClient;
	static function createClient(port:Float, host:String, ?options:RedisOptions):RedisClient;
	static function print(err:String, ?reply:String):Dynamic;
}
