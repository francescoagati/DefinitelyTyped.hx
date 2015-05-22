@:enum abstract AdvertisingState(Int) {
	var none = 0;
	var loading = 1;
	var linear = 2;
	var nonLinear = 3;
}
@:enum abstract AutohideBehavior(Int) {
	var none = 0;
	var allowDuringPlaybackOnly = 1;
	var preventDuringInteractiveHover = 2;
	var all = 3;
}
@:enum abstract InteractionType(Int) {
	var none = 0;
	var soft = 1;
	var hard = 2;
	var all = 3;
}
@:enum abstract NetworkState(Int) {
	var empty = 0;
	var idle = 1;
	var loading = 2;
	var noSource = 3;
}
@:enum abstract MediaQuality(Int) {
	var standardDefinition = 0;
	var highDefinition = 1;
}
@:enum abstract PlayerState(Int) {
	var unloaded = 0;
	var pending = 1;
	var loading = 2;
	var loaded = 3;
	var opened = 4;
	var starting = 5;
	var started = 6;
	var ending = 7;
	var ended = 8;
	var failed = 9;
}
@:enum abstract ReadyState(Int) {
	var nothing = 0;
	var metadata = 1;
	var currentData = 2;
	var futureData = 3;
	var enoughData = 4;
}
@:enum abstract MediaErrorCode(Int) {
	var unknown = 0;
	var aborted = 1;
	var network = 2;
	var decode = 3;
	var notSupported = 4;
}
@:enum abstract ImageErrorCode(Int) {
	var unknown = 0;
	var aborted = 1;
}
extern class TextTrackMode {
	static var off : String;
	static var hidden : String;
	static var showing : String;
}
@:enum abstract TextTrackDisplayMode(Int) {
	var none = 0;
	var custom = 1;
	var native = 2;
	var all = 3;
}
@:enum abstract TextTrackReadyState(Int) {
	var none = 0;
	var loading = 1;
	var loaded = 2;
	var error = 3;
}
@:enum abstract ViewModelState(Int) {
	var unloaded = 0;
	var loading = 1;
	var paused = 2;
	var playing = 3;
}
typedef PlaylistItem = {
	var src : String;
	@:optional
	var tracks : Array<Dynamic>;
};
extern class PluginBase {
	var isEnabled : Bool;
	var isLoaded : Bool;
	var isActive : Bool;
	var mediaPlayer : MediaPlayer;
	var currentMediaSource : MediaSource;
	function load():Void;
	function unload():Void;
	function update(mediaSource:MediaSource):Void;
}
