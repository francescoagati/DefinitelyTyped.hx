typedef ITranslationTable = { };
typedef ILanguageKeyAlias = { };
typedef IStorage = {
	function get(name:String):String;
	function set(name:String, value:String):Void;
};
typedef IStaticFilesLoaderOptions = {
	var prefix : String;
	var suffix : String;
	@:optional
	var key : String;
};
typedef IPartialLoader<T> = {
	function addPart(name:String, ?priority:Float):T;
	function deletePart(name:String):T;
	function isPartAvailable(name:String):Bool;
};
typedef ITranslatePartialLoaderService = {
	>IPartialLoader<ITranslatePartialLoaderService>,
	function getRegisteredParts():Array<String>;
	function isPartLoaded(name:String, lang:String):Bool;
};
typedef ITranslatePartialLoaderProvider = {
	>angular.IServiceProvider,
	>IPartialLoader<ITranslatePartialLoaderProvider>,
	function setPart(lang:String, part:String, table:ITranslationTable):ITranslatePartialLoaderProvider;
};
typedef ITranslateService = {
	@:overload(function(name:String):ITranslateProvider { })
	function cloakClassName():String;
	@:overload(function(?langKey:Array<String>):String { })
	function fallbackLanguage(?langKey:String):String;
	@:overload(function(translationId:Array<String>, ?interpolateParams:Dynamic, ?interpolationId:String):{ } { })
	function instant(translationId:String, ?interpolateParams:Dynamic, ?interpolationId:String):String;
	function isPostCompilingEnabled():Bool;
	function preferredLanguage(?langKey:String):String;
	function proposedLanguage():String;
	function refresh(?langKey:String):angular.IPromise<Void>;
	function storage():IStorage;
	function storageKey():String;
	@:overload(function(key:String):angular.IPromise<String> { })
	function use():String;
	function useFallbackLanguage(?langKey:String):Void;
	function versionInfo():String;
	function loaderCache():Dynamic;
};
typedef ITranslateProvider = {
	>angular.IServiceProvider,
	@:overload(function(key:String, translationTable:ITranslationTable):ITranslateProvider { })
	function translations():ITranslationTable;
	@:overload(function(name:String):ITranslateProvider { })
	function cloakClassName():String;
	function addInterpolation(factory:Dynamic):ITranslateProvider;
	function useMessageFormatInterpolation():ITranslateProvider;
	function useInterpolation(factory:String):ITranslateProvider;
	function useSanitizeValueStrategy(value:String):ITranslateProvider;
	@:overload(function(language:String):ITranslateProvider { })
	function preferredLanguage():ITranslateProvider;
	function translationNotFoundIndicator(indicator:String):ITranslateProvider;
	@:overload(function(indicator:String):ITranslateProvider { })
	function translationNotFoundIndicatorLeft():String;
	@:overload(function(indicator:String):ITranslateProvider { })
	function translationNotFoundIndicatorRight():String;
	@:overload(function(language:String):ITranslateProvider { })
	@:overload(function(languages:Array<String>):ITranslateProvider { })
	function fallbackLanguage():ITranslateProvider;
	@:overload(function(key:String):ITranslateProvider { })
	function use():String;
	@:overload(function(key:String):Void { })
	function storageKey():String;
	function useUrlLoader(url:String):ITranslateProvider;
	function useStaticFilesLoader(options:IStaticFilesLoaderOptions):ITranslateProvider;
	function useLoader(loaderFactory:String, options:Dynamic):ITranslateProvider;
	function useLocalStorage():ITranslateProvider;
	function useCookieStorage():ITranslateProvider;
	function useStorage(storageFactory:Dynamic):ITranslateProvider;
	@:overload(function(prefix:String):ITranslateProvider { })
	function storagePrefix():String;
	function useMissingTranslationHandlerLog():ITranslateProvider;
	function useMissingTranslationHandler(factory:String):ITranslateProvider;
	function usePostCompiling(value:Bool):ITranslateProvider;
	function determinePreferredLanguage(?fn:Void -> Void):ITranslateProvider;
	@:overload(function(languageKeys:Array<String>, ?aliases:ILanguageKeyAlias):ITranslateProvider { })
	function registerAvailableLanguageKeys():Array<String>;
	function useLoaderCache(?cache:Dynamic):ITranslateProvider;
};
