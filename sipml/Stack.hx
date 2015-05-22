typedef Configuration = {
	@:optional
	var bandwidth : Dynamic;
	@:optional
	var display_name : String;
	@:optional
	var enable_click2call : Bool;
	@:optional
	var enable_early_ims : Bool;
	@:optional
	var enable_media_stream_cache : Bool;
	@:optional
	var enable_rtcweb_breaker : Bool;
	@:optional
	var events_listener : Dynamic;
	@:optional
	var ice_servers : Array<Dynamic>;
	@:optional
	var impi : String;
	@:optional
	var impu : String;
	@:optional
	var outbound_proxy_url : String;
	@:optional
	var password : String;
	@:optional
	var realm : String;
	@:optional
	var sip_headers : Array<Dynamic>;
	@:optional
	var video_size : Dynamic;
	@:optional
	var websocket_proxy_url : String;
};
extern class Event extends SIPml.Event {
	var description : String;
	var newSession : Session;
	var type : String;
}
