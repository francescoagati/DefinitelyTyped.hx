typedef LoDashStatic = {
	var VERSION : String;
	var support : Support;
	var templateSettings : TemplateSettings;
};
typedef TemplateSettings = {
	@:optional
	var escape : js.RegExp;
	@:optional
	var evaluate : js.RegExp;
	@:optional
	var imports : Dictionary<Dynamic>;
	@:optional
	var interpolate : js.RegExp;
	@:optional
	var variable : String;
};
typedef Support = {
	var argsClass : Bool;
	var argsObject : Bool;
	var enumErrorProps : Bool;
	var fastBind : Bool;
	var funcDecomp : Bool;
	var funcNames : Bool;
	var nonEnumArgs : Bool;
	var nonEnumShadows : Bool;
	var ownLast : Bool;
	var spliceObjects : Bool;
	var unindexedChars : Bool;
};
typedef LoDashWrapperBase<T, TWrapper> = {
	function toString():String;
	function valueOf():T;
	function value():T;
};
typedef LoDashWrapper<T> = {
	>LoDashWrapperBase<T, LoDashWrapper<T>>,
};
typedef LoDashObjectWrapper<T> = {
	>LoDashWrapperBase<T, LoDashObjectWrapper<T>>,
};
typedef LoDashArrayWrapper<T> = {
	>LoDashWrapperBase<Array<T>, LoDashArrayWrapper<T>>,
	function concat(items:haxe.extern.Rest<T>):LoDashArrayWrapper<T>;
	function join(?seperator:String):LoDashWrapper<String>;
	function pop():LoDashWrapper<T>;
	function push(items:haxe.extern.Rest<T>):Void;
	function reverse():LoDashArrayWrapper<T>;
	function shift():LoDashWrapper<T>;
	function slice(start:Float, ?end:Float):LoDashArrayWrapper<T>;
	function sort(?compareFn:T -> T -> Float):LoDashArrayWrapper<T>;
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<Dynamic>):LoDashArrayWrapper<T> { })
	function splice(start:Float):LoDashArrayWrapper<T>;
	function unshift(items:haxe.extern.Rest<Dynamic>):LoDashWrapper<Float>;
};
typedef LoDashNumberArrayWrapper = {
	>LoDashArrayWrapper<Float>,
};
typedef LoDashStatic = {
	@:overload(function(value:String):LoDashWrapper<String> { })
	@:overload(function(value:Bool):LoDashWrapper<Bool> { })
	@:overload(function<T>(value:Array<T>):LoDashArrayWrapper<T> { })
	@:overload(function<T:({ })>(value:T):LoDashObjectWrapper<T> { })
	@:overload(function(value:Dynamic):LoDashWrapper<Dynamic> { })
	function chain(value:Float):LoDashWrapper<Float>;
};
typedef LoDashWrapperBase<T, TWrapper> = {
	function chain():TWrapper;
};
typedef LoDashStatic = {
	function tap<T>(value:T, interceptor:T -> Void):T;
};
typedef LoDashWrapperBase<T, TWrapper> = {
	function tap(interceptor:T -> Void):TWrapper;
};
typedef LoDashStatic = {
	@:overload(function<T>(array:List<T>, ?size:Float):Array<Array<T>> { })
	function chunk<T>(array:Array<T>, ?size:Float):Array<Array<T>>;
};
typedef LoDashArrayWrapper<T> = {
	function chunk(?size:Float):LoDashArrayWrapper<T>;
};
typedef LoDashStatic = {
	@:overload(function<T>(?array:List<T>):Array<T> { })
	function compact<T>(?array:Array<T>):Array<T>;
};
typedef LoDashArrayWrapper<T> = {
	function compact():LoDashArrayWrapper<T>;
};
typedef LoDashStatic = {
	@:overload(function<T>(?array:List<T>, others:haxe.extern.Rest<List<T>>):Array<T> { })
	function difference<T>(?array:Array<T>, others:haxe.extern.Rest<Array<T>>):Array<T>;
};
typedef LoDashArrayWrapper<T> = {
	@:overload(function(others:haxe.extern.Rest<List<T>>):LoDashArrayWrapper<T> { })
	function difference(others:haxe.extern.Rest<Array<T>>):LoDashArrayWrapper<T>;
};
typedef LoDashStatic = {
	@:overload(function<T>(array:List<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Float { })
	@:overload(function<T>(array:Array<T>, pluckValue:String):Float { })
	@:overload(function<T>(array:List<T>, pluckValue:String):Float { })
	@:overload(function<W, T>(array:Array<T>, whereDictionary:W):Float { })
	@:overload(function<W, T>(array:List<T>, whereDictionary:W):Float { })
	function findIndex<T>(array:Array<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Float;
};
typedef LoDashStatic = {
	@:overload(function<T>(array:List<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Float { })
	@:overload(function<T>(array:Array<T>, pluckValue:String):Float { })
	@:overload(function<T>(array:List<T>, pluckValue:String):Float { })
	@:overload(function<T>(array:Array<T>, whereDictionary:Dictionary<Dynamic>):Float { })
	@:overload(function<T>(array:List<T>, whereDictionary:Dictionary<Dynamic>):Float { })
	function findLastIndex<T>(array:Array<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Float;
};
typedef LoDashStatic = {
	@:overload(function<T>(?array:List<T>):T { })
	@:overload(function<T>(array:Array<T>, n:Float):Array<T> { })
	@:overload(function<T>(array:List<T>, n:Float):Array<T> { })
	@:overload(function<T>(array:Array<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(array:List<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(array:Array<T>, pluckValue:String):Array<T> { })
	@:overload(function<T>(array:List<T>, pluckValue:String):Array<T> { })
	@:overload(function<W, T>(array:Array<T>, whereValue:W):Array<T> { })
	@:overload(function<W, T>(array:List<T>, whereValue:W):Array<T> { })
	function first<T>(?array:Array<T>):T;
	@:overload(function<T>(array:List<T>):T { })
	@:overload(function<T>(array:Array<T>, n:Float):Array<T> { })
	@:overload(function<T>(array:List<T>, n:Float):Array<T> { })
	@:overload(function<T>(array:Array<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(array:List<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(array:Array<T>, pluckValue:String):Array<T> { })
	@:overload(function<T>(array:List<T>, pluckValue:String):Array<T> { })
	@:overload(function<W, T>(array:Array<T>, whereValue:W):Array<T> { })
	@:overload(function<W, T>(array:List<T>, whereValue:W):Array<T> { })
	function head<T>(array:Array<T>):T;
	@:overload(function<T>(array:List<T>):T { })
	@:overload(function<T>(array:Array<T>, n:Float):Array<T> { })
	@:overload(function<T>(array:List<T>, n:Float):Array<T> { })
	@:overload(function<T>(array:Array<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(array:List<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(array:Array<T>, pluckValue:String):Array<T> { })
	@:overload(function<T>(array:List<T>, pluckValue:String):Array<T> { })
	@:overload(function<W, T>(array:Array<T>, whereValue:W):Array<T> { })
	@:overload(function<W, T>(array:List<T>, whereValue:W):Array<T> { })
	function take<T>(array:Array<T>):T;
};
typedef LoDashArrayWrapper<T> = {
	@:overload(function(n:Float):LoDashArrayWrapper<T> { })
	@:overload(function(callback:ListIterator<T, Bool>, ?thisArg:Dynamic):LoDashArrayWrapper<T> { })
	@:overload(function(pluckValue:String):LoDashArrayWrapper<T> { })
	@:overload(function<W>(whereValue:W):LoDashArrayWrapper<T> { })
	function first():T;
	@:overload(function(n:Float):LoDashArrayWrapper<T> { })
	@:overload(function(callback:ListIterator<T, Bool>, ?thisArg:Dynamic):LoDashArrayWrapper<T> { })
	@:overload(function(pluckValue:String):LoDashArrayWrapper<T> { })
	@:overload(function<W>(whereValue:W):LoDashArrayWrapper<T> { })
	function head():T;
	@:overload(function(n:Float):LoDashArrayWrapper<T> { })
	@:overload(function(callback:ListIterator<T, Bool>, ?thisArg:Dynamic):LoDashArrayWrapper<T> { })
	@:overload(function(pluckValue:String):LoDashArrayWrapper<T> { })
	@:overload(function<W>(whereValue:W):LoDashArrayWrapper<T> { })
	function take():T;
};
typedef LoDashStatic = {
	@:overload(function<T>(array:List<Dynamic>, ?isShallow:Bool):Array<T> { })
	@:overload(function<T>(array:Array<Dynamic>, isShallow:Bool, callback:ListIterator<Dynamic, T>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(array:List<Dynamic>, isShallow:Bool, callback:ListIterator<Dynamic, T>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(array:Array<Dynamic>, callback:ListIterator<Dynamic, T>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(array:List<Dynamic>, callback:ListIterator<Dynamic, T>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<W, T>(array:Array<Dynamic>, isShallow:Bool, whereValue:W):Array<T> { })
	@:overload(function<W, T>(array:List<Dynamic>, isShallow:Bool, whereValue:W):Array<T> { })
	@:overload(function<W, T>(array:Array<Dynamic>, whereValue:W):Array<T> { })
	@:overload(function<W, T>(array:List<Dynamic>, whereValue:W):Array<T> { })
	@:overload(function<T>(array:Array<Dynamic>, isShallow:Bool, pluckValue:String):Array<T> { })
	@:overload(function<T>(array:List<Dynamic>, isShallow:Bool, pluckValue:String):Array<T> { })
	@:overload(function<T>(array:Array<Dynamic>, pluckValue:String):Array<T> { })
	@:overload(function<T>(array:List<Dynamic>, pluckValue:String):Array<T> { })
	function flatten<T>(array:Array<Dynamic>, ?isShallow:Bool):Array<T>;
};
typedef LoDashArrayWrapper<T> = {
	@:overload(function<Flat>(isShallow:Bool, callback:ListIterator<T, Flat>, ?thisArg:Dynamic):LoDashArrayWrapper<Flat> { })
	@:overload(function<Flat>(callback:ListIterator<T, Flat>, ?thisArg:Dynamic):LoDashArrayWrapper<Flat> { })
	@:overload(function<Flat>(isShallow:Bool, pluckValue:String):LoDashArrayWrapper<Flat> { })
	@:overload(function<Flat>(pluckValue:String):LoDashArrayWrapper<Flat> { })
	@:overload(function<Flat, W>(isShallow:Bool, whereValue:W):LoDashArrayWrapper<Flat> { })
	@:overload(function<Flat, W>(whereValue:W):LoDashArrayWrapper<Flat> { })
	function flatten<Flat>(?isShallow:Bool):LoDashArrayWrapper<Flat>;
};
typedef LoDashStatic = {
	@:overload(function<T>(array:List<T>, value:T):Float { })
	@:overload(function<T>(array:Array<T>, value:T, fromIndex:Float):Float { })
	@:overload(function<T>(array:List<T>, value:T, fromIndex:Float):Float { })
	@:overload(function<T>(array:Array<T>, value:T, isSorted:Bool):Float { })
	@:overload(function<T>(array:List<T>, value:T, isSorted:Bool):Float { })
	function indexOf<T>(array:Array<T>, value:T):Float;
};
typedef LoDashStatic = {
	@:overload(function<T>(array:List<T>):Array<T> { })
	@:overload(function<T>(array:Array<T>, n:Float):Array<T> { })
	@:overload(function<T>(array:List<T>, n:Float):Array<T> { })
	@:overload(function<T>(array:Array<T>, callback:ListIterator<T, Bool>):Array<T> { })
	@:overload(function<T>(array:List<T>, callback:ListIterator<T, Bool>):Array<T> { })
	@:overload(function<T>(array:Array<T>, pluckValue:String):Array<T> { })
	@:overload(function<T>(array:List<T>, pluckValue:String):Array<T> { })
	@:overload(function<W, T>(array:Array<T>, whereValue:W):Array<T> { })
	@:overload(function<W, T>(array:List<T>, whereValue:W):Array<T> { })
	function initial<T>(array:Array<T>):Array<T>;
};
typedef LoDashStatic = {
	@:overload(function<T>(arrays:haxe.extern.Rest<List<T>>):Array<T> { })
	function intersection<T>(arrays:haxe.extern.Rest<Array<T>>):Array<T>;
};
typedef LoDashStatic = {
	@:overload(function<T>(array:List<T>):T { })
	@:overload(function<T>(array:Array<T>, n:Float):Array<T> { })
	@:overload(function<T>(array:List<T>, n:Float):Array<T> { })
	@:overload(function<T>(array:Array<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(array:List<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(array:Array<T>, pluckValue:String):Array<T> { })
	@:overload(function<T>(array:List<T>, pluckValue:String):Array<T> { })
	@:overload(function<W, T>(array:Array<T>, whereValue:W):Array<T> { })
	@:overload(function<W, T>(array:List<T>, whereValue:W):Array<T> { })
	function last<T>(array:Array<T>):T;
};
typedef LoDashStatic = {
	@:overload(function<T>(array:List<T>, value:T, ?fromIndex:Float):Float { })
	function lastIndexOf<T>(array:Array<T>, value:T, ?fromIndex:Float):Float;
};
typedef LoDashStatic = {
	@:overload(function(array:List<Dynamic>, values:haxe.extern.Rest<Dynamic>):Array<Dynamic> { })
	function pull(array:Array<Dynamic>, values:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
};
typedef LoDashStatic = {
	@:overload(function(stop:Float):Array<Float> { })
	function range(start:Float, stop:Float, ?step:Float):Array<Float>;
};
typedef LoDashStatic = {
	@:overload(function(array:List<Dynamic>, ?callback:ListIterator<Dynamic, Bool>, ?thisArg:Dynamic):Array<Dynamic> { })
	@:overload(function(array:Array<Dynamic>, ?pluckValue:String):Array<Dynamic> { })
	@:overload(function(array:List<Dynamic>, ?pluckValue:String):Array<Dynamic> { })
	@:overload(function(array:Array<Dynamic>, ?wherealue:Dictionary<Dynamic>):Array<Dynamic> { })
	@:overload(function(array:List<Dynamic>, ?wherealue:Dictionary<Dynamic>):Array<Dynamic> { })
	function remove(array:Array<Dynamic>, ?callback:ListIterator<Dynamic, Bool>, ?thisArg:Dynamic):Array<Dynamic>;
};
typedef LoDashStatic = {
	@:overload(function<T>(array:List<T>):Array<T> { })
	@:overload(function<T>(array:Array<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(array:List<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(array:Array<T>, n:Float):Array<T> { })
	@:overload(function<T>(array:List<T>, n:Float):Array<T> { })
	@:overload(function<T>(array:Array<T>, pluckValue:String):Array<T> { })
	@:overload(function<T>(array:List<T>, pluckValue:String):Array<T> { })
	@:overload(function<W, T>(array:Array<T>, whereValue:W):Array<T> { })
	@:overload(function<W, T>(array:List<T>, whereValue:W):Array<T> { })
	function rest<T>(array:Array<T>):Array<T>;
	@:overload(function<T>(array:List<T>):Array<T> { })
	@:overload(function<T>(array:Array<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(array:List<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(array:Array<T>, n:Float):Array<T> { })
	@:overload(function<T>(array:List<T>, n:Float):Array<T> { })
	@:overload(function<T>(array:Array<T>, pluckValue:String):Array<T> { })
	@:overload(function<T>(array:List<T>, pluckValue:String):Array<T> { })
	@:overload(function<W, T>(array:Array<T>, whereValue:W):Array<T> { })
	@:overload(function<W, T>(array:List<T>, whereValue:W):Array<T> { })
	function drop<T>(array:Array<T>):Array<T>;
	@:overload(function<T>(array:List<T>):Array<T> { })
	@:overload(function<T>(array:Array<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(array:List<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(array:Array<T>, n:Float):Array<T> { })
	@:overload(function<T>(array:List<T>, n:Float):Array<T> { })
	@:overload(function<T>(array:Array<T>, pluckValue:String):Array<T> { })
	@:overload(function<T>(array:List<T>, pluckValue:String):Array<T> { })
	@:overload(function<W, T>(array:Array<T>, whereValue:W):Array<T> { })
	@:overload(function<W, T>(array:List<T>, whereValue:W):Array<T> { })
	function tail<T>(array:Array<T>):Array<T>;
};
typedef LoDashStatic = {
	@:overload(function<T, TSort>(array:List<T>, value:T, ?callback:T -> TSort, ?thisArg:Dynamic):Float { })
	@:overload(function<T>(array:Array<T>, value:T, pluckValue:String):Float { })
	@:overload(function<T>(array:List<T>, value:T, pluckValue:String):Float { })
	@:overload(function<W, T>(array:Array<T>, value:T, whereValue:W):Float { })
	@:overload(function<W, T>(array:List<T>, value:T, whereValue:W):Float { })
	function sortedIndex<T, TSort>(array:Array<T>, value:T, ?callback:T -> TSort, ?thisArg:Dynamic):Float;
};
typedef LoDashStatic = {
	@:overload(function<T>(arrays:haxe.extern.Rest<List<T>>):Array<T> { })
	function union<T>(arrays:haxe.extern.Rest<Array<T>>):Array<T>;
};
typedef LoDashStatic = {
	@:overload(function<T, TSort>(array:List<T>, ?isSorted:Bool):Array<T> { })
	@:overload(function<T, TSort>(array:Array<T>, isSorted:Bool, callback:ListIterator<T, TSort>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T, TSort>(array:List<T>, isSorted:Bool, callback:ListIterator<T, TSort>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T, TSort>(array:Array<T>, callback:ListIterator<T, TSort>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T, TSort>(array:List<T>, callback:ListIterator<T, TSort>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(array:Array<T>, isSorted:Bool, pluckValue:String):Array<T> { })
	@:overload(function<T>(array:List<T>, isSorted:Bool, pluckValue:String):Array<T> { })
	@:overload(function<T>(array:Array<T>, pluckValue:String):Array<T> { })
	@:overload(function<T>(array:List<T>, pluckValue:String):Array<T> { })
	@:overload(function<W, T>(array:Array<T>, isSorted:Bool, whereValue:W):Array<T> { })
	@:overload(function<W, T>(array:List<T>, isSorted:Bool, whereValue:W):Array<T> { })
	@:overload(function<W, T>(array:Array<T>, whereValue:W):Array<T> { })
	@:overload(function<W, T>(array:List<T>, whereValue:W):Array<T> { })
	function uniq<T, TSort>(array:Array<T>, ?isSorted:Bool):Array<T>;
	@:overload(function<T>(array:List<T>, ?isSorted:Bool):Array<T> { })
	@:overload(function<T, TSort>(array:Array<T>, callback:ListIterator<T, TSort>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T, TSort>(array:List<T>, callback:ListIterator<T, TSort>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T, TSort>(array:Array<T>, isSorted:Bool, callback:ListIterator<T, TSort>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T, TSort>(array:List<T>, isSorted:Bool, callback:ListIterator<T, TSort>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(array:Array<T>, isSorted:Bool, pluckValue:String):Array<T> { })
	@:overload(function<T>(array:List<T>, isSorted:Bool, pluckValue:String):Array<T> { })
	@:overload(function<T>(array:Array<T>, pluckValue:String):Array<T> { })
	@:overload(function<T>(array:List<T>, pluckValue:String):Array<T> { })
	@:overload(function<W, T>(array:Array<T>, ?whereValue:W):Array<T> { })
	@:overload(function<W, T>(array:List<T>, ?whereValue:W):Array<T> { })
	@:overload(function<W, T>(array:Array<T>, isSorted:Bool, ?whereValue:W):Array<T> { })
	@:overload(function<W, T>(array:List<T>, isSorted:Bool, ?whereValue:W):Array<T> { })
	function unique<T>(array:Array<T>, ?isSorted:Bool):Array<T>;
};
typedef LoDashArrayWrapper<T> = {
	@:overload(function<TSort>(isSorted:Bool, callback:ListIterator<T, TSort>, ?thisArg:Dynamic):LoDashArrayWrapper<T> { })
	@:overload(function<TSort>(callback:ListIterator<T, TSort>, ?thisArg:Dynamic):LoDashArrayWrapper<T> { })
	@:overload(function(isSorted:Bool, pluckValue:String):LoDashArrayWrapper<T> { })
	@:overload(function(pluckValue:String):LoDashArrayWrapper<T> { })
	@:overload(function<W>(isSorted:Bool, whereValue:W):LoDashArrayWrapper<T> { })
	@:overload(function<W>(whereValue:W):LoDashArrayWrapper<T> { })
	function uniq<TSort>(?isSorted:Bool):LoDashArrayWrapper<T>;
	@:overload(function<TSort>(isSorted:Bool, callback:ListIterator<T, TSort>, ?thisArg:Dynamic):LoDashArrayWrapper<T> { })
	@:overload(function<TSort>(callback:ListIterator<T, TSort>, ?thisArg:Dynamic):LoDashArrayWrapper<T> { })
	@:overload(function(isSorted:Bool, pluckValue:String):LoDashArrayWrapper<T> { })
	@:overload(function(pluckValue:String):LoDashArrayWrapper<T> { })
	@:overload(function<W>(isSorted:Bool, whereValue:W):LoDashArrayWrapper<T> { })
	@:overload(function<W>(whereValue:W):LoDashArrayWrapper<T> { })
	function unique<TSort>(?isSorted:Bool):LoDashArrayWrapper<T>;
};
typedef LoDashStatic = {
	@:overload(function<T>(array:List<T>, values:haxe.extern.Rest<T>):Array<T> { })
	function without<T>(array:Array<T>, values:haxe.extern.Rest<T>):Array<T>;
};
typedef LoDashStatic = {
	@:overload(function<T>(array:List<T>, others:haxe.extern.Rest<List<T>>):Array<T> { })
	function xor<T>(array:Array<T>, others:haxe.extern.Rest<Array<T>>):Array<T>;
};
typedef LoDashArrayWrapper<T> = {
	@:overload(function(others:haxe.extern.Rest<List<T>>):LoDashArrayWrapper<T> { })
	function xor(others:haxe.extern.Rest<Array<T>>):LoDashArrayWrapper<T>;
};
typedef LoDashStatic = {
	@:overload(function(arrays:haxe.extern.Rest<Dynamic>):Array<Dynamic> { })
	function zip(arrays:haxe.extern.Rest<Array<Dynamic>>):Array<Array<Dynamic>>;
	@:overload(function(arrays:haxe.extern.Rest<Dynamic>):Array<Dynamic> { })
	function unzip(arrays:haxe.extern.Rest<Array<Dynamic>>):Array<Array<Dynamic>>;
};
typedef LoDashArrayWrapper<T> = {
	function zip(arrays:haxe.extern.Rest<Array<Dynamic>>):_.LoDashArrayWrapper<Array<Array<Dynamic>>>;
	function unzip(arrays:haxe.extern.Rest<Dynamic>):_.LoDashArrayWrapper<Array<Array<Dynamic>>>;
};
typedef LoDashStatic = {
	@:overload(function<TResult:({ })>(props:List<List<Dynamic>>):Dictionary<Dynamic> { })
	function zipObject<TResult:({ })>(props:List<String>, ?values:List<Dynamic>):TResult;
	@:overload(function<TResult:({ })>(props:List<List<Dynamic>>):Dictionary<Dynamic> { })
	function object<TResult:({ })>(props:List<String>, ?values:List<Dynamic>):TResult;
};
typedef LoDashArrayWrapper<T> = {
	function zipObject(?values:List<Dynamic>):_.LoDashObjectWrapper<Dictionary<Dynamic>>;
	function object(?values:List<Dynamic>):_.LoDashObjectWrapper<Dictionary<Dynamic>>;
};
typedef LoDashStatic = {
	@:overload(function<T>(collection:List<T>, indexes:Array<Float>):Array<T> { })
	@:overload(function<T>(collection:Dictionary<T>, indexes:Array<Float>):Array<T> { })
	@:overload(function<T>(collection:Array<T>, indexes:haxe.extern.Rest<Float>):Array<T> { })
	@:overload(function<T>(collection:List<T>, indexes:haxe.extern.Rest<Float>):Array<T> { })
	@:overload(function<T>(collection:Dictionary<T>, indexes:haxe.extern.Rest<Float>):Array<T> { })
	function at<T>(collection:Array<T>, indexes:Array<Float>):Array<T>;
};
typedef LoDashStatic = {
	@:overload(function<T>(collection:List<T>, target:T, ?fromIndex:Float):Bool { })
	@:overload(function<T>(dictionary:Dictionary<T>, key:String, ?fromIndex:Float):Bool { })
	@:overload(function(searchString:String, targetString:String, ?fromIndex:Float):Bool { })
	function contains<T>(collection:Array<T>, target:T, ?fromIndex:Float):Bool;
	@:overload(function<T>(collection:List<T>, target:T, ?fromIndex:Float):Bool { })
	@:overload(function<T>(dictionary:Dictionary<T>, key:String, ?fromIndex:Float):Bool { })
	@:overload(function(searchString:String, targetString:String, ?fromIndex:Float):Bool { })
	function include<T>(collection:Array<T>, target:T, ?fromIndex:Float):Bool;
};
typedef LoDashStatic = {
	@:overload(function<T>(collection:List<T>, ?callback:ListIterator<T, Dynamic>, ?thisArg:Dynamic):Dictionary<Float> { })
	@:overload(function<T>(collection:Dictionary<T>, ?callback:DictionaryIterator<T, Dynamic>, ?thisArg:Dynamic):Dictionary<Float> { })
	@:overload(function<T>(collection:Array<T>, callback:String, ?thisArg:Dynamic):Dictionary<Float> { })
	@:overload(function<T>(collection:List<T>, callback:String, ?thisArg:Dynamic):Dictionary<Float> { })
	@:overload(function<T>(collection:Dictionary<T>, callback:String, ?thisArg:Dynamic):Dictionary<Float> { })
	function countBy<T>(collection:Array<T>, ?callback:ListIterator<T, Dynamic>, ?thisArg:Dynamic):Dictionary<Float>;
};
typedef LoDashArrayWrapper<T> = {
	@:overload(function(callback:String, ?thisArg:Dynamic):LoDashObjectWrapper<Dictionary<Float>> { })
	function countBy(?callback:ListIterator<T, Dynamic>, ?thisArg:Dynamic):LoDashObjectWrapper<Dictionary<Float>>;
};
typedef LoDashStatic = {
	@:overload(function<T>(collection:List<T>, ?callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Bool { })
	@:overload(function<T>(collection:Dictionary<T>, ?callback:DictionaryIterator<T, Bool>, ?thisArg:Dynamic):Bool { })
	@:overload(function<T>(collection:Array<T>, pluckValue:String):Bool { })
	@:overload(function<T>(collection:List<T>, pluckValue:String):Bool { })
	@:overload(function<T>(collection:Dictionary<T>, pluckValue:String):Bool { })
	@:overload(function<W, T>(collection:Array<T>, whereValue:W):Bool { })
	@:overload(function<W, T>(collection:List<T>, whereValue:W):Bool { })
	@:overload(function<W, T>(collection:Dictionary<T>, whereValue:W):Bool { })
	function every<T>(collection:Array<T>, ?callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Bool;
	@:overload(function<T>(collection:List<T>, ?callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Bool { })
	@:overload(function<T>(collection:Dictionary<T>, ?callback:DictionaryIterator<T, Bool>, ?thisArg:Dynamic):Bool { })
	@:overload(function<T>(collection:Array<T>, pluckValue:String):Bool { })
	@:overload(function<T>(collection:List<T>, pluckValue:String):Bool { })
	@:overload(function<T>(collection:Dictionary<T>, pluckValue:String):Bool { })
	@:overload(function<W, T>(collection:Array<T>, whereValue:W):Bool { })
	@:overload(function<W, T>(collection:List<T>, whereValue:W):Bool { })
	@:overload(function<W, T>(collection:Dictionary<T>, whereValue:W):Bool { })
	function all<T>(collection:Array<T>, ?callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Bool;
};
typedef LoDashStatic = {
	@:overload(function<T>(collection:List<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(collection:Dictionary<T>, callback:DictionaryIterator<T, Bool>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(collection:Array<T>, pluckValue:String):Array<T> { })
	@:overload(function<T>(collection:List<T>, pluckValue:String):Array<T> { })
	@:overload(function<T>(collection:Dictionary<T>, pluckValue:String):Array<T> { })
	@:overload(function<W, T>(collection:Array<T>, whereValue:W):Array<T> { })
	@:overload(function<W, T>(collection:List<T>, whereValue:W):Array<T> { })
	@:overload(function<W, T>(collection:Dictionary<T>, whereValue:W):Array<T> { })
	function filter<T>(collection:Array<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Array<T>;
	@:overload(function<T>(collection:List<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(collection:Dictionary<T>, callback:DictionaryIterator<T, Bool>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(collection:Array<T>, pluckValue:String):Array<T> { })
	@:overload(function<T>(collection:List<T>, pluckValue:String):Array<T> { })
	@:overload(function<T>(collection:Dictionary<T>, pluckValue:String):Array<T> { })
	@:overload(function<W, T>(collection:Array<T>, whereValue:W):Array<T> { })
	@:overload(function<W, T>(collection:List<T>, whereValue:W):Array<T> { })
	@:overload(function<W, T>(collection:Dictionary<T>, whereValue:W):Array<T> { })
	function select<T>(collection:Array<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Array<T>;
};
typedef LoDashArrayWrapper<T> = {
	@:overload(function(pluckValue:String):LoDashArrayWrapper<T> { })
	@:overload(function<W>(whereValue:W):LoDashArrayWrapper<T> { })
	function filter(callback:ListIterator<T, Bool>, ?thisArg:Dynamic):LoDashArrayWrapper<T>;
	@:overload(function(pluckValue:String):LoDashArrayWrapper<T> { })
	@:overload(function<W>(whereValue:W):LoDashArrayWrapper<T> { })
	function select(callback:ListIterator<T, Bool>, ?thisArg:Dynamic):LoDashArrayWrapper<T>;
};
typedef LoDashObjectWrapper<T> = {
	function filter<T:({ })>(callback:ObjectIterator<T, Bool>, ?thisArg:Dynamic):LoDashObjectWrapper<T>;
};
typedef LoDashStatic = {
	@:overload(function<T>(collection:List<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):T { })
	@:overload(function<T>(collection:Dictionary<T>, callback:DictionaryIterator<T, Bool>, ?thisArg:Dynamic):T { })
	@:overload(function<W, T>(collection:Array<T>, whereValue:W):T { })
	@:overload(function<W, T>(collection:List<T>, whereValue:W):T { })
	@:overload(function<W, T>(collection:Dictionary<T>, whereValue:W):T { })
	@:overload(function<T>(collection:Array<T>, pluckValue:String):T { })
	@:overload(function<T>(collection:List<T>, pluckValue:String):T { })
	@:overload(function<T>(collection:Dictionary<T>, pluckValue:String):T { })
	function find<T>(collection:Array<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):T;
	@:overload(function<T>(collection:List<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):T { })
	@:overload(function<T>(collection:Dictionary<T>, callback:DictionaryIterator<T, Bool>, ?thisArg:Dynamic):T { })
	@:overload(function<W, T>(collection:Array<T>, whereValue:W):T { })
	@:overload(function<W, T>(collection:List<T>, whereValue:W):T { })
	@:overload(function<W, T>(collection:Dictionary<T>, whereValue:W):T { })
	@:overload(function<T>(collection:Array<T>, pluckValue:String):T { })
	@:overload(function<T>(collection:List<T>, pluckValue:String):T { })
	@:overload(function<T>(collection:Dictionary<T>, pluckValue:String):T { })
	function detect<T>(collection:Array<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):T;
	@:overload(function<T>(collection:List<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):T { })
	@:overload(function<T>(collection:Dictionary<T>, callback:DictionaryIterator<T, Bool>, ?thisArg:Dynamic):T { })
	@:overload(function<W, T>(collection:Array<T>, whereValue:W):T { })
	@:overload(function<W, T>(collection:List<T>, whereValue:W):T { })
	@:overload(function<W, T>(collection:Dictionary<T>, whereValue:W):T { })
	@:overload(function<T>(collection:Array<T>, pluckValue:String):T { })
	@:overload(function<T>(collection:List<T>, pluckValue:String):T { })
	@:overload(function<T>(collection:Dictionary<T>, pluckValue:String):T { })
	function findWhere<T>(collection:Array<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):T;
};
typedef LoDashArrayWrapper<T> = {
	@:overload(function<W>(whereValue:W):T { })
	@:overload(function(pluckValue:String):T { })
	function find(callback:ListIterator<T, Bool>, ?thisArg:Dynamic):T;
};
typedef LoDashStatic = {
	@:overload(function<T>(collection:List<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):T { })
	@:overload(function<T>(collection:Dictionary<T>, callback:DictionaryIterator<T, Bool>, ?thisArg:Dynamic):T { })
	@:overload(function<W, T>(collection:Array<T>, whereValue:W):T { })
	@:overload(function<W, T>(collection:List<T>, whereValue:W):T { })
	@:overload(function<W, T>(collection:Dictionary<T>, whereValue:W):T { })
	@:overload(function<T>(collection:Array<T>, pluckValue:String):T { })
	@:overload(function<T>(collection:List<T>, pluckValue:String):T { })
	@:overload(function<T>(collection:Dictionary<T>, pluckValue:String):T { })
	function findLast<T>(collection:Array<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):T;
};
typedef LoDashArrayWrapper<T> = {
	@:overload(function<W>(whereValue:W):T { })
	@:overload(function(pluckValue:String):T { })
	function findLast(callback:ListIterator<T, Bool>, ?thisArg:Dynamic):T;
};
typedef LoDashStatic = {
	@:overload(function<T>(collection:List<T>, callback:ListIterator<T, Void>, ?thisArg:Dynamic):List<T> { })
	@:overload(function<T:({ })>(object:Dictionary<T>, callback:DictionaryIterator<T, Void>, ?thisArg:Dynamic):Dictionary<T> { })
	@:overload(function<T:({ }), TValue>(object:T, callback:ObjectIterator<TValue, Void>, ?thisArg:Dynamic):T { })
	function forEach<T>(collection:Array<T>, callback:ListIterator<T, Void>, ?thisArg:Dynamic):Array<T>;
	@:overload(function<T>(collection:List<T>, callback:ListIterator<T, Void>, ?thisArg:Dynamic):List<T> { })
	@:overload(function<T:({ })>(object:Dictionary<T>, callback:DictionaryIterator<T, Void>, ?thisArg:Dynamic):Dictionary<T> { })
	@:overload(function<T:({ }), TValue>(object:T, callback:ObjectIterator<TValue, Void>, ?thisArg:Dynamic):T { })
	function each<T>(collection:Array<T>, callback:ListIterator<T, Void>, ?thisArg:Dynamic):Array<T>;
};
typedef LoDashArrayWrapper<T> = {
	function forEach(callback:ListIterator<T, Void>, ?thisArg:Dynamic):LoDashArrayWrapper<T>;
	function each(callback:ListIterator<T, Void>, ?thisArg:Dynamic):LoDashArrayWrapper<T>;
};
typedef LoDashObjectWrapper<T> = {
	function forEach<T:({ })>(callback:ObjectIterator<T, Void>, ?thisArg:Dynamic):LoDashObjectWrapper<T>;
	function each<T:({ })>(callback:ObjectIterator<T, Void>, ?thisArg:Dynamic):LoDashObjectWrapper<T>;
};
typedef LoDashStatic = {
	@:overload(function<T>(collection:List<T>, callback:ListIterator<T, Void>, ?thisArg:Dynamic):List<T> { })
	@:overload(function<T:({ })>(object:Dictionary<T>, callback:DictionaryIterator<T, Void>, ?thisArg:Dynamic):Dictionary<T> { })
	function forEachRight<T>(collection:Array<T>, callback:ListIterator<T, Void>, ?thisArg:Dynamic):Array<T>;
	@:overload(function<T>(collection:List<T>, callback:ListIterator<T, Void>, ?thisArg:Dynamic):List<T> { })
	@:overload(function<T:({ })>(object:Dictionary<T>, callback:DictionaryIterator<T, Void>, ?thisArg:Dynamic):Dictionary<T> { })
	function eachRight<T>(collection:Array<T>, callback:ListIterator<T, Void>, ?thisArg:Dynamic):Array<T>;
};
typedef LoDashArrayWrapper<T> = {
	function forEachRight(callback:ListIterator<T, Void>, ?thisArg:Dynamic):LoDashArrayWrapper<T>;
	function eachRight(callback:ListIterator<T, Void>, ?thisArg:Dynamic):LoDashArrayWrapper<T>;
};
typedef LoDashObjectWrapper<T> = {
	function forEachRight<T:({ })>(callback:ObjectIterator<T, Void>, ?thisArg:Dynamic):LoDashObjectWrapper<Dictionary<T>>;
	function eachRight<T:({ })>(callback:ObjectIterator<T, Void>, ?thisArg:Dynamic):LoDashObjectWrapper<Dictionary<T>>;
};
typedef LoDashStatic = {
	@:overload(function<T>(collection:List<T>, ?callback:ListIterator<T, Dynamic>, ?thisArg:Dynamic):Dictionary<Array<T>> { })
	@:overload(function<T>(collection:Array<T>, pluckValue:String):Dictionary<Array<T>> { })
	@:overload(function<T>(collection:List<T>, pluckValue:String):Dictionary<Array<T>> { })
	@:overload(function<W, T>(collection:Array<T>, whereValue:W):Dictionary<Array<T>> { })
	@:overload(function<W, T>(collection:List<T>, whereValue:W):Dictionary<Array<T>> { })
	@:overload(function<T>(collection:Dictionary<T>, ?callback:DictionaryIterator<T, Dynamic>, ?thisArg:Dynamic):Dictionary<Array<T>> { })
	@:overload(function<TValue>(collection:Dictionary<TValue>, pluckValue:String):Dictionary<Array<TValue>> { })
	@:overload(function<W, TValue>(collection:Dictionary<TValue>, whereValue:W):Dictionary<Array<TValue>> { })
	function groupBy<T>(collection:Array<T>, ?callback:ListIterator<T, Dynamic>, ?thisArg:Dynamic):Dictionary<Array<T>>;
};
typedef LoDashArrayWrapper<T> = {
	@:overload(function(pluckValue:String):_.LoDashObjectWrapper<_.Dictionary<Array<T>>> { })
	@:overload(function<W>(whereValue:W):_.LoDashObjectWrapper<_.Dictionary<Array<T>>> { })
	function groupBy(callback:ListIterator<T, Dynamic>, ?thisArg:Dynamic):_.LoDashObjectWrapper<_.Dictionary<Array<T>>>;
};
typedef LoDashObjectWrapper<T> = {
	@:overload(function<TValue>(pluckValue:String):_.LoDashObjectWrapper<_.Dictionary<Array<TValue>>> { })
	@:overload(function<W, TValue>(whereValue:W):_.LoDashObjectWrapper<_.Dictionary<Array<TValue>>> { })
	function groupBy<TValue>(callback:ListIterator<TValue, Dynamic>, ?thisArg:Dynamic):_.LoDashObjectWrapper<_.Dictionary<Array<TValue>>>;
};
typedef LoDashStatic = {
	@:overload(function<T>(list:List<T>, iterator:ListIterator<T, Dynamic>, ?context:Dynamic):Dictionary<T> { })
	@:overload(function<T>(collection:Array<T>, pluckValue:String):Dictionary<T> { })
	@:overload(function<T>(collection:List<T>, pluckValue:String):Dictionary<T> { })
	@:overload(function<W, T>(collection:Array<T>, whereValue:W):Dictionary<T> { })
	@:overload(function<W, T>(collection:List<T>, whereValue:W):Dictionary<T> { })
	function indexBy<T>(list:Array<T>, iterator:ListIterator<T, Dynamic>, ?context:Dynamic):Dictionary<T>;
};
typedef LoDashStatic = {
	@:overload(function<T:({ })>(collection:List<T>, methodName:String, args:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function<T:({ })>(collection:Dictionary<T>, methodName:String, args:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function<T:({ })>(collection:Array<T>, method:haxe.Constraints.Function, args:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function<T:({ })>(collection:List<T>, method:haxe.Constraints.Function, args:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function<T:({ })>(collection:Dictionary<T>, method:haxe.Constraints.Function, args:haxe.extern.Rest<Dynamic>):Dynamic { })
	function invoke<T:({ })>(collection:Array<T>, methodName:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
};
typedef LoDashStatic = {
	@:overload(function<T, TResult>(collection:List<T>, callback:ListIterator<T, TResult>, ?thisArg:Dynamic):Array<TResult> { })
	@:overload(function<T:({ }), TResult>(object:Dictionary<T>, callback:DictionaryIterator<T, TResult>, ?thisArg:Dynamic):Array<TResult> { })
	@:overload(function<T, TResult>(collection:Array<T>, pluckValue:String):Array<TResult> { })
	@:overload(function<T, TResult>(collection:List<T>, pluckValue:String):Array<TResult> { })
	function map<T, TResult>(collection:Array<T>, callback:ListIterator<T, TResult>, ?thisArg:Dynamic):Array<TResult>;
	@:overload(function<T, TResult>(collection:List<T>, callback:ListIterator<T, TResult>, ?thisArg:Dynamic):Array<TResult> { })
	@:overload(function<T:({ }), TResult>(object:Dictionary<T>, callback:DictionaryIterator<T, TResult>, ?thisArg:Dynamic):Array<TResult> { })
	@:overload(function<T, TResult>(collection:Array<T>, pluckValue:String):Array<TResult> { })
	@:overload(function<T, TResult>(collection:List<T>, pluckValue:String):Array<TResult> { })
	function collect<T, TResult>(collection:Array<T>, callback:ListIterator<T, TResult>, ?thisArg:Dynamic):Array<TResult>;
};
typedef LoDashArrayWrapper<T> = {
	@:overload(function<TResult>(pluckValue:String):LoDashArrayWrapper<TResult> { })
	function map<TResult>(callback:ListIterator<T, TResult>, ?thisArg:Dynamic):LoDashArrayWrapper<TResult>;
	@:overload(function<TResult>(pluckValue:String):LoDashArrayWrapper<TResult> { })
	function collect<TResult>(callback:ListIterator<T, TResult>, ?thisArg:Dynamic):LoDashArrayWrapper<TResult>;
};
typedef LoDashObjectWrapper<T> = {
	function map<T:({ }), TResult>(callback:ObjectIterator<T, TResult>, ?thisArg:Dynamic):LoDashArrayWrapper<TResult>;
	function collect<T:({ }), TResult>(callback:ObjectIterator<T, TResult>, ?thisArg:Dynamic):LoDashArrayWrapper<TResult>;
};
typedef LoDashStatic = {
	@:overload(function<T>(collection:List<T>, ?callback:ListIterator<T, Dynamic>, ?thisArg:Dynamic):T { })
	@:overload(function<T>(collection:Dictionary<T>, ?callback:DictionaryIterator<T, Dynamic>, ?thisArg:Dynamic):T { })
	@:overload(function<T>(collection:Array<T>, pluckValue:String):T { })
	@:overload(function<T>(collection:List<T>, pluckValue:String):T { })
	@:overload(function<T>(collection:Dictionary<T>, pluckValue:String):T { })
	@:overload(function<W, T>(collection:Array<T>, whereValue:W):T { })
	@:overload(function<W, T>(collection:List<T>, whereValue:W):T { })
	@:overload(function<W, T>(collection:Dictionary<T>, whereValue:W):T { })
	function max<T>(collection:Array<T>, ?callback:ListIterator<T, Dynamic>, ?thisArg:Dynamic):T;
};
typedef LoDashArrayWrapper<T> = {
	@:overload(function(pluckValue:String):LoDashWrapper<T> { })
	@:overload(function<W>(whereValue:W):LoDashWrapper<T> { })
	function max(?callback:ListIterator<T, Dynamic>, ?thisArg:Dynamic):LoDashWrapper<T>;
};
typedef LoDashStatic = {
	@:overload(function<T>(collection:List<T>, ?callback:ListIterator<T, Dynamic>, ?thisArg:Dynamic):T { })
	@:overload(function<T>(collection:Dictionary<T>, ?callback:ListIterator<T, Dynamic>, ?thisArg:Dynamic):T { })
	@:overload(function<T>(collection:Array<T>, pluckValue:String):T { })
	@:overload(function<T>(collection:List<T>, pluckValue:String):T { })
	@:overload(function<T>(collection:Dictionary<T>, pluckValue:String):T { })
	@:overload(function<W, T>(collection:Array<T>, whereValue:W):T { })
	@:overload(function<W, T>(collection:List<T>, whereValue:W):T { })
	@:overload(function<W, T>(collection:Dictionary<T>, whereValue:W):T { })
	function min<T>(collection:Array<T>, ?callback:ListIterator<T, Dynamic>, ?thisArg:Dynamic):T;
};
typedef LoDashArrayWrapper<T> = {
	@:overload(function(pluckValue:String):LoDashWrapper<T> { })
	@:overload(function<W>(whereValue:W):LoDashWrapper<T> { })
	function min(?callback:ListIterator<T, Dynamic>, ?thisArg:Dynamic):LoDashWrapper<T>;
};
typedef LoDashStatic = {
	@:overload(function(collection:List<Float>):Float { })
	@:overload(function(collection:Dictionary<Float>):Float { })
	@:overload(function<T>(collection:Array<T>, iteratee:ListIterator<T, Float>, ?thisArg:Dynamic):Float { })
	@:overload(function<T>(collection:List<T>, iteratee:ListIterator<T, Float>, ?thisArg:Dynamic):Float { })
	@:overload(function<T>(collection:Dictionary<T>, iteratee:ObjectIterator<T, Float>, ?thisArg:Dynamic):Float { })
	@:overload(function<T>(collection:Array<T>, property:String):Float { })
	@:overload(function<T>(collection:List<T>, property:String):Float { })
	@:overload(function<T>(collection:Dictionary<T>, property:String):Float { })
	function sum(collection:Array<Float>):Float;
};
typedef LoDashNumberArrayWrapper = {
	@:overload(function(iteratee:ListIterator<Float, Float>, ?thisArg:Dynamic):Float { })
	function sum():Float;
};
typedef LoDashArrayWrapper<T> = {
	@:overload(function(property:String):Float { })
	function sum(iteratee:ListIterator<T, Float>, ?thisArg:Dynamic):Float;
};
typedef LoDashObjectWrapper<T> = {
	@:overload(function(iteratee:ObjectIterator<Dynamic, Float>, ?thisArg:Dynamic):Float { })
	@:overload(function(property:String):Float { })
	function sum():Float;
};
typedef LoDashStatic = {
	@:overload(function<T:({ })>(collection:List<T>, property:String):Array<Dynamic> { })
	@:overload(function<T:({ })>(collection:Dictionary<T>, property:String):Array<Dynamic> { })
	function pluck<T:({ })>(collection:Array<T>, property:String):Array<Dynamic>;
};
typedef LoDashArrayWrapper<T> = {
	function pluck<TResult>(property:String):LoDashArrayWrapper<TResult>;
};
typedef LoDashObjectWrapper<T> = {
	function pluck<TResult>(property:String):LoDashArrayWrapper<TResult>;
};
typedef LoDashStatic = {
	@:overload(function<T, TResult>(collection:List<T>, callback:MemoIterator<T, TResult>, accumulator:TResult, ?thisArg:Dynamic):TResult { })
	@:overload(function<T, TResult>(collection:Dictionary<T>, callback:MemoIterator<T, TResult>, accumulator:TResult, ?thisArg:Dynamic):TResult { })
	@:overload(function<T, TResult>(collection:Array<T>, callback:MemoIterator<T, TResult>, ?thisArg:Dynamic):TResult { })
	@:overload(function<T, TResult>(collection:List<T>, callback:MemoIterator<T, TResult>, ?thisArg:Dynamic):TResult { })
	@:overload(function<T, TResult>(collection:Dictionary<T>, callback:MemoIterator<T, TResult>, ?thisArg:Dynamic):TResult { })
	function reduce<T, TResult>(collection:Array<T>, callback:MemoIterator<T, TResult>, accumulator:TResult, ?thisArg:Dynamic):TResult;
	@:overload(function<T, TResult>(collection:List<T>, callback:MemoIterator<T, TResult>, accumulator:TResult, ?thisArg:Dynamic):TResult { })
	@:overload(function<T, TResult>(collection:Dictionary<T>, callback:MemoIterator<T, TResult>, accumulator:TResult, ?thisArg:Dynamic):TResult { })
	@:overload(function<T, TResult>(collection:Array<T>, callback:MemoIterator<T, TResult>, ?thisArg:Dynamic):TResult { })
	@:overload(function<T, TResult>(collection:List<T>, callback:MemoIterator<T, TResult>, ?thisArg:Dynamic):TResult { })
	@:overload(function<T, TResult>(collection:Dictionary<T>, callback:MemoIterator<T, TResult>, ?thisArg:Dynamic):TResult { })
	function inject<T, TResult>(collection:Array<T>, callback:MemoIterator<T, TResult>, accumulator:TResult, ?thisArg:Dynamic):TResult;
	@:overload(function<T, TResult>(collection:List<T>, callback:MemoIterator<T, TResult>, accumulator:TResult, ?thisArg:Dynamic):TResult { })
	@:overload(function<T, TResult>(collection:Dictionary<T>, callback:MemoIterator<T, TResult>, accumulator:TResult, ?thisArg:Dynamic):TResult { })
	@:overload(function<T, TResult>(collection:Array<T>, callback:MemoIterator<T, TResult>, ?thisArg:Dynamic):TResult { })
	@:overload(function<T, TResult>(collection:List<T>, callback:MemoIterator<T, TResult>, ?thisArg:Dynamic):TResult { })
	@:overload(function<T, TResult>(collection:Dictionary<T>, callback:MemoIterator<T, TResult>, ?thisArg:Dynamic):TResult { })
	function foldl<T, TResult>(collection:Array<T>, callback:MemoIterator<T, TResult>, accumulator:TResult, ?thisArg:Dynamic):TResult;
};
typedef LoDashArrayWrapper<T> = {
	@:overload(function<TResult>(callback:MemoIterator<T, TResult>, ?thisArg:Dynamic):TResult { })
	function reduce<TResult>(callback:MemoIterator<T, TResult>, accumulator:TResult, ?thisArg:Dynamic):TResult;
	@:overload(function<TResult>(callback:MemoIterator<T, TResult>, ?thisArg:Dynamic):TResult { })
	function inject<TResult>(callback:MemoIterator<T, TResult>, accumulator:TResult, ?thisArg:Dynamic):TResult;
	@:overload(function<TResult>(callback:MemoIterator<T, TResult>, ?thisArg:Dynamic):TResult { })
	function foldl<TResult>(callback:MemoIterator<T, TResult>, accumulator:TResult, ?thisArg:Dynamic):TResult;
};
typedef LoDashObjectWrapper<T> = {
	@:overload(function<TValue, TResult>(callback:MemoIterator<TValue, TResult>, ?thisArg:Dynamic):TResult { })
	function reduce<TValue, TResult>(callback:MemoIterator<TValue, TResult>, accumulator:TResult, ?thisArg:Dynamic):TResult;
	@:overload(function<TValue, TResult>(callback:MemoIterator<TValue, TResult>, ?thisArg:Dynamic):TResult { })
	function inject<TValue, TResult>(callback:MemoIterator<TValue, TResult>, accumulator:TResult, ?thisArg:Dynamic):TResult;
	@:overload(function<TValue, TResult>(callback:MemoIterator<TValue, TResult>, ?thisArg:Dynamic):TResult { })
	function foldl<TValue, TResult>(callback:MemoIterator<TValue, TResult>, accumulator:TResult, ?thisArg:Dynamic):TResult;
};
typedef LoDashStatic = {
	@:overload(function<T, TResult>(collection:List<T>, callback:MemoIterator<T, TResult>, accumulator:TResult, ?thisArg:Dynamic):TResult { })
	@:overload(function<T, TResult>(collection:Dictionary<T>, callback:MemoIterator<T, TResult>, accumulator:TResult, ?thisArg:Dynamic):TResult { })
	@:overload(function<T, TResult>(collection:Array<T>, callback:MemoIterator<T, TResult>, ?thisArg:Dynamic):TResult { })
	@:overload(function<T, TResult>(collection:List<T>, callback:MemoIterator<T, TResult>, ?thisArg:Dynamic):TResult { })
	@:overload(function<T, TResult>(collection:Dictionary<T>, callback:MemoIterator<T, TResult>, ?thisArg:Dynamic):TResult { })
	function reduceRight<T, TResult>(collection:Array<T>, callback:MemoIterator<T, TResult>, accumulator:TResult, ?thisArg:Dynamic):TResult;
	@:overload(function<T, TResult>(collection:List<T>, callback:MemoIterator<T, TResult>, accumulator:TResult, ?thisArg:Dynamic):TResult { })
	@:overload(function<T, TResult>(collection:Dictionary<T>, callback:MemoIterator<T, TResult>, accumulator:TResult, ?thisArg:Dynamic):TResult { })
	@:overload(function<T, TResult>(collection:Array<T>, callback:MemoIterator<T, TResult>, ?thisArg:Dynamic):TResult { })
	@:overload(function<T, TResult>(collection:List<T>, callback:MemoIterator<T, TResult>, ?thisArg:Dynamic):TResult { })
	@:overload(function<T, TResult>(collection:Dictionary<T>, callback:MemoIterator<T, TResult>, ?thisArg:Dynamic):TResult { })
	function foldr<T, TResult>(collection:Array<T>, callback:MemoIterator<T, TResult>, accumulator:TResult, ?thisArg:Dynamic):TResult;
};
typedef LoDashStatic = {
	@:overload(function<T>(collection:List<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(collection:Dictionary<T>, callback:DictionaryIterator<T, Bool>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(collection:Array<T>, pluckValue:String):Array<T> { })
	@:overload(function<T>(collection:List<T>, pluckValue:String):Array<T> { })
	@:overload(function<T>(collection:Dictionary<T>, pluckValue:String):Array<T> { })
	@:overload(function<W, T>(collection:Array<T>, whereValue:W):Array<T> { })
	@:overload(function<W, T>(collection:List<T>, whereValue:W):Array<T> { })
	@:overload(function<W, T>(collection:Dictionary<T>, whereValue:W):Array<T> { })
	function reject<T>(collection:Array<T>, callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Array<T>;
};
typedef LoDashArrayWrapper<T> = {
	@:overload(function(pluckValue:String):LoDashArrayWrapper<T> { })
	@:overload(function<W>(whereValue:W):LoDashArrayWrapper<T> { })
	function reject(callback:ListIterator<T, Bool>, ?thisArg:Dynamic):LoDashArrayWrapper<T>;
};
typedef LoDashStatic = {
	@:overload(function<T>(collection:List<T>):T { })
	@:overload(function<T>(collection:Dictionary<T>):T { })
	@:overload(function<T>(collection:Array<T>, n:Float):Array<T> { })
	@:overload(function<T>(collection:List<T>, n:Float):Array<T> { })
	@:overload(function<T>(collection:Dictionary<T>, n:Float):Array<T> { })
	function sample<T>(collection:Array<T>):T;
};
typedef LoDashStatic = {
	@:overload(function<T>(collection:List<T>):Array<T> { })
	@:overload(function<T>(collection:Dictionary<T>):Array<T> { })
	function shuffle<T>(collection:Array<T>):Array<T>;
};
typedef LoDashArrayWrapper<T> = {
	function shuffle():LoDashArrayWrapper<T>;
};
typedef LoDashObjectWrapper<T> = {
	function shuffle():LoDashArrayWrapper<T>;
};
typedef LoDashStatic = {
	@:overload(function<T>(collection:List<T>):Float { })
	@:overload(function<T:({ })>(object:T):Float { })
	@:overload(function(aString:String):Float { })
	function size<T>(collection:Array<T>):Float;
};
typedef LoDashStatic = {
	@:overload(function<T>(collection:List<T>, ?callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Bool { })
	@:overload(function<T>(collection:Dictionary<T>, ?callback:DictionaryIterator<T, Bool>, ?thisArg:Dynamic):Bool { })
	@:overload(function(collection:{ }, ?callback:ListIterator<{ }, Bool>, ?thisArg:Dynamic):Bool { })
	@:overload(function<T>(collection:Array<T>, pluckValue:String):Bool { })
	@:overload(function<T>(collection:List<T>, pluckValue:String):Bool { })
	@:overload(function<T>(collection:Dictionary<T>, pluckValue:String):Bool { })
	@:overload(function<W, T>(collection:Array<T>, whereValue:W):Bool { })
	@:overload(function<W, T>(collection:List<T>, whereValue:W):Bool { })
	@:overload(function<W, T>(collection:Dictionary<T>, whereValue:W):Bool { })
	function some<T>(collection:Array<T>, ?callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Bool;
	@:overload(function<T>(collection:List<T>, ?callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Bool { })
	@:overload(function<T>(collection:Dictionary<T>, ?callback:DictionaryIterator<T, Bool>, ?thisArg:Dynamic):Bool { })
	@:overload(function(collection:{ }, ?callback:ListIterator<{ }, Bool>, ?thisArg:Dynamic):Bool { })
	@:overload(function<T>(collection:Array<T>, pluckValue:String):Bool { })
	@:overload(function<T>(collection:List<T>, pluckValue:String):Bool { })
	@:overload(function<T>(collection:Dictionary<T>, pluckValue:String):Bool { })
	@:overload(function<W, T>(collection:Array<T>, whereValue:W):Bool { })
	@:overload(function<W, T>(collection:List<T>, whereValue:W):Bool { })
	@:overload(function<W, T>(collection:Dictionary<T>, whereValue:W):Bool { })
	function any<T>(collection:Array<T>, ?callback:ListIterator<T, Bool>, ?thisArg:Dynamic):Bool;
};
typedef LoDashStatic = {
	@:overload(function<T, TSort>(collection:List<T>, ?callback:ListIterator<T, TSort>, ?thisArg:Dynamic):Array<T> { })
	@:overload(function<T>(collection:Array<T>, pluckValue:String):Array<T> { })
	@:overload(function<T>(collection:List<T>, pluckValue:String):Array<T> { })
	@:overload(function<W, T>(collection:Array<T>, whereValue:W):Array<T> { })
	@:overload(function<W, T>(collection:List<T>, whereValue:W):Array<T> { })
	function sortBy<T, TSort>(collection:Array<T>, ?callback:ListIterator<T, TSort>, ?thisArg:Dynamic):Array<T>;
};
typedef LoDashArrayWrapper<T> = {
	@:overload(function(pluckValue:String):LoDashArrayWrapper<T> { })
	@:overload(function<W>(whereValue:W):LoDashArrayWrapper<T> { })
	function sortBy<TSort>(?callback:ListIterator<T, TSort>, ?thisArg:Dynamic):LoDashArrayWrapper<T>;
};
typedef LoDashStatic = {
	@:overload(function<T>(collection:List<T>):Array<T> { })
	@:overload(function<T>(collection:Dictionary<T>):Array<T> { })
	function toArray<T>(collection:Array<T>):Array<T>;
};
typedef LoDashArrayWrapper<T> = {
	function toArray():LoDashArrayWrapper<T>;
};
typedef LoDashObjectWrapper<T> = {
	function toArray<TValue>():LoDashArrayWrapper<TValue>;
};
typedef LoDashStatic = {
	@:overload(function<T, U:({ })>(list:List<T>, properties:U):Array<T> { })
	@:overload(function<T, U:({ })>(list:Dictionary<T>, properties:U):Array<T> { })
	function where<T, U:({ })>(list:Array<T>, properties:U):Array<T>;
};
typedef LoDashArrayWrapper<T> = {
	function where<T, U:({ })>(properties:U):LoDashArrayWrapper<T>;
};
typedef LoDashStatic = {
	function now():Float;
};
typedef LoDashStatic = {
	function after(n:Float, func:haxe.Constraints.Function):haxe.Constraints.Function;
};
typedef LoDashWrapper<T> = {
	function after(func:haxe.Constraints.Function):LoDashObjectWrapper<haxe.Constraints.Function>;
};
typedef LoDashStatic = {
	function bind(func:haxe.Constraints.Function, thisArg:Dynamic, args:haxe.extern.Rest<Dynamic>):haxe.extern.Rest<Dynamic> -> Dynamic;
};
typedef LoDashObjectWrapper<T> = {
	function bind(thisArg:Dynamic, args:haxe.extern.Rest<Dynamic>):LoDashObjectWrapper<haxe.extern.Rest<Dynamic> -> Dynamic>;
};
typedef LoDashStatic = {
	function bindAll<T>(object:T, methodNames:haxe.extern.Rest<String>):T;
};
typedef LoDashObjectWrapper<T> = {
	function bindAll(methodNames:haxe.extern.Rest<String>):LoDashWrapper<T>;
};
typedef LoDashStatic = {
	function bindKey<T>(object:T, key:String, args:haxe.extern.Rest<Dynamic>):haxe.Constraints.Function;
};
typedef LoDashObjectWrapper<T> = {
	function bindKey(key:String, args:haxe.extern.Rest<Dynamic>):LoDashObjectWrapper<haxe.Constraints.Function>;
};
typedef LoDashStatic = {
	function compose(funcs:haxe.extern.Rest<haxe.Constraints.Function>):haxe.Constraints.Function;
};
typedef LoDashObjectWrapper<T> = {
	function compose(funcs:haxe.extern.Rest<haxe.Constraints.Function>):LoDashObjectWrapper<haxe.Constraints.Function>;
};
typedef LoDashStatic = {
	@:overload(function(func:Dictionary<Dynamic>, ?thisArg:Dynamic, ?argCount:Float):Void -> Bool { })
	function createCallback(func:String, ?thisArg:Dynamic, ?argCount:Float):Void -> Dynamic;
};
typedef LoDashWrapper<T> = {
	function createCallback(?thisArg:Dynamic, ?argCount:Float):LoDashObjectWrapper<Void -> Dynamic>;
};
typedef LoDashObjectWrapper<T> = {
	function createCallback(?thisArg:Dynamic, ?argCount:Float):LoDashObjectWrapper<Void -> Dynamic>;
};
typedef LoDashStatic = {
	function curry(func:haxe.Constraints.Function, ?arity:Float):haxe.Constraints.Function;
};
typedef LoDashObjectWrapper<T> = {
	function curry(?arity:Float):LoDashObjectWrapper<haxe.Constraints.Function>;
};
typedef LoDashStatic = {
	function debounce<T:(haxe.Constraints.Function)>(func:T, wait:Float, ?options:DebounceSettings):T;
};
typedef LoDashObjectWrapper<T> = {
	function debounce(wait:Float, ?options:DebounceSettings):LoDashObjectWrapper<haxe.Constraints.Function>;
};
typedef DebounceSettings = {
	@:optional
	var leading : Bool;
	@:optional
	var maxWait : Float;
	@:optional
	var trailing : Bool;
};
typedef LoDashStatic = {
	function defer(func:haxe.Constraints.Function, args:haxe.extern.Rest<Dynamic>):Float;
};
typedef LoDashObjectWrapper<T> = {
	function defer(args:haxe.extern.Rest<Dynamic>):LoDashWrapper<Float>;
};
typedef LoDashStatic = {
	function delay(func:haxe.Constraints.Function, wait:Float, args:haxe.extern.Rest<Dynamic>):Float;
};
typedef LoDashObjectWrapper<T> = {
	function delay(wait:Float, args:haxe.extern.Rest<Dynamic>):LoDashWrapper<Float>;
};
typedef LoDashStatic = {
	function memoize<T:(haxe.Constraints.Function)>(func:T, ?resolver:haxe.Constraints.Function):T;
};
typedef LoDashStatic = {
	function once<T:(haxe.Constraints.Function)>(func:T):T;
};
typedef LoDashStatic = {
	function partial(func:haxe.Constraints.Function, args:haxe.extern.Rest<Dynamic>):haxe.Constraints.Function;
};
typedef LoDashStatic = {
	function partialRight(func:haxe.Constraints.Function, args:haxe.extern.Rest<Dynamic>):haxe.Constraints.Function;
};
typedef LoDashStatic = {
	function throttle<T:(haxe.Constraints.Function)>(func:T, wait:Float, ?options:ThrottleSettings):T;
};
typedef ThrottleSettings = {
	@:optional
	var leading : Bool;
	@:optional
	var trailing : Bool;
};
typedef LoDashStatic = {
	function wrap(value:Dynamic, wrapper:haxe.Constraints.Function -> haxe.extern.Rest<Dynamic> -> Dynamic):haxe.Constraints.Function;
};
typedef LoDashStatic = {
	@:overload(function<P, T, S1, S2, Value, Result>(object:T, s1:S1, s2:S2, ?callback:Value -> Value -> Value, ?thisArg:Dynamic):Result { })
	@:overload(function<P, T, S1, S2, S3, Value, Result>(object:T, s1:S1, s2:S2, s3:S3, ?callback:Value -> Value -> Value, ?thisArg:Dynamic):Result { })
	@:overload(function<P, T, S1, S2, S3, S4, Value, Result>(object:T, s1:S1, s2:S2, s3:S3, s4:S4, ?callback:Value -> Value -> Value, ?thisArg:Dynamic):Result { })
	function assign<P, T, S1, Value, Result>(object:T, s1:S1, ?callback:Value -> Value -> Value, ?thisArg:Dynamic):Result;
	@:overload(function<P, T, S1, S2, Value, Result>(object:T, s1:S1, s2:S2, ?callback:Value -> Value -> Value, ?thisArg:Dynamic):Result { })
	@:overload(function<P, T, S1, S2, S3, Value, Result>(object:T, s1:S1, s2:S2, s3:S3, ?callback:Value -> Value -> Value, ?thisArg:Dynamic):Result { })
	@:overload(function<P, T, S1, S2, S3, S4, Value, Result>(object:T, s1:S1, s2:S2, s3:S3, s4:S4, ?callback:Value -> Value -> Value, ?thisArg:Dynamic):Result { })
	function extend<P, T, S1, Value, Result>(object:T, s1:S1, ?callback:Value -> Value -> Value, ?thisArg:Dynamic):Result;
};
typedef LoDashObjectWrapper<T> = {
	@:overload(function<S1, S2, Value, TResult>(s1:S1, s2:S2, ?callback:Value -> Value -> Value, ?thisArg:Dynamic):TResult { })
	@:overload(function<S1, S2, S3, Value, TResult>(s1:S1, s2:S2, s3:S3, ?callback:Value -> Value -> Value, ?thisArg:Dynamic):TResult { })
	@:overload(function<S1, S2, S3, S4, Value, TResult>(s1:S1, s2:S2, s3:S3, s4:S4, ?callback:Value -> Value -> Value, ?thisArg:Dynamic):TResult { })
	@:overload(function<S1, S2, S3, S4, S5, Value, TResult>(s1:S1, s2:S2, s3:S3, s4:S4, s5:S5, ?callback:Value -> Value -> Value, ?thisArg:Dynamic):TResult { })
	function assign<S1, Value, TResult>(s1:S1, ?callback:Value -> Value -> Value, ?thisArg:Dynamic):TResult;
	@:overload(function<S1, S2, Value, TResult>(s1:S1, s2:S2, ?callback:Value -> Value -> Value, ?thisArg:Dynamic):TResult { })
	@:overload(function<S1, S2, S3, Value, TResult>(s1:S1, s2:S2, s3:S3, ?callback:Value -> Value -> Value, ?thisArg:Dynamic):TResult { })
	@:overload(function<S1, S2, S3, S4, Value, TResult>(s1:S1, s2:S2, s3:S3, s4:S4, ?callback:Value -> Value -> Value, ?thisArg:Dynamic):TResult { })
	@:overload(function<S1, S2, S3, S4, S5, Value, TResult>(s1:S1, s2:S2, s3:S3, s4:S4, s5:S5, ?callback:Value -> Value -> Value, ?thisArg:Dynamic):TResult { })
	function extend<S1, Value, TResult>(s1:S1, ?callback:Value -> Value -> Value, ?thisArg:Dynamic):TResult;
};
typedef LoDashStatic = {
	function clone<T>(value:T, ?deep:Bool, ?callback:Dynamic -> Dynamic, ?thisArg:Dynamic):T;
};
typedef LoDashStatic = {
	function cloneDeep<T>(value:T, ?callback:Dynamic -> Dynamic, ?thisArg:Dynamic):T;
};
typedef LoDashStatic = {
	function defaults<T, TResult>(object:T, sources:haxe.extern.Rest<Dynamic>):TResult;
};
typedef LoDashObjectWrapper<T> = {
	function defaults<T, TResult>(sources:haxe.extern.Rest<Dynamic>):LoDashObjectWrapper<TResult>;
};
typedef LoDashStatic = {
	@:overload(function(object:Dynamic, pluckValue:String):String { })
	@:overload(function<W:(Dictionary<Dynamic>), T>(object:T, whereValue:W):String { })
	function findKey(object:Dynamic, callback:Dynamic -> Bool, ?thisArg:Dynamic):String;
};
typedef LoDashStatic = {
	@:overload(function(object:Dynamic, pluckValue:String):String { })
	@:overload(function<W:(Dictionary<Dynamic>), T>(object:T, whereValue:W):String { })
	function findLastKey(object:Dynamic, callback:Dynamic -> Bool, ?thisArg:Dynamic):String;
};
typedef LoDashStatic = {
	@:overload(function<T>(object:T, ?callback:ObjectIterator<Dynamic, Void>, ?thisArg:Dynamic):T { })
	function forIn<T>(object:Dictionary<T>, ?callback:DictionaryIterator<T, Void>, ?thisArg:Dynamic):Dictionary<T>;
};
typedef LoDashObjectWrapper<T> = {
	function forIn<T:({ })>(callback:ObjectIterator<T, Void>, ?thisArg:Dynamic):_.LoDashObjectWrapper<T>;
};
typedef LoDashStatic = {
	@:overload(function<T:({ })>(object:T, ?callback:ObjectIterator<T, Void>, ?thisArg:Dynamic):T { })
	function forInRight<T:({ })>(object:Dictionary<T>, ?callback:DictionaryIterator<T, Void>, ?thisArg:Dynamic):Dictionary<T>;
};
typedef LoDashObjectWrapper<T> = {
	function forInRight<T:({ })>(callback:ObjectIterator<T, Void>, ?thisArg:Dynamic):_.LoDashObjectWrapper<T>;
};
typedef LoDashStatic = {
	@:overload(function<T:({ })>(object:T, ?callback:ObjectIterator<Dynamic, Void>, ?thisArg:Dynamic):T { })
	function forOwn<T:({ })>(object:Dictionary<T>, ?callback:DictionaryIterator<T, Void>, ?thisArg:Dynamic):Dictionary<T>;
};
typedef LoDashObjectWrapper<T> = {
	function forOwn<T:({ })>(callback:ObjectIterator<T, Void>, ?thisArg:Dynamic):_.LoDashObjectWrapper<T>;
};
typedef LoDashStatic = {
	@:overload(function<T:({ })>(object:T, ?callback:ObjectIterator<Dynamic, Void>, ?thisArg:Dynamic):T { })
	function forOwnRight<T:({ })>(object:Dictionary<T>, ?callback:DictionaryIterator<T, Void>, ?thisArg:Dynamic):Dictionary<T>;
};
typedef LoDashObjectWrapper<T> = {
	function forOwnRight<T:({ })>(callback:ObjectIterator<T, Void>, ?thisArg:Dynamic):_.LoDashObjectWrapper<T>;
};
typedef LoDashStatic = {
	function functions(object:Dynamic):Array<String>;
	function methods(object:Dynamic):Array<String>;
};
typedef LoDashObjectWrapper<T> = {
	function functions():_.LoDashArrayWrapper<String>;
	function methods():_.LoDashArrayWrapper<String>;
};
typedef LoDashStatic = {
	function has(object:Dynamic, property:String):Bool;
};
typedef LoDashStatic = {
	function invert(object:Dynamic):Dynamic;
};
typedef LoDashStatic = {
	function isArguments(?value:Dynamic):Bool;
};
typedef LoDashStatic = {
	function isArray(?value:Dynamic):Bool;
};
typedef LoDashStatic = {
	function isBoolean(?value:Dynamic):Bool;
};
typedef LoDashStatic = {
	function isDate(?value:Dynamic):Bool;
};
typedef LoDashStatic = {
	function isElement(?value:Dynamic):Bool;
};
typedef LoDashStatic = {
	function isEmpty(?value:haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Dictionary<Dynamic>, haxe.extern.EitherType<String, Dynamic>>>):Bool;
};
typedef LoDashStatic = {
	function isError(value:Dynamic):Bool;
};
typedef LoDashStatic = {
	function isEqual(?a:Dynamic, ?b:Dynamic, ?callback:Dynamic -> Dynamic -> Bool, ?thisArg:Dynamic):Bool;
};
typedef LoDashStatic = {
	function isFinite(?value:Dynamic):Bool;
};
typedef LoDashStatic = {
	function isFunction(?value:Dynamic):Bool;
};
typedef LoDashStatic = {
	function isNaN(?value:Dynamic):Bool;
};
typedef LoDashStatic = {
	function isNull(?value:Dynamic):Bool;
};
typedef LoDashStatic = {
	function isNumber(?value:Dynamic):Bool;
};
typedef LoDashStatic = {
	function isObject(?value:Dynamic):Bool;
};
typedef LoDashStatic = {
	function isPlainObject(?value:Dynamic):Bool;
};
typedef LoDashStatic = {
	function isRegExp(?value:Dynamic):Bool;
};
typedef LoDashStatic = {
	function isString(?value:Dynamic):Bool;
};
typedef LoDashStatic = {
	function isUndefined(?value:Dynamic):Bool;
};
typedef LoDashStatic = {
	function keys(?object:Dynamic):Array<String>;
};
typedef LoDashObjectWrapper<T> = {
	function keys():LoDashArrayWrapper<String>;
};
typedef LoDashStatic = {
	@:overload(function<T>(obj:Dictionary<T>, where:Dictionary<T>):Dictionary<Bool> { })
	@:overload(function<T, TMapped>(obj:T, pluck:String):TMapped { })
	@:overload(function<T>(obj:T, callback:ObjectIterator<Dynamic, Dynamic>, ?thisArg:Dynamic):T { })
	function mapValues<T, TResult>(obj:Dictionary<T>, callback:ObjectIterator<T, TResult>, ?thisArg:Dynamic):Dictionary<TResult>;
};
typedef LoDashStatic = {
	@:overload(function<P, T, S1, S2, Value, Result>(object:T, s1:S1, s2:S2, ?callback:Value -> Value -> Value, ?thisArg:Dynamic):Result { })
	@:overload(function<P, T, S1, S2, S3, Value, Result>(object:T, s1:S1, s2:S2, s3:S3, ?callback:Value -> Value -> Value, ?thisArg:Dynamic):Result { })
	@:overload(function<P, T, S1, S2, S3, S4, Value, Result>(object:T, s1:S1, s2:S2, s3:S3, s4:S4, ?callback:Value -> Value -> Value, ?thisArg:Dynamic):Result { })
	function merge<P, T, S1, Value, Result>(object:T, s1:S1, ?callback:Value -> Value -> Value, ?thisArg:Dynamic):Result;
};
typedef LoDashStatic = {
	@:overload(function<Omitted, T>(object:T, keys:Array<String>):Omitted { })
	@:overload(function<Omitted, T>(object:T, callback:ObjectIterator<Dynamic, Bool>, ?thisArg:Dynamic):Omitted { })
	function omit<Omitted, T>(object:T, keys:haxe.extern.Rest<String>):Omitted;
};
typedef LoDashObjectWrapper<T> = {
	@:overload(function<Omitted>(keys:Array<String>):LoDashObjectWrapper<Omitted> { })
	@:overload(function<Omitted>(callback:ObjectIterator<Dynamic, Bool>, ?thisArg:Dynamic):LoDashObjectWrapper<Omitted> { })
	function omit<Omitted>(keys:haxe.extern.Rest<String>):LoDashObjectWrapper<Omitted>;
};
typedef LoDashStatic = {
	function pairs(?object:Dynamic):Array<Array<Dynamic>>;
};
typedef LoDashObjectWrapper<T> = {
	function pairs():LoDashArrayWrapper<Array<Dynamic>>;
};
typedef LoDashStatic = {
	@:overload(function<Picked, T>(object:T, keys:Array<String>):Picked { })
	@:overload(function<Picked, T>(object:T, callback:ObjectIterator<Dynamic, Bool>, ?thisArg:Dynamic):Picked { })
	function pick<Picked, T>(object:T, keys:haxe.extern.Rest<String>):Picked;
};
typedef LoDashStatic = {
	@:overload(function<T, Acc>(collection:List<T>, callback:MemoVoidIterator<T, Acc>, accumulator:Acc, ?thisArg:Dynamic):Acc { })
	@:overload(function<T, Acc>(collection:Dictionary<T>, callback:MemoVoidIterator<T, Acc>, accumulator:Acc, ?thisArg:Dynamic):Acc { })
	@:overload(function<T, Acc>(collection:Array<T>, ?callback:MemoVoidIterator<T, Acc>, ?thisArg:Dynamic):Acc { })
	@:overload(function<T, Acc>(collection:List<T>, ?callback:MemoVoidIterator<T, Acc>, ?thisArg:Dynamic):Acc { })
	@:overload(function<T, Acc>(collection:Dictionary<T>, ?callback:MemoVoidIterator<T, Acc>, ?thisArg:Dynamic):Acc { })
	function transform<T, Acc>(collection:Array<T>, callback:MemoVoidIterator<T, Acc>, accumulator:Acc, ?thisArg:Dynamic):Acc;
};
typedef LoDashStatic = {
	function values(?object:Dynamic):Array<Dynamic>;
};
typedef LoDashStatic = {
	function camelCase(?str:String):String;
	function capitalize(?str:String):String;
	function deburr(?str:String):String;
	function endsWith(?str:String, ?target:String, ?position:Float):Bool;
	function escape(?str:String):String;
	function escapeRegExp(?str:String):String;
	function kebabCase(?str:String):String;
	function pad(?str:String, ?length:Float, ?chars:String):String;
	function padLeft(?str:String, ?length:Float, ?chars:String):String;
	function padRight(?str:String, ?length:Float, ?chars:String):String;
	function repeat(?str:String, ?n:Float):String;
	function snakeCase(?str:String):String;
	function startCase(?str:String):String;
	function startsWith(?str:String, ?target:String, ?position:Float):Bool;
	function trim(?str:String, ?chars:String):String;
	function trimLeft(?str:String, ?chars:String):String;
	function trimRight(?str:String, ?chars:String):String;
	@:overload(function(?str:String, ?options:{ @:optional
	var length : Float; @:optional
	var omission : String; @:optional
	var separator : haxe.extern.EitherType<String, js.RegExp>; }):String { })
	function trunc(?str:String, ?len:Float):String;
	function words(?str:String, ?pattern:haxe.extern.EitherType<String, js.RegExp>):Array<String>;
};
typedef LoDashStatic = {
	function parseInt(?value:String, ?radix:Float):Float;
};
typedef LoDashStatic = {
	function escape(?str:String):String;
};
typedef LoDashStatic = {
	function identity<T>(?value:T):T;
};
typedef LoDashStatic = {
	function mixin(?object:Dictionary<Dynamic -> Dynamic>):Void;
};
typedef LoDashStatic = {
	function noConflict():Dynamic;
};
typedef LoDashStatic = {
	function property<T, RT>(key:String):T -> RT;
};
typedef LoDashStatic = {
	@:overload(function(min:Float, max:Float, ?floating:Bool):Float { })
	function random(max:Float, ?floating:Bool):Float;
};
typedef LoDashStatic = {
	function result(object:Dynamic, property:String):Dynamic;
};
typedef LoDashStatic = {
	function runInContext(context:Dynamic):Dynamic;
};
typedef LoDashStatic = {
	@:overload(function(text:String, data:Dynamic, ?options:TemplateSettings, ?sourceURL:String, ?variable:String):Dynamic { })
	function template(text:String):TemplateExecutor;
};
typedef TemplateExecutor = {
	var source : String;
};
typedef LoDashStatic = {
	function times<TResult>(n:Float, callback:Float -> TResult, ?context:Dynamic):Array<TResult>;
};
typedef LoDashStatic = {
	function unescape(string:String):String;
};
typedef LoDashStatic = {
	function uniqueId(?prefix:String):String;
};
typedef LoDashStatic = {
	function noop():Void;
};
typedef LoDashStatic = {
	function constant<T>(value:T):Void -> T;
};
typedef LoDashStatic = {
	function create<T>(prototype:Dynamic, ?properties:Dynamic):Dynamic;
};
typedef ListIterator<T, TResult> = { };
typedef DictionaryIterator<T, TResult> = { };
typedef ObjectIterator<T, TResult> = { };
typedef MemoVoidIterator<T, TResult> = { };
typedef MemoIterator<T, TResult> = { };
typedef List<T> = {
	var length : Float;
};
typedef Dictionary<T> = { };
