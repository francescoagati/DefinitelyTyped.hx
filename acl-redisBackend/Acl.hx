typedef AclStatic = {
	var redisBackend : RedisBackendStatic;
};
typedef RedisBackend = {
	>Backend<redis.RedisClient>,
};
typedef RedisBackendStatic = {
	@:overload(function(redis:redis.RedisClient):RedisBackend { })
	function new(redis:redis.RedisClient, prefix:String):RedisBackend;
};
