extern class WhenTopLevel {
	static function When<T>(value:When.Promise<T>):When.Promise<T>;
	static function When<T>(value:When.Thenable<T>):When.Promise<T>;
	static function When<T>(value:T):When.Promise<T>;
	static function When<T, U>(value:When.Promise<T>, transform:T -> U):When.Promise<U>;
	static function When<T, U>(value:When.Thenable<T>, transform:T -> U):When.Promise<U>;
	static function When<T, U>(value:T, transform:T -> U):When.Promise<U>;
}
extern class WhenTopLevel {
	static function When<T>(value:When.Promise<T>):When.Promise<T>;
	static function When<T>(value:When.Thenable<T>):When.Promise<T>;
	static function When<T>(value:T):When.Promise<T>;
	static function When<T, U>(value:When.Promise<T>, transform:T -> U):When.Promise<U>;
	static function When<T, U>(value:When.Thenable<T>, transform:T -> U):When.Promise<U>;
	static function When<T, U>(value:T, transform:T -> U):When.Promise<U>;
}
