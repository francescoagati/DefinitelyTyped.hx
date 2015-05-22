extern class CoreApplication {
	static var mainView : Windows.ApplicationModel.Core.CoreApplicationView;
	static var views : Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Core.CoreApplicationView>;
	static var id : String;
	static var properties : Windows.Foundation.Collections.IPropertySet;
	static function incrementApplicationUseCount():Void;
	static function decrementApplicationUseCount():Void;
	static function createNewView(runtimeType:String, entryPoint:String):Windows.ApplicationModel.Core.CoreApplicationView;
	static function exit():Void;
	static var onexiting : Dynamic;
	static var onsuspending : Dynamic;
	static var onresuming : Dynamic;
	static function getCurrentView():Windows.ApplicationModel.Core.CoreApplicationView;
	static function run(viewSource:Windows.ApplicationModel.Core.IFrameworkViewSource):Void;
	static function runWithActivationFactories(activationFactoryCallback:Windows.Foundation.IGetActivationFactory):Void;
}
extern class CoreApplicationView {
	var coreWindow : Windows.UI.Core.CoreWindow;
	var isHosted : Bool;
	var isMain : Bool;
	var onactivated : Dynamic;
}
typedef IFrameworkView = {
	function initialize(applicationView:Windows.ApplicationModel.Core.CoreApplicationView):Void;
	function setWindow(window:Windows.UI.Core.CoreWindow):Void;
	function load(entryPoint:String):Void;
	function run():Void;
	function uninitialize():Void;
};
typedef IFrameworkViewSource = {
	function createView():Windows.ApplicationModel.Core.IFrameworkView;
};
typedef ICoreApplication = {
	var id : String;
	var properties : Windows.Foundation.Collections.IPropertySet;
	var onsuspending : Dynamic;
	var onresuming : Dynamic;
	function getCurrentView():Windows.ApplicationModel.Core.CoreApplicationView;
	function run(viewSource:Windows.ApplicationModel.Core.IFrameworkViewSource):Void;
	function runWithActivationFactories(activationFactoryCallback:Windows.Foundation.IGetActivationFactory):Void;
};
typedef ICoreApplicationUseCount = {
	function incrementApplicationUseCount():Void;
	function decrementApplicationUseCount():Void;
};
typedef ICoreApplicationExit = {
	function exit():Void;
	var onexiting : Dynamic;
};
typedef ICoreImmersiveApplication = {
	var mainView : Windows.ApplicationModel.Core.CoreApplicationView;
	var views : Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Core.CoreApplicationView>;
	function createNewView(runtimeType:String, entryPoint:String):Windows.ApplicationModel.Core.CoreApplicationView;
};
typedef ICoreApplicationView = {
	var coreWindow : Windows.UI.Core.CoreWindow;
	var isHosted : Bool;
	var isMain : Bool;
	var onactivated : Dynamic;
};
typedef IResourceManager = {
	var allResourceMaps : Windows.Foundation.Collections.IMapView<String, Windows.ApplicationModel.Resources.Core.ResourceMap>;
	var defaultContext : Windows.ApplicationModel.Resources.Core.ResourceContext;
	var mainResourceMap : Windows.ApplicationModel.Resources.Core.ResourceMap;
	function loadPriFiles(files:Windows.Foundation.Collections.IIterable<Windows.Storage.IStorageFile>):Void;
	function unloadPriFiles(files:Windows.Foundation.Collections.IIterable<Windows.Storage.IStorageFile>):Void;
};
extern class ResourceMap {
	var uri : Windows.Foundation.Uri;
	var size : Float;
	@:overload(function(resource:String, context:Windows.ApplicationModel.Resources.Core.ResourceContext):Windows.ApplicationModel.Resources.Core.ResourceCandidate { })
	function getValue(resource:String):Windows.ApplicationModel.Resources.Core.ResourceCandidate;
	function getSubtree(reference:String):Windows.ApplicationModel.Resources.Core.ResourceMap;
	function lookup(key:String):Windows.ApplicationModel.Resources.Core.NamedResource;
	function hasKey(key:String):Bool;
	function split():{ var first : Windows.Foundation.Collections.IMapView<String, Windows.ApplicationModel.Resources.Core.NamedResource>; var second : Windows.Foundation.Collections.IMapView<String, Windows.ApplicationModel.Resources.Core.NamedResource>; };
	function first():Windows.Foundation.Collections.IIterator<Windows.Foundation.Collections.IKeyValuePair<String, Windows.ApplicationModel.Resources.Core.NamedResource>>;
}
extern class ResourceContext {
	var languages : Windows.Foundation.Collections.IVectorView<String>;
	var qualifierValues : Windows.Foundation.Collections.IObservableMap<String, String>;
	@:overload(function(qualifierNames:Windows.Foundation.Collections.IIterable<String>):Void { })
	function reset():Void;
	function overrideToMatch(result:Windows.Foundation.Collections.IIterable<Windows.ApplicationModel.Resources.Core.ResourceQualifier>):Void;
	function clone():Windows.ApplicationModel.Resources.Core.ResourceContext;
	static function createMatchingContext(result:Windows.Foundation.Collections.IIterable<Windows.ApplicationModel.Resources.Core.ResourceQualifier>):Windows.ApplicationModel.Resources.Core.ResourceContext;
}
typedef IResourceManagerStatics = {
	var current : Windows.ApplicationModel.Resources.Core.ResourceManager;
	function isResourceReference(resourceReference:String):Bool;
};
extern class ResourceManager {
	var allResourceMaps : Windows.Foundation.Collections.IMapView<String, Windows.ApplicationModel.Resources.Core.ResourceMap>;
	var defaultContext : Windows.ApplicationModel.Resources.Core.ResourceContext;
	var mainResourceMap : Windows.ApplicationModel.Resources.Core.ResourceMap;
	function loadPriFiles(files:Windows.Foundation.Collections.IIterable<Windows.Storage.IStorageFile>):Void;
	function unloadPriFiles(files:Windows.Foundation.Collections.IIterable<Windows.Storage.IStorageFile>):Void;
	static var current : Windows.ApplicationModel.Resources.Core.ResourceManager;
	static function isResourceReference(resourceReference:String):Bool;
}
typedef IResourceQualifier = {
	var isDefault : Bool;
	var isMatch : Bool;
	var qualifierName : String;
	var qualifierValue : String;
	var score : Float;
};
extern class ResourceQualifier {
	var isDefault : Bool;
	var isMatch : Bool;
	var qualifierName : String;
	var qualifierValue : String;
	var score : Float;
}
typedef IResourceContext = {
	var languages : Windows.Foundation.Collections.IVectorView<String>;
	var qualifierValues : Windows.Foundation.Collections.IObservableMap<String, String>;
	@:overload(function(qualifierNames:Windows.Foundation.Collections.IIterable<String>):Void { })
	function reset():Void;
	function overrideToMatch(result:Windows.Foundation.Collections.IIterable<Windows.ApplicationModel.Resources.Core.ResourceQualifier>):Void;
	function clone():Windows.ApplicationModel.Resources.Core.ResourceContext;
};
typedef IResourceContextStatics = {
	function createMatchingContext(result:Windows.Foundation.Collections.IIterable<Windows.ApplicationModel.Resources.Core.ResourceQualifier>):Windows.ApplicationModel.Resources.Core.ResourceContext;
};
typedef IResourceCandidate = {
	var isDefault : Bool;
	var isMatch : Bool;
	var isMatchAsDefault : Bool;
	var qualifiers : Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Resources.Core.ResourceQualifier>;
	var valueAsString : String;
	function getValueAsFileAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	function getQualifierValue(qualifierName:String):String;
};
extern class ResourceCandidate {
	var isDefault : Bool;
	var isMatch : Bool;
	var isMatchAsDefault : Bool;
	var qualifiers : Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Resources.Core.ResourceQualifier>;
	var valueAsString : String;
	function getValueAsFileAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.StorageFile>;
	function getQualifierValue(qualifierName:String):String;
}
typedef INamedResource = {
	var candidates : Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Resources.Core.ResourceCandidate>;
	var uri : Windows.Foundation.Uri;
	@:overload(function(resourceContext:Windows.ApplicationModel.Resources.Core.ResourceContext):Windows.ApplicationModel.Resources.Core.ResourceCandidate { })
	function resolve():Windows.ApplicationModel.Resources.Core.ResourceCandidate;
	@:overload(function(resourceContext:Windows.ApplicationModel.Resources.Core.ResourceContext):Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Resources.Core.ResourceCandidate> { })
	function resolveAll():Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Resources.Core.ResourceCandidate>;
};
extern class NamedResource {
	var candidates : Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Resources.Core.ResourceCandidate>;
	var uri : Windows.Foundation.Uri;
	@:overload(function(resourceContext:Windows.ApplicationModel.Resources.Core.ResourceContext):Windows.ApplicationModel.Resources.Core.ResourceCandidate { })
	function resolve():Windows.ApplicationModel.Resources.Core.ResourceCandidate;
	@:overload(function(resourceContext:Windows.ApplicationModel.Resources.Core.ResourceContext):Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Resources.Core.ResourceCandidate> { })
	function resolveAll():Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Resources.Core.ResourceCandidate>;
}
typedef IResourceMap = {
	>Windows.Foundation.Collections.IMapView<String, Windows.ApplicationModel.Resources.Core.NamedResource>,
	>Windows.Foundation.Collections.IIterable<Windows.Foundation.Collections.IKeyValuePair<String, Windows.ApplicationModel.Resources.Core.NamedResource>>,
	var uri : Windows.Foundation.Uri;
	@:overload(function(resource:String, context:Windows.ApplicationModel.Resources.Core.ResourceContext):Windows.ApplicationModel.Resources.Core.ResourceCandidate { })
	function getValue(resource:String):Windows.ApplicationModel.Resources.Core.ResourceCandidate;
	function getSubtree(reference:String):Windows.ApplicationModel.Resources.Core.ResourceMap;
};
extern class ResourceMapIterator {
	var current : Windows.Foundation.Collections.IKeyValuePair<String, Windows.ApplicationModel.Resources.Core.NamedResource>;
	var hasCurrent : Bool;
	function moveNext():Bool;
	function getMany():{ var items : Array<Windows.Foundation.Collections.IKeyValuePair<String, Windows.ApplicationModel.Resources.Core.NamedResource>>; var returnValue : Float; };
}
extern class ResourceMapMapView {
	var size : Float;
	function lookup(key:String):Windows.ApplicationModel.Resources.Core.ResourceMap;
	function hasKey(key:String):Bool;
	function split():{ var first : Windows.Foundation.Collections.IMapView<String, Windows.ApplicationModel.Resources.Core.ResourceMap>; var second : Windows.Foundation.Collections.IMapView<String, Windows.ApplicationModel.Resources.Core.ResourceMap>; };
	function first():Windows.Foundation.Collections.IIterator<Windows.Foundation.Collections.IKeyValuePair<String, Windows.ApplicationModel.Resources.Core.ResourceMap>>;
}
extern class ResourceMapMapViewIterator {
	var current : Windows.Foundation.Collections.IKeyValuePair<String, Windows.ApplicationModel.Resources.Core.ResourceMap>;
	var hasCurrent : Bool;
	function moveNext():Bool;
	function getMany():{ var items : Array<Windows.Foundation.Collections.IKeyValuePair<String, Windows.ApplicationModel.Resources.Core.ResourceMap>>; var returnValue : Float; };
}
extern class ResourceQualifierObservableMap {
	var size : Float;
	var onmapchanged : Dynamic;
	function lookup(key:String):String;
	function hasKey(key:String):Bool;
	function getView():Windows.Foundation.Collections.IMapView<String, String>;
	function insert(key:String, value:String):Bool;
	function remove(key:String):Void;
	function clear():Void;
	function first():Windows.Foundation.Collections.IIterator<Windows.Foundation.Collections.IKeyValuePair<String, String>>;
}
extern class ResourceQualifierMapView {
	var size : Float;
	function lookup(key:String):String;
	function hasKey(key:String):Bool;
	function split():{ var first : Windows.Foundation.Collections.IMapView<String, String>; var second : Windows.Foundation.Collections.IMapView<String, String>; };
	function first():Windows.Foundation.Collections.IIterator<Windows.Foundation.Collections.IKeyValuePair<String, String>>;
}
extern class ResourceQualifierVectorView {
	var size : Float;
	function getAt(index:Float):Windows.ApplicationModel.Resources.Core.ResourceQualifier;
	function indexOf(value:Windows.ApplicationModel.Resources.Core.ResourceQualifier):{ var index : Float; var returnValue : Bool; };
	function getMany(startIndex:Float):{ var items : Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier>; var returnValue : Float; };
	function first():Windows.Foundation.Collections.IIterator<Windows.ApplicationModel.Resources.Core.ResourceQualifier>;
	function toString():String;
	function toLocaleString():String;
	function concat(items:haxe.extern.Rest<Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier>>):Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier>;
	function join(seperator:String):String;
	function pop():Windows.ApplicationModel.Resources.Core.ResourceQualifier;
	function push(items:haxe.extern.Rest<Windows.ApplicationModel.Resources.Core.ResourceQualifier>):Void;
	function reverse():Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier>;
	function shift():Windows.ApplicationModel.Resources.Core.ResourceQualifier;
	@:overload(function(start:Float, end:Float):Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier> { })
	function slice(start:Float):Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier>;
	@:overload(function(compareFn:Windows.ApplicationModel.Resources.Core.ResourceQualifier -> Windows.ApplicationModel.Resources.Core.ResourceQualifier -> Float):Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier> { })
	function sort():Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier>;
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<Windows.ApplicationModel.Resources.Core.ResourceQualifier>):Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier> { })
	function splice(start:Float):Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier>;
	function unshift(items:haxe.extern.Rest<Windows.ApplicationModel.Resources.Core.ResourceQualifier>):Float;
	@:overload(function(searchElement:Windows.ApplicationModel.Resources.Core.ResourceQualifier, fromIndex:Float):Float { })
	function lastIndexOf(searchElement:Windows.ApplicationModel.Resources.Core.ResourceQualifier):Float;
	@:overload(function(callbackfn:Windows.ApplicationModel.Resources.Core.ResourceQualifier -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier> -> Bool, thisArg:Dynamic):Bool { })
	function every(callbackfn:Windows.ApplicationModel.Resources.Core.ResourceQualifier -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.ApplicationModel.Resources.Core.ResourceQualifier -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier> -> Bool, thisArg:Dynamic):Bool { })
	function some(callbackfn:Windows.ApplicationModel.Resources.Core.ResourceQualifier -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.ApplicationModel.Resources.Core.ResourceQualifier -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier> -> Void, thisArg:Dynamic):Void { })
	function forEach(callbackfn:Windows.ApplicationModel.Resources.Core.ResourceQualifier -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier> -> Void):Void;
	@:overload(function(callbackfn:Windows.ApplicationModel.Resources.Core.ResourceQualifier -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier> -> Dynamic, thisArg:Dynamic):Array<Dynamic> { })
	function map(callbackfn:Windows.ApplicationModel.Resources.Core.ResourceQualifier -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier> -> Dynamic):Array<Dynamic>;
	@:overload(function(callbackfn:Windows.ApplicationModel.Resources.Core.ResourceQualifier -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier> -> Bool, thisArg:Dynamic):Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier> { })
	function filter(callbackfn:Windows.ApplicationModel.Resources.Core.ResourceQualifier -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier> -> Bool):Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier>;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduce(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier> -> Dynamic):Dynamic;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduceRight(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceQualifier> -> Dynamic):Dynamic;
	var length : Float;
}
extern class ResourceCandidateVectorView {
	var size : Float;
	function getAt(index:Float):Windows.ApplicationModel.Resources.Core.ResourceCandidate;
	function indexOf(value:Windows.ApplicationModel.Resources.Core.ResourceCandidate):{ var index : Float; var returnValue : Bool; };
	function getMany(startIndex:Float):{ var items : Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate>; var returnValue : Float; };
	function first():Windows.Foundation.Collections.IIterator<Windows.ApplicationModel.Resources.Core.ResourceCandidate>;
	function toString():String;
	function toLocaleString():String;
	function concat(items:haxe.extern.Rest<Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate>>):Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate>;
	function join(seperator:String):String;
	function pop():Windows.ApplicationModel.Resources.Core.ResourceCandidate;
	function push(items:haxe.extern.Rest<Windows.ApplicationModel.Resources.Core.ResourceCandidate>):Void;
	function reverse():Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate>;
	function shift():Windows.ApplicationModel.Resources.Core.ResourceCandidate;
	@:overload(function(start:Float, end:Float):Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate> { })
	function slice(start:Float):Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate>;
	@:overload(function(compareFn:Windows.ApplicationModel.Resources.Core.ResourceCandidate -> Windows.ApplicationModel.Resources.Core.ResourceCandidate -> Float):Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate> { })
	function sort():Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate>;
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<Windows.ApplicationModel.Resources.Core.ResourceCandidate>):Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate> { })
	function splice(start:Float):Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate>;
	function unshift(items:haxe.extern.Rest<Windows.ApplicationModel.Resources.Core.ResourceCandidate>):Float;
	@:overload(function(searchElement:Windows.ApplicationModel.Resources.Core.ResourceCandidate, fromIndex:Float):Float { })
	function lastIndexOf(searchElement:Windows.ApplicationModel.Resources.Core.ResourceCandidate):Float;
	@:overload(function(callbackfn:Windows.ApplicationModel.Resources.Core.ResourceCandidate -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate> -> Bool, thisArg:Dynamic):Bool { })
	function every(callbackfn:Windows.ApplicationModel.Resources.Core.ResourceCandidate -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.ApplicationModel.Resources.Core.ResourceCandidate -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate> -> Bool, thisArg:Dynamic):Bool { })
	function some(callbackfn:Windows.ApplicationModel.Resources.Core.ResourceCandidate -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.ApplicationModel.Resources.Core.ResourceCandidate -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate> -> Void, thisArg:Dynamic):Void { })
	function forEach(callbackfn:Windows.ApplicationModel.Resources.Core.ResourceCandidate -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate> -> Void):Void;
	@:overload(function(callbackfn:Windows.ApplicationModel.Resources.Core.ResourceCandidate -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate> -> Dynamic, thisArg:Dynamic):Array<Dynamic> { })
	function map(callbackfn:Windows.ApplicationModel.Resources.Core.ResourceCandidate -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate> -> Dynamic):Array<Dynamic>;
	@:overload(function(callbackfn:Windows.ApplicationModel.Resources.Core.ResourceCandidate -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate> -> Bool, thisArg:Dynamic):Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate> { })
	function filter(callbackfn:Windows.ApplicationModel.Resources.Core.ResourceCandidate -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate> -> Bool):Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate>;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduce(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate> -> Dynamic):Dynamic;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduceRight(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.ApplicationModel.Resources.Core.ResourceCandidate> -> Dynamic):Dynamic;
	var length : Float;
}
extern class ResourceContextLanguagesVectorView {
	var size : Float;
	function getAt(index:Float):String;
	function indexOf(value:String):{ var index : Float; var returnValue : Bool; };
	function getMany(startIndex:Float):{ var items : Array<String>; var returnValue : Float; };
	function first():Windows.Foundation.Collections.IIterator<String>;
	function toString():String;
	function toLocaleString():String;
	function concat(items:haxe.extern.Rest<Array<String>>):Array<String>;
	function join(seperator:String):String;
	function pop():String;
	function push(items:haxe.extern.Rest<String>):Void;
	function reverse():Array<String>;
	function shift():String;
	@:overload(function(start:Float, end:Float):Array<String> { })
	function slice(start:Float):Array<String>;
	@:overload(function(compareFn:String -> String -> Float):Array<String> { })
	function sort():Array<String>;
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<String>):Array<String> { })
	function splice(start:Float):Array<String>;
	function unshift(items:haxe.extern.Rest<String>):Float;
	@:overload(function(searchElement:String, fromIndex:Float):Float { })
	function lastIndexOf(searchElement:String):Float;
	@:overload(function(callbackfn:String -> Float -> Array<String> -> Bool, thisArg:Dynamic):Bool { })
	function every(callbackfn:String -> Float -> Array<String> -> Bool):Bool;
	@:overload(function(callbackfn:String -> Float -> Array<String> -> Bool, thisArg:Dynamic):Bool { })
	function some(callbackfn:String -> Float -> Array<String> -> Bool):Bool;
	@:overload(function(callbackfn:String -> Float -> Array<String> -> Void, thisArg:Dynamic):Void { })
	function forEach(callbackfn:String -> Float -> Array<String> -> Void):Void;
	@:overload(function(callbackfn:String -> Float -> Array<String> -> Dynamic, thisArg:Dynamic):Array<Dynamic> { })
	function map(callbackfn:String -> Float -> Array<String> -> Dynamic):Array<Dynamic>;
	@:overload(function(callbackfn:String -> Float -> Array<String> -> Bool, thisArg:Dynamic):Array<String> { })
	function filter(callbackfn:String -> Float -> Array<String> -> Bool):Array<String>;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<String> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduce(callbackfn:Dynamic -> Dynamic -> Float -> Array<String> -> Dynamic):Dynamic;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<String> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduceRight(callbackfn:Dynamic -> Dynamic -> Float -> Array<String> -> Dynamic):Dynamic;
	var length : Float;
}
typedef IApplicationDataManagerStatics = {
	function createForPackageFamily(packageFamilyName:String):Windows.Storage.ApplicationData;
};
typedef IApplicationDataManager = { };
extern class ApplicationDataManager {
	static function createForPackageFamily(packageFamilyName:String):Windows.Storage.ApplicationData;
}
@:enum abstract CryptographicPrivateKeyBlobType(Int) {
	var pkcs8RawPrivateKeyInfo = 0;
	var pkcs1RsaPrivateKey = 1;
	var bCryptPrivateKey = 2;
	var capi1PrivateKey = 3;
}
@:enum abstract CryptographicPublicKeyBlobType(Int) {
	var x509SubjectPublicKeyInfo = 0;
	var pkcs1RsaPublicKey = 1;
	var bCryptPublicKey = 2;
	var capi1PublicKey = 3;
}
typedef IKeyDerivationParameters = {
	var iterationCount : Float;
	var kdfGenericBinary : Windows.Storage.Streams.IBuffer;
};
typedef IKeyDerivationParametersStatics = {
	function buildForPbkdf2(pbkdf2Salt:Windows.Storage.Streams.IBuffer, iterationCount:Float):Windows.Security.Cryptography.Core.KeyDerivationParameters;
	function buildForSP800108(label:Windows.Storage.Streams.IBuffer, context:Windows.Storage.Streams.IBuffer):Windows.Security.Cryptography.Core.KeyDerivationParameters;
	function buildForSP80056a(algorithmId:Windows.Storage.Streams.IBuffer, partyUInfo:Windows.Storage.Streams.IBuffer, partyVInfo:Windows.Storage.Streams.IBuffer, suppPubInfo:Windows.Storage.Streams.IBuffer, suppPrivInfo:Windows.Storage.Streams.IBuffer):Windows.Security.Cryptography.Core.KeyDerivationParameters;
};
extern class KeyDerivationParameters {
	var iterationCount : Float;
	var kdfGenericBinary : Windows.Storage.Streams.IBuffer;
	static function buildForPbkdf2(pbkdf2Salt:Windows.Storage.Streams.IBuffer, iterationCount:Float):Windows.Security.Cryptography.Core.KeyDerivationParameters;
	static function buildForSP800108(label:Windows.Storage.Streams.IBuffer, context:Windows.Storage.Streams.IBuffer):Windows.Security.Cryptography.Core.KeyDerivationParameters;
	static function buildForSP80056a(algorithmId:Windows.Storage.Streams.IBuffer, partyUInfo:Windows.Storage.Streams.IBuffer, partyVInfo:Windows.Storage.Streams.IBuffer, suppPubInfo:Windows.Storage.Streams.IBuffer, suppPrivInfo:Windows.Storage.Streams.IBuffer):Windows.Security.Cryptography.Core.KeyDerivationParameters;
}
typedef ICryptographicKey = {
	var keySize : Float;
	@:overload(function(BlobType:Windows.Security.Cryptography.Core.CryptographicPrivateKeyBlobType):Windows.Storage.Streams.IBuffer { })
	function export():Windows.Storage.Streams.IBuffer;
	@:overload(function(BlobType:Windows.Security.Cryptography.Core.CryptographicPublicKeyBlobType):Windows.Storage.Streams.IBuffer { })
	function exportPublicKey():Windows.Storage.Streams.IBuffer;
};
extern class CryptographicKey {
	var keySize : Float;
	@:overload(function(BlobType:Windows.Security.Cryptography.Core.CryptographicPrivateKeyBlobType):Windows.Storage.Streams.IBuffer { })
	function export():Windows.Storage.Streams.IBuffer;
	@:overload(function(BlobType:Windows.Security.Cryptography.Core.CryptographicPublicKeyBlobType):Windows.Storage.Streams.IBuffer { })
	function exportPublicKey():Windows.Storage.Streams.IBuffer;
}
typedef IHashComputation = {
	function append(data:Windows.Storage.Streams.IBuffer):Void;
	function getValueAndReset():Windows.Storage.Streams.IBuffer;
};
extern class CryptographicHash {
	function append(data:Windows.Storage.Streams.IBuffer):Void;
	function getValueAndReset():Windows.Storage.Streams.IBuffer;
}
typedef IHashAlgorithmProvider = {
	var algorithmName : String;
	var hashLength : Float;
	function hashData(data:Windows.Storage.Streams.IBuffer):Windows.Storage.Streams.IBuffer;
	function createHash():Windows.Security.Cryptography.Core.CryptographicHash;
};
typedef IMacAlgorithmProvider = {
	var algorithmName : String;
	var macLength : Float;
	function createKey(keyMaterial:Windows.Storage.Streams.IBuffer):Windows.Security.Cryptography.Core.CryptographicKey;
};
typedef IKeyDerivationAlgorithmProvider = {
	var algorithmName : String;
	function createKey(keyMaterial:Windows.Storage.Streams.IBuffer):Windows.Security.Cryptography.Core.CryptographicKey;
};
typedef ISymmetricKeyAlgorithmProvider = {
	var algorithmName : String;
	var blockLength : Float;
	function createSymmetricKey(keyMaterial:Windows.Storage.Streams.IBuffer):Windows.Security.Cryptography.Core.CryptographicKey;
};
typedef IAsymmetricKeyAlgorithmProvider = {
	var algorithmName : String;
	function createKeyPair(keySize:Float):Windows.Security.Cryptography.Core.CryptographicKey;
	@:overload(function(keyBlob:Windows.Storage.Streams.IBuffer, BlobType:Windows.Security.Cryptography.Core.CryptographicPrivateKeyBlobType):Windows.Security.Cryptography.Core.CryptographicKey { })
	function importKeyPair(keyBlob:Windows.Storage.Streams.IBuffer):Windows.Security.Cryptography.Core.CryptographicKey;
	@:overload(function(keyBlob:Windows.Storage.Streams.IBuffer, BlobType:Windows.Security.Cryptography.Core.CryptographicPublicKeyBlobType):Windows.Security.Cryptography.Core.CryptographicKey { })
	function importPublicKey(keyBlob:Windows.Storage.Streams.IBuffer):Windows.Security.Cryptography.Core.CryptographicKey;
};
typedef IEncryptedAndAuthenticatedData = {
	var authenticationTag : Windows.Storage.Streams.IBuffer;
	var encryptedData : Windows.Storage.Streams.IBuffer;
};
extern class EncryptedAndAuthenticatedData {
	var authenticationTag : Windows.Storage.Streams.IBuffer;
	var encryptedData : Windows.Storage.Streams.IBuffer;
}
typedef ICryptographicEngineStatics = {
	function encrypt(key:Windows.Security.Cryptography.Core.CryptographicKey, data:Windows.Storage.Streams.IBuffer, iv:Windows.Storage.Streams.IBuffer):Windows.Storage.Streams.IBuffer;
	function decrypt(key:Windows.Security.Cryptography.Core.CryptographicKey, data:Windows.Storage.Streams.IBuffer, iv:Windows.Storage.Streams.IBuffer):Windows.Storage.Streams.IBuffer;
	function encryptAndAuthenticate(key:Windows.Security.Cryptography.Core.CryptographicKey, data:Windows.Storage.Streams.IBuffer, nonce:Windows.Storage.Streams.IBuffer, authenticatedData:Windows.Storage.Streams.IBuffer):Windows.Security.Cryptography.Core.EncryptedAndAuthenticatedData;
	function decryptAndAuthenticate(key:Windows.Security.Cryptography.Core.CryptographicKey, data:Windows.Storage.Streams.IBuffer, nonce:Windows.Storage.Streams.IBuffer, authenticationTag:Windows.Storage.Streams.IBuffer, authenticatedData:Windows.Storage.Streams.IBuffer):Windows.Storage.Streams.IBuffer;
	function sign(key:Windows.Security.Cryptography.Core.CryptographicKey, data:Windows.Storage.Streams.IBuffer):Windows.Storage.Streams.IBuffer;
	function verifySignature(key:Windows.Security.Cryptography.Core.CryptographicKey, data:Windows.Storage.Streams.IBuffer, signature:Windows.Storage.Streams.IBuffer):Bool;
	function deriveKeyMaterial(key:Windows.Security.Cryptography.Core.CryptographicKey, parameters:Windows.Security.Cryptography.Core.KeyDerivationParameters, desiredKeySize:Float):Windows.Storage.Streams.IBuffer;
};
extern class CryptographicEngine {
	static function encrypt(key:Windows.Security.Cryptography.Core.CryptographicKey, data:Windows.Storage.Streams.IBuffer, iv:Windows.Storage.Streams.IBuffer):Windows.Storage.Streams.IBuffer;
	static function decrypt(key:Windows.Security.Cryptography.Core.CryptographicKey, data:Windows.Storage.Streams.IBuffer, iv:Windows.Storage.Streams.IBuffer):Windows.Storage.Streams.IBuffer;
	static function encryptAndAuthenticate(key:Windows.Security.Cryptography.Core.CryptographicKey, data:Windows.Storage.Streams.IBuffer, nonce:Windows.Storage.Streams.IBuffer, authenticatedData:Windows.Storage.Streams.IBuffer):Windows.Security.Cryptography.Core.EncryptedAndAuthenticatedData;
	static function decryptAndAuthenticate(key:Windows.Security.Cryptography.Core.CryptographicKey, data:Windows.Storage.Streams.IBuffer, nonce:Windows.Storage.Streams.IBuffer, authenticationTag:Windows.Storage.Streams.IBuffer, authenticatedData:Windows.Storage.Streams.IBuffer):Windows.Storage.Streams.IBuffer;
	static function sign(key:Windows.Security.Cryptography.Core.CryptographicKey, data:Windows.Storage.Streams.IBuffer):Windows.Storage.Streams.IBuffer;
	static function verifySignature(key:Windows.Security.Cryptography.Core.CryptographicKey, data:Windows.Storage.Streams.IBuffer, signature:Windows.Storage.Streams.IBuffer):Bool;
	static function deriveKeyMaterial(key:Windows.Security.Cryptography.Core.CryptographicKey, parameters:Windows.Security.Cryptography.Core.KeyDerivationParameters, desiredKeySize:Float):Windows.Storage.Streams.IBuffer;
}
typedef IHashAlgorithmProviderStatics = {
	function openAlgorithm(algorithm:String):Windows.Security.Cryptography.Core.HashAlgorithmProvider;
};
extern class HashAlgorithmProvider {
	var algorithmName : String;
	var hashLength : Float;
	function hashData(data:Windows.Storage.Streams.IBuffer):Windows.Storage.Streams.IBuffer;
	function createHash():Windows.Security.Cryptography.Core.CryptographicHash;
	static function openAlgorithm(algorithm:String):Windows.Security.Cryptography.Core.HashAlgorithmProvider;
}
typedef IMacAlgorithmProviderStatics = {
	function openAlgorithm(algorithm:String):Windows.Security.Cryptography.Core.MacAlgorithmProvider;
};
extern class MacAlgorithmProvider {
	var algorithmName : String;
	var macLength : Float;
	function createKey(keyMaterial:Windows.Storage.Streams.IBuffer):Windows.Security.Cryptography.Core.CryptographicKey;
	static function openAlgorithm(algorithm:String):Windows.Security.Cryptography.Core.MacAlgorithmProvider;
}
typedef IKeyDerivationAlgorithmProviderStatics = {
	function openAlgorithm(algorithm:String):Windows.Security.Cryptography.Core.KeyDerivationAlgorithmProvider;
};
extern class KeyDerivationAlgorithmProvider {
	var algorithmName : String;
	function createKey(keyMaterial:Windows.Storage.Streams.IBuffer):Windows.Security.Cryptography.Core.CryptographicKey;
	static function openAlgorithm(algorithm:String):Windows.Security.Cryptography.Core.KeyDerivationAlgorithmProvider;
}
typedef ISymmetricKeyAlgorithmProviderStatics = {
	function openAlgorithm(algorithm:String):Windows.Security.Cryptography.Core.SymmetricKeyAlgorithmProvider;
};
extern class SymmetricKeyAlgorithmProvider {
	var algorithmName : String;
	var blockLength : Float;
	function createSymmetricKey(keyMaterial:Windows.Storage.Streams.IBuffer):Windows.Security.Cryptography.Core.CryptographicKey;
	static function openAlgorithm(algorithm:String):Windows.Security.Cryptography.Core.SymmetricKeyAlgorithmProvider;
}
typedef IAsymmetricKeyAlgorithmProviderStatics = {
	function openAlgorithm(algorithm:String):Windows.Security.Cryptography.Core.AsymmetricKeyAlgorithmProvider;
};
extern class AsymmetricKeyAlgorithmProvider {
	var algorithmName : String;
	function createKeyPair(keySize:Float):Windows.Security.Cryptography.Core.CryptographicKey;
	@:overload(function(keyBlob:Windows.Storage.Streams.IBuffer, BlobType:Windows.Security.Cryptography.Core.CryptographicPrivateKeyBlobType):Windows.Security.Cryptography.Core.CryptographicKey { })
	function importKeyPair(keyBlob:Windows.Storage.Streams.IBuffer):Windows.Security.Cryptography.Core.CryptographicKey;
	@:overload(function(keyBlob:Windows.Storage.Streams.IBuffer, BlobType:Windows.Security.Cryptography.Core.CryptographicPublicKeyBlobType):Windows.Security.Cryptography.Core.CryptographicKey { })
	function importPublicKey(keyBlob:Windows.Storage.Streams.IBuffer):Windows.Security.Cryptography.Core.CryptographicKey;
	static function openAlgorithm(algorithm:String):Windows.Security.Cryptography.Core.AsymmetricKeyAlgorithmProvider;
}
typedef IHashAlgorithmNamesStatics = {
	var md5 : String;
	var sha1 : String;
	var sha256 : String;
	var sha384 : String;
	var sha512 : String;
};
extern class HashAlgorithmNames {
	static var md5 : String;
	static var sha1 : String;
	static var sha256 : String;
	static var sha384 : String;
	static var sha512 : String;
}
typedef IMacAlgorithmNamesStatics = {
	var aesCmac : String;
	var hmacMd5 : String;
	var hmacSha1 : String;
	var hmacSha256 : String;
	var hmacSha384 : String;
	var hmacSha512 : String;
};
extern class MacAlgorithmNames {
	static var aesCmac : String;
	static var hmacMd5 : String;
	static var hmacSha1 : String;
	static var hmacSha256 : String;
	static var hmacSha384 : String;
	static var hmacSha512 : String;
}
typedef ISymmetricAlgorithmNamesStatics = {
	var aesCbc : String;
	var aesCbcPkcs7 : String;
	var aesCcm : String;
	var aesEcb : String;
	var aesEcbPkcs7 : String;
	var aesGcm : String;
	var desCbc : String;
	var desCbcPkcs7 : String;
	var desEcb : String;
	var desEcbPkcs7 : String;
	var rc2Cbc : String;
	var rc2CbcPkcs7 : String;
	var rc2Ecb : String;
	var rc2EcbPkcs7 : String;
	var rc4 : String;
	var tripleDesCbc : String;
	var tripleDesCbcPkcs7 : String;
	var tripleDesEcb : String;
	var tripleDesEcbPkcs7 : String;
};
extern class SymmetricAlgorithmNames {
	static var aesCbc : String;
	static var aesCbcPkcs7 : String;
	static var aesCcm : String;
	static var aesEcb : String;
	static var aesEcbPkcs7 : String;
	static var aesGcm : String;
	static var desCbc : String;
	static var desCbcPkcs7 : String;
	static var desEcb : String;
	static var desEcbPkcs7 : String;
	static var rc2Cbc : String;
	static var rc2CbcPkcs7 : String;
	static var rc2Ecb : String;
	static var rc2EcbPkcs7 : String;
	static var rc4 : String;
	static var tripleDesCbc : String;
	static var tripleDesCbcPkcs7 : String;
	static var tripleDesEcb : String;
	static var tripleDesEcbPkcs7 : String;
}
typedef IAsymmetricAlgorithmNamesStatics = {
	var dsaSha1 : String;
	var dsaSha256 : String;
	var ecdsaP256Sha256 : String;
	var ecdsaP384Sha384 : String;
	var ecdsaP521Sha512 : String;
	var rsaOaepSha1 : String;
	var rsaOaepSha256 : String;
	var rsaOaepSha384 : String;
	var rsaOaepSha512 : String;
	var rsaPkcs1 : String;
	var rsaSignPkcs1Sha1 : String;
	var rsaSignPkcs1Sha256 : String;
	var rsaSignPkcs1Sha384 : String;
	var rsaSignPkcs1Sha512 : String;
	var rsaSignPssSha1 : String;
	var rsaSignPssSha256 : String;
	var rsaSignPssSha384 : String;
	var rsaSignPssSha512 : String;
};
extern class AsymmetricAlgorithmNames {
	static var dsaSha1 : String;
	static var dsaSha256 : String;
	static var ecdsaP256Sha256 : String;
	static var ecdsaP384Sha384 : String;
	static var ecdsaP521Sha512 : String;
	static var rsaOaepSha1 : String;
	static var rsaOaepSha256 : String;
	static var rsaOaepSha384 : String;
	static var rsaOaepSha512 : String;
	static var rsaPkcs1 : String;
	static var rsaSignPkcs1Sha1 : String;
	static var rsaSignPkcs1Sha256 : String;
	static var rsaSignPkcs1Sha384 : String;
	static var rsaSignPkcs1Sha512 : String;
	static var rsaSignPssSha1 : String;
	static var rsaSignPssSha256 : String;
	static var rsaSignPssSha384 : String;
	static var rsaSignPssSha512 : String;
}
typedef IKeyDerivationAlgorithmNamesStatics = {
	var pbkdf2Md5 : String;
	var pbkdf2Sha1 : String;
	var pbkdf2Sha256 : String;
	var pbkdf2Sha384 : String;
	var pbkdf2Sha512 : String;
	var sp800108CtrHmacMd5 : String;
	var sp800108CtrHmacSha1 : String;
	var sp800108CtrHmacSha256 : String;
	var sp800108CtrHmacSha384 : String;
	var sp800108CtrHmacSha512 : String;
	var sp80056aConcatMd5 : String;
	var sp80056aConcatSha1 : String;
	var sp80056aConcatSha256 : String;
	var sp80056aConcatSha384 : String;
	var sp80056aConcatSha512 : String;
};
extern class KeyDerivationAlgorithmNames {
	static var pbkdf2Md5 : String;
	static var pbkdf2Sha1 : String;
	static var pbkdf2Sha256 : String;
	static var pbkdf2Sha384 : String;
	static var pbkdf2Sha512 : String;
	static var sp800108CtrHmacMd5 : String;
	static var sp800108CtrHmacSha1 : String;
	static var sp800108CtrHmacSha256 : String;
	static var sp800108CtrHmacSha384 : String;
	static var sp800108CtrHmacSha512 : String;
	static var sp80056aConcatMd5 : String;
	static var sp80056aConcatSha1 : String;
	static var sp80056aConcatSha256 : String;
	static var sp80056aConcatSha384 : String;
	static var sp80056aConcatSha512 : String;
}
typedef SignalHandler = { };
extern class SignalNotifier {
	function enable():Void;
	function terminate():Void;
	@:overload(function(name:String, handler:Windows.System.Threading.Core.SignalHandler, timeout:Float):Windows.System.Threading.Core.SignalNotifier { })
	static function attachToEvent(name:String, handler:Windows.System.Threading.Core.SignalHandler):Windows.System.Threading.Core.SignalNotifier;
	@:overload(function(name:String, handler:Windows.System.Threading.Core.SignalHandler, timeout:Float):Windows.System.Threading.Core.SignalNotifier { })
	static function attachToSemaphore(name:String, handler:Windows.System.Threading.Core.SignalHandler):Windows.System.Threading.Core.SignalNotifier;
}
typedef ISignalNotifierStatics = {
	@:overload(function(name:String, handler:Windows.System.Threading.Core.SignalHandler, timeout:Float):Windows.System.Threading.Core.SignalNotifier { })
	function attachToEvent(name:String, handler:Windows.System.Threading.Core.SignalHandler):Windows.System.Threading.Core.SignalNotifier;
	@:overload(function(name:String, handler:Windows.System.Threading.Core.SignalHandler, timeout:Float):Windows.System.Threading.Core.SignalNotifier { })
	function attachToSemaphore(name:String, handler:Windows.System.Threading.Core.SignalHandler):Windows.System.Threading.Core.SignalNotifier;
};
typedef IPreallocatedWorkItemFactory = {
	function createWorkItem(handler:Windows.System.Threading.WorkItemHandler):Windows.System.Threading.Core.PreallocatedWorkItem;
	function createWorkItemWithPriority(handler:Windows.System.Threading.WorkItemHandler, priority:Windows.System.Threading.WorkItemPriority):Windows.System.Threading.Core.PreallocatedWorkItem;
	function createWorkItemWithPriorityAndOptions(handler:Windows.System.Threading.WorkItemHandler, priority:Windows.System.Threading.WorkItemPriority, options:Windows.System.Threading.WorkItemOptions):Windows.System.Threading.Core.PreallocatedWorkItem;
};
extern class PreallocatedWorkItem {
	@:overload(function(handler:Windows.System.Threading.WorkItemHandler, priority:Windows.System.Threading.WorkItemPriority):Void { })
	@:overload(function(handler:Windows.System.Threading.WorkItemHandler, priority:Windows.System.Threading.WorkItemPriority, options:Windows.System.Threading.WorkItemOptions):Void { })
	function new(handler:Windows.System.Threading.WorkItemHandler):Void;
	function runAsync():Windows.Foundation.IAsyncAction;
}
typedef IPreallocatedWorkItem = {
	function runAsync():Windows.Foundation.IAsyncAction;
};
typedef ISignalNotifier = {
	function enable():Void;
	function terminate():Void;
};
@:enum abstract CoreWindowActivationState(Int) {
	var codeActivated = 0;
	var deactivated = 1;
	var pointerActivated = 2;
}
@:enum abstract CoreCursorType(Int) {
	var arrow = 0;
	var cross = 1;
	var custom = 2;
	var hand = 3;
	var help = 4;
	var iBeam = 5;
	var sizeAll = 6;
	var sizeNortheastSouthwest = 7;
	var sizeNorthSouth = 8;
	var sizeNorthwestSoutheast = 9;
	var sizeWestEast = 10;
	var universalNo = 11;
	var upArrow = 12;
	var wait = 13;
}
@:enum abstract CoreDispatcherPriority(Int) {
	var low = 0;
	var normal = 1;
	var high = 2;
}
@:enum abstract CoreProcessEventsOption(Int) {
	var processOneAndAllPending = 0;
	var processOneIfPresent = 1;
	var processUntilQuit = 2;
	var processAllIfPresent = 3;
}
@:enum abstract CoreWindowFlowDirection(Int) {
	var leftToRight = 0;
	var rightToLeft = 1;
}
@:enum abstract CoreVirtualKeyStates(Int) {
	var none = 0;
	var down = 1;
	var locked = 2;
}
@:enum abstract CoreAcceleratorKeyEventType(Int) {
	var character = 0;
	var deadCharacter = 1;
	var keyDown = 2;
	var keyUp = 3;
	var systemCharacter = 4;
	var systemDeadCharacter = 5;
	var systemKeyDown = 6;
	var systemKeyUp = 7;
	var unicodeCharacter = 8;
}
@:enum abstract CoreProximityEvaluationScore(Int) {
	var closest = 0;
	var farthest = 1;
}
typedef CorePhysicalKeyStatus = {
	var repeatCount : Float;
	var scanCode : Float;
	var isExtendedKey : Bool;
	var isMenuKeyDown : Bool;
	var wasKeyDown : Bool;
	var isKeyReleased : Bool;
};
typedef CoreProximityEvaluation = {
	var score : Float;
	var adjustedPoint : Windows.Foundation.Point;
};
typedef ICoreWindowEventArgs = {
	var handled : Bool;
};
typedef IAutomationProviderRequestedEventArgs = {
	>Windows.UI.Core.ICoreWindowEventArgs,
	var automationProvider : Dynamic;
};
typedef ICharacterReceivedEventArgs = {
	>Windows.UI.Core.ICoreWindowEventArgs,
	var keyCode : Float;
	var keyStatus : Windows.UI.Core.CorePhysicalKeyStatus;
};
typedef IInputEnabledEventArgs = {
	>Windows.UI.Core.ICoreWindowEventArgs,
	var inputEnabled : Bool;
};
typedef IKeyEventArgs = {
	>Windows.UI.Core.ICoreWindowEventArgs,
	var keyStatus : Windows.UI.Core.CorePhysicalKeyStatus;
	var virtualKey : Windows.System.VirtualKey;
};
typedef IPointerEventArgs = {
	>Windows.UI.Core.ICoreWindowEventArgs,
	var currentPoint : Windows.UI.Input.PointerPoint;
	var keyModifiers : Windows.System.VirtualKeyModifiers;
	function getIntermediatePoints():Windows.Foundation.Collections.IVector<Windows.UI.Input.PointerPoint>;
};
typedef ITouchHitTestingEventArgs = {
	>Windows.UI.Core.ICoreWindowEventArgs,
	var boundingBox : Windows.Foundation.Rect;
	var point : Windows.Foundation.Point;
	var proximityEvaluation : Windows.UI.Core.CoreProximityEvaluation;
	@:overload(function(controlVertices:Array<Windows.Foundation.Point>):Windows.UI.Core.CoreProximityEvaluation { })
	function evaluateProximity(controlBoundingBox:Windows.Foundation.Rect):Windows.UI.Core.CoreProximityEvaluation;
};
typedef IWindowActivatedEventArgs = {
	>Windows.UI.Core.ICoreWindowEventArgs,
	var windowActivationState : Windows.UI.Core.CoreWindowActivationState;
};
typedef IWindowSizeChangedEventArgs = {
	>Windows.UI.Core.ICoreWindowEventArgs,
	var size : Windows.Foundation.Size;
};
typedef IVisibilityChangedEventArgs = {
	>Windows.UI.Core.ICoreWindowEventArgs,
	var visible : Bool;
};
typedef ICoreWindow = {
	var automationHostProvider : Dynamic;
	var bounds : Windows.Foundation.Rect;
	var customProperties : Windows.Foundation.Collections.IPropertySet;
	var dispatcher : Windows.UI.Core.CoreDispatcher;
	var flowDirection : Windows.UI.Core.CoreWindowFlowDirection;
	var isInputEnabled : Bool;
	var pointerCursor : Windows.UI.Core.CoreCursor;
	var pointerPosition : Windows.Foundation.Point;
	var visible : Bool;
	function activate():Void;
	function close():Void;
	function getAsyncKeyState(virtualKey:Windows.System.VirtualKey):Windows.UI.Core.CoreVirtualKeyStates;
	function getKeyState(virtualKey:Windows.System.VirtualKey):Windows.UI.Core.CoreVirtualKeyStates;
	function releasePointerCapture():Void;
	function setPointerCapture():Void;
	var onactivated : Dynamic;
	var onautomationproviderrequested : Dynamic;
	var oncharacterreceived : Dynamic;
	var onclosed : Dynamic;
	var oninputenabled : Dynamic;
	var onkeydown : Dynamic;
	var onkeyup : Dynamic;
	var onpointercapturelost : Dynamic;
	var onpointerentered : Dynamic;
	var onpointerexited : Dynamic;
	var onpointermoved : Dynamic;
	var onpointerpressed : Dynamic;
	var onpointerreleased : Dynamic;
	var ontouchhittesting : Dynamic;
	var onpointerwheelchanged : Dynamic;
	var onsizechanged : Dynamic;
	var onvisibilitychanged : Dynamic;
};
extern class CoreDispatcher {
	var hasThreadAccess : Bool;
	function processEvents(options:Windows.UI.Core.CoreProcessEventsOption):Void;
	function runAsync(priority:Windows.UI.Core.CoreDispatcherPriority, agileCallback:Windows.UI.Core.DispatchedHandler):Windows.Foundation.IAsyncAction;
	function runIdleAsync(agileCallback:Windows.UI.Core.IdleDispatchedHandler):Windows.Foundation.IAsyncAction;
	var onacceleratorkeyactivated : Dynamic;
}
extern class CoreCursor {
	function new(type:Windows.UI.Core.CoreCursorType, id:Float):Void;
	var id : Float;
	var type : Windows.UI.Core.CoreCursorType;
}
extern class CoreWindow {
	var automationHostProvider : Dynamic;
	var bounds : Windows.Foundation.Rect;
	var customProperties : Windows.Foundation.Collections.IPropertySet;
	var dispatcher : Windows.UI.Core.CoreDispatcher;
	var flowDirection : Windows.UI.Core.CoreWindowFlowDirection;
	var isInputEnabled : Bool;
	var pointerCursor : Windows.UI.Core.CoreCursor;
	var pointerPosition : Windows.Foundation.Point;
	var visible : Bool;
	function activate():Void;
	function close():Void;
	function getAsyncKeyState(virtualKey:Windows.System.VirtualKey):Windows.UI.Core.CoreVirtualKeyStates;
	function getKeyState(virtualKey:Windows.System.VirtualKey):Windows.UI.Core.CoreVirtualKeyStates;
	function releasePointerCapture():Void;
	function setPointerCapture():Void;
	var onactivated : Dynamic;
	var onautomationproviderrequested : Dynamic;
	var oncharacterreceived : Dynamic;
	var onclosed : Dynamic;
	var oninputenabled : Dynamic;
	var onkeydown : Dynamic;
	var onkeyup : Dynamic;
	var onpointercapturelost : Dynamic;
	var onpointerentered : Dynamic;
	var onpointerexited : Dynamic;
	var onpointermoved : Dynamic;
	var onpointerpressed : Dynamic;
	var onpointerreleased : Dynamic;
	var ontouchhittesting : Dynamic;
	var onpointerwheelchanged : Dynamic;
	var onsizechanged : Dynamic;
	var onvisibilitychanged : Dynamic;
	static function getForCurrentThread():Windows.UI.Core.CoreWindow;
}
extern class WindowActivatedEventArgs {
	var windowActivationState : Windows.UI.Core.CoreWindowActivationState;
	var handled : Bool;
}
extern class AutomationProviderRequestedEventArgs {
	var automationProvider : Dynamic;
	var handled : Bool;
}
extern class CharacterReceivedEventArgs {
	var keyCode : Float;
	var keyStatus : Windows.UI.Core.CorePhysicalKeyStatus;
	var handled : Bool;
}
extern class CoreWindowEventArgs {
	var handled : Bool;
}
extern class InputEnabledEventArgs {
	var inputEnabled : Bool;
	var handled : Bool;
}
extern class KeyEventArgs {
	var keyStatus : Windows.UI.Core.CorePhysicalKeyStatus;
	var virtualKey : Windows.System.VirtualKey;
	var handled : Bool;
}
extern class PointerEventArgs {
	var currentPoint : Windows.UI.Input.PointerPoint;
	var keyModifiers : Windows.System.VirtualKeyModifiers;
	var handled : Bool;
	function getIntermediatePoints():Windows.Foundation.Collections.IVector<Windows.UI.Input.PointerPoint>;
}
extern class TouchHitTestingEventArgs {
	var boundingBox : Windows.Foundation.Rect;
	var point : Windows.Foundation.Point;
	var proximityEvaluation : Windows.UI.Core.CoreProximityEvaluation;
	var handled : Bool;
	@:overload(function(controlVertices:Array<Windows.Foundation.Point>):Windows.UI.Core.CoreProximityEvaluation { })
	function evaluateProximity(controlBoundingBox:Windows.Foundation.Rect):Windows.UI.Core.CoreProximityEvaluation;
}
extern class WindowSizeChangedEventArgs {
	var size : Windows.Foundation.Size;
	var handled : Bool;
}
extern class VisibilityChangedEventArgs {
	var visible : Bool;
	var handled : Bool;
}
typedef ICoreWindowStatic = {
	function getForCurrentThread():Windows.UI.Core.CoreWindow;
};
typedef DispatchedHandler = { };
typedef IdleDispatchedHandler = { };
extern class IdleDispatchedHandlerArgs {
	var isDispatcherIdle : Bool;
}
typedef IAcceleratorKeyEventArgs = {
	>Windows.UI.Core.ICoreWindowEventArgs,
	var eventType : Windows.UI.Core.CoreAcceleratorKeyEventType;
	var keyStatus : Windows.UI.Core.CorePhysicalKeyStatus;
	var virtualKey : Windows.System.VirtualKey;
};
typedef ICoreAcceleratorKeys = {
	var onacceleratorkeyactivated : Dynamic;
};
extern class AcceleratorKeyEventArgs {
	var eventType : Windows.UI.Core.CoreAcceleratorKeyEventType;
	var keyStatus : Windows.UI.Core.CorePhysicalKeyStatus;
	var virtualKey : Windows.System.VirtualKey;
	var handled : Bool;
}
typedef ICoreDispatcher = {
	>Windows.UI.Core.ICoreAcceleratorKeys,
	var hasThreadAccess : Bool;
	function processEvents(options:Windows.UI.Core.CoreProcessEventsOption):Void;
	function runAsync(priority:Windows.UI.Core.CoreDispatcherPriority, agileCallback:Windows.UI.Core.DispatchedHandler):Windows.Foundation.IAsyncAction;
	function runIdleAsync(agileCallback:Windows.UI.Core.IdleDispatchedHandler):Windows.Foundation.IAsyncAction;
};
typedef IIdleDispatchedHandlerArgs = {
	var isDispatcherIdle : Bool;
};
extern class CoreAcceleratorKeys {
	var onacceleratorkeyactivated : Dynamic;
}
typedef ICoreCursor = {
	var id : Float;
	var type : Windows.UI.Core.CoreCursorType;
};
typedef ICoreCursorFactory = {
	function createCursor(type:Windows.UI.Core.CoreCursorType, id:Float):Windows.UI.Core.CoreCursor;
};
typedef IInitializeWithCoreWindow = {
	function initialize(window:Windows.UI.Core.CoreWindow):Void;
};
typedef ICoreWindowResizeManager = {
	function notifyLayoutCompleted():Void;
};
typedef ICoreWindowResizeManagerStatics = {
	function getForCurrentView():Windows.UI.Core.CoreWindowResizeManager;
};
extern class CoreWindowResizeManager {
	function notifyLayoutCompleted():Void;
	static function getForCurrentView():Windows.UI.Core.CoreWindowResizeManager;
}
typedef ICoreWindowPopupShowingEventArgs = {
	function setDesiredSize(value:Windows.Foundation.Size):Void;
};
extern class CoreWindowPopupShowingEventArgs {
	function setDesiredSize(value:Windows.Foundation.Size):Void;
}
typedef ICoreWindowDialog = {
	var backButtonCommand : Windows.UI.Popups.UICommandInvokedHandler;
	var cancelCommandIndex : Float;
	var commands : Windows.Foundation.Collections.IVector<Windows.UI.Popups.IUICommand>;
	var defaultCommandIndex : Float;
	var isInteractionDelayed : Float;
	var maxSize : Windows.Foundation.Size;
	var minSize : Windows.Foundation.Size;
	var title : String;
	var onshowing : Dynamic;
	function showAsync():Windows.Foundation.IAsyncOperation<Windows.UI.Popups.IUICommand>;
};
typedef ICoreWindowDialogFactory = {
	function createWithTitle(title:String):Windows.UI.Core.CoreWindowDialog;
};
extern class CoreWindowDialog {
	@:overload(function():Void { })
	function new(title:String):Void;
	var backButtonCommand : Windows.UI.Popups.UICommandInvokedHandler;
	var cancelCommandIndex : Float;
	var commands : Windows.Foundation.Collections.IVector<Windows.UI.Popups.IUICommand>;
	var defaultCommandIndex : Float;
	var isInteractionDelayed : Float;
	var maxSize : Windows.Foundation.Size;
	var minSize : Windows.Foundation.Size;
	var title : String;
	var onshowing : Dynamic;
	function showAsync():Windows.Foundation.IAsyncOperation<Windows.UI.Popups.IUICommand>;
}
typedef ICoreWindowFlyout = {
	var backButtonCommand : Windows.UI.Popups.UICommandInvokedHandler;
	var commands : Windows.Foundation.Collections.IVector<Windows.UI.Popups.IUICommand>;
	var defaultCommandIndex : Float;
	var isInteractionDelayed : Float;
	var maxSize : Windows.Foundation.Size;
	var minSize : Windows.Foundation.Size;
	var title : String;
	var onshowing : Dynamic;
	function showAsync():Windows.Foundation.IAsyncOperation<Windows.UI.Popups.IUICommand>;
};
typedef ICoreWindowFlyoutFactory = {
	function create(position:Windows.Foundation.Point):Windows.UI.Core.CoreWindowFlyout;
	function createWithTitle(position:Windows.Foundation.Point, title:String):Windows.UI.Core.CoreWindowFlyout;
};
extern class CoreWindowFlyout {
	@:overload(function(position:Windows.Foundation.Point, title:String):Void { })
	function new(position:Windows.Foundation.Point):Void;
	var backButtonCommand : Windows.UI.Popups.UICommandInvokedHandler;
	var commands : Windows.Foundation.Collections.IVector<Windows.UI.Popups.IUICommand>;
	var defaultCommandIndex : Float;
	var isInteractionDelayed : Float;
	var maxSize : Windows.Foundation.Size;
	var minSize : Windows.Foundation.Size;
	var title : String;
	var onshowing : Dynamic;
	function showAsync():Windows.Foundation.IAsyncOperation<Windows.UI.Popups.IUICommand>;
}
