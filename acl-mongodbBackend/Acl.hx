typedef AclStatic = {
	var mongodbBackend : MongodbBackendStatic;
};
typedef MongodbBackend = {
	>Backend<Callback>,
};
typedef MongodbBackendStatic = {
	@:overload(function(db:mongo.Db, prefix:String):MongodbBackend { })
	@:overload(function(db:mongo.Db):MongodbBackend { })
	function new(db:mongo.Db, prefix:String, useSingle:Bool):MongodbBackend;
};
