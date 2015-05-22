typedef Config<T, U> = {
	@:optional
	var init : T -> U;
	@:optional
	var request : rest.Request -> U -> rest.Meta -> haxe.extern.EitherType<rest.Request, when.Promise<rest.Request>>;
	@:optional
	var response : rest.Response -> U -> rest.Meta -> haxe.extern.EitherType<rest.Response, when.Promise<rest.Response>>;
	@:optional
	var success : rest.Response -> U -> rest.Meta -> haxe.extern.EitherType<rest.Response, when.Promise<rest.Response>>;
	@:optional
	var error : rest.Response -> U -> rest.Meta -> haxe.extern.EitherType<rest.Response, when.Promise<rest.Response>>;
};
