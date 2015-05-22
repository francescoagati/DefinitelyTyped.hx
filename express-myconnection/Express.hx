typedef Request = {
	@:optional
	var getConnection : mysql.IError -> mysql.IConnection -> Void -> Void;
};
