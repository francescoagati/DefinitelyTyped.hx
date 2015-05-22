extern class PromiseTopLevel {
	static function resolve<R>(?value:haxe.extern.EitherType<R, Thenable<R>>):Promise<R>;
	static function reject(error:Dynamic):Promise<Dynamic>;
	static function all<R>(promises:Array<haxe.extern.EitherType<R, Thenable<R>>>):Promise<Array<R>>;
	static function race<R>(promises:Array<haxe.extern.EitherType<R, Thenable<R>>>):Promise<R>;
}
