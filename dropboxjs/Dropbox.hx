typedef QueryParams = { };
typedef Credentials = {
	var key : String;
	@:optional
	var secret : String;
	@:optional
	var token : String;
	@:optional
	var uid : String;
};
typedef AuthenticateCallback = { };
typedef QueryParamsCallback = { };
typedef ClientFileReadCallback = { };
typedef ClientFileWriteCallback = { };
typedef ResumableUploadStepCallback = { };
typedef ReadThumbnailCallback = { };
typedef FileStatCallback = { };
typedef AuthenticateOptions = {
	var interactive : Bool;
};
typedef SingOutOptions = {
	var mustInvalidate : Bool;
};
typedef AccountInfoOptions = {
	var httpCache : Bool;
};
typedef ClientFileReadOptions = {
	@:optional
	var versionTag : String;
	@:optional
	var rev : String;
	@:optional
	var arrayBuffer : Bool;
	@:optional
	var blob : Bool;
	@:optional
	var buffer : Bool;
	@:optional
	var binary : Bool;
	@:optional
	var length : Float;
	@:optional
	var start : Float;
	@:optional
	var httpCache : Bool;
};
typedef ClientFileWriteOptions = {
	@:optional
	var lastVersionTag : String;
	@:optional
	var parentRev : String;
	@:optional
	var noOverwrite : Bool;
};
typedef ReadDirOptions = {
	@:optional
	var removed : Bool;
	@:optional
	var deleted : Bool;
	@:optional
	var limit : Dynamic;
	@:optional
	var versionTag : String;
	@:optional
	var contentHash : String;
	@:optional
	var httpCache : Bool;
};
typedef MakeURLOptions = {
	@:optional
	var download : Bool;
	@:optional
	var downloadHack : Bool;
	@:optional
	var long : Bool;
	@:optional
	var longUrl : Bool;
};
typedef HistoryOptions = {
	@:optional
	var limit : Float;
	@:optional
	var httpCache : Bool;
};
typedef ThumbnailUrlOptions = {
	@:optional
	var png : Bool;
	@:optional
	var format : String;
	@:optional
	var size : String;
};
typedef ReadThumbnailOptions = {
	>ThumbnailUrlOptions,
	@:optional
	var arrayBuffer : Bool;
	@:optional
	var blob : Bool;
	@:optional
	var buffer : Bool;
};
typedef FindByNameOptions = {
	@:optional
	var limit : Float;
	@:optional
	var removed : Bool;
	@:optional
	var deleted : Bool;
	@:optional
	var httpCache : Bool;
};
typedef RedirectOptions = {
	@:optional
	var redirectUrl : String;
	@:optional
	var redirectFile : String;
	@:optional
	var scope : String;
	@:optional
	var rememberUser : Bool;
};
