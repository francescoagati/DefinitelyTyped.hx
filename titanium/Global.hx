typedef Console = {
	function debug(message:Dynamic):Void;
	function error(message:Dynamic):Void;
	function info(message:Dynamic):Void;
	function log(message:Dynamic):Void;
	function warn(message:Dynamic):Void;
};
typedef String = {
	@:overload(function(formatString:String, value:Float):String { })
	function format(formatString:String, value:String):String;
	function formatCurrency(value:Float):String;
	function formatDate(date:Date, ?format:String):String;
	function formatDecimal(value:Float, ?locale:String, ?pattern:String):String;
	function formatTime(date:Date, ?format:String):String;
};
typedef JSON = {
	function parse(text:String, reviver:haxe.extern.Rest<Dynamic> -> Dynamic):Dynamic;
	@:overload(function(value:Dynamic, ?replacer:Array<String>, ?space:String):String { })
	@:overload(function(value:Dynamic, ?replacer:Array<String>, ?space:Float):String { })
	@:overload(function(value:Dynamic, ?replacer:haxe.extern.Rest<Dynamic> -> Dynamic, ?space:String):String { })
	function stringify(value:Dynamic, ?replacer:haxe.extern.Rest<Dynamic> -> Dynamic, ?space:Float):String;
};
extern class GlobalTopLevel {
	static function L(key:String, ?hint:String):String;
	static function alert(message:String):Void;
	static function clearInterval(timerId:Float):Void;
	static function clearTimeout(timerId:Float):Void;
	static function decodeURIComponent(encodedURI:String):String;
	static function encodeURIComponent(string:String):String;
	static function require(moduleId:String):Dynamic;
	static function setInterval(_function:haxe.extern.Rest<Dynamic> -> Dynamic, delay:Float):Float;
	static function setTimeout(_function:haxe.extern.Rest<Dynamic> -> Dynamic, delay:Float):Float;
}
extern class CloudGeoFenceResponse extends CloudResponse {
	var geo_fences : Array<Dictionary<Dynamic>>;
}
extern class ServiceIntentOptions {
	var startMode : Float;
	var url : String;
}
extern class AcceptedCallbackArgs {
	var inbound : Ti.Network.Socket.TCP;
	var socket : Ti.Network.Socket.TCP;
}
extern class HeadingData {
	var accuracy : Float;
	var magneticHeading : Float;
	var timestamp : Float;
	var trueHeading : Float;
	var x : Float;
	var y : Float;
	var z : Float;
}
extern class FacebookGraphResponsev1 {
	var error : String;
	var path : String;
	var result : String;
	var success : Bool;
}
extern class TextAreaSelectedParams {
	var length : Float;
	var location : Float;
}
extern class ThumbnailResponse extends ErrorResponse {
	var image : Ti.Blob;
	var time : Float;
}
extern class Dimension {
	var height : Float;
	var width : Float;
	var x : Float;
	var y : Float;
}
extern class ReadCallbackArgs extends ErrorResponse {
	var bytesProcessed : Float;
	var errorDescription : String;
	var errorState : Float;
	var source : Ti.IOStream;
}
extern class CloudACLsCheckResponse extends CloudResponse {
	var permission : Dictionary<Dynamic>;
}
extern class ViewTemplate {
	var bindId : String;
	var childTemplates : Array<ViewTemplate>;
	var events : Dictionary<Dynamic>;
	var properties : Dictionary<Dynamic>;
	var type : String;
}
extern class CloudChatsResponse extends CloudResponse {
	var chats : Array<Dictionary<Dynamic>>;
}
extern class MediaQueryType {
	var albumArtist : Dynamic;
	var albumTitle : Dynamic;
	var artist : Dynamic;
	var composer : Dynamic;
	var genre : Dynamic;
	var grouping : Float;
	var isCompilation : Dynamic;
	var mediaType : Dynamic;
	var title : Dynamic;
}
extern class WebAPIError {
	var code : Float;
	var message : String;
	var name : String;
}
extern class DocumentViewerOptions {
	var animated : Bool;
	var view : Ti.UI.View;
}
extern class ListViewAnimationProperties {
	var animated : Bool;
	var animationStyle : Float;
	var position : Float;
}
extern class CloudPushSchedulesResponse extends CloudResponse {
	var push_schedules : Array<Dynamic>;
}
extern class DataCallbackArgs {
	var address : String;
	var bytesData : Array<Number>;
	var port : String;
	var stringData : String;
}
extern class CloudPushNotificationErrorArg {
	var error : String;
}
extern class ScreenshotResult {
	var media : Ti.Blob;
}
extern class YQLResponse extends ErrorResponse {
	var data : Dynamic;
	var message : String;
}
extern class ForwardGeocodeResponse extends ErrorResponse {
	var accuracy : Float;
	var address : String;
	var city : String;
	var country : String;
	var countryCode : String;
	var country_code : String;
	var displayAddress : String;
	var latitude : String;
	var longitude : String;
	var postalCode : String;
	var region1 : String;
	var region2 : String;
	var street : String;
	var street1 : String;
}
extern class CloudEventsResponse extends CloudResponse {
	var events : Array<Dictionary<Dynamic>>;
}
extern class ReadyStatePayload {
	var readyState : Float;
}
extern class ErrorCallbackArgs {
	var errorCode : Float;
	var socket : Ti.Network.Socket.TCP;
}
extern class FailureResponse {
	var code : Number;
	var error : String;
	var success : Bool;
}
extern class WriteCallbackArgs extends ErrorResponse {
	var bytesProcessed : Float;
	var errorDescription : String;
	var errorState : Float;
	var source : Ti.IOStream;
}
extern class CloudPushNotificationSuccessArg {
	var deviceToken : String;
}
extern class MapLocationType {
	var animate : Bool;
	var latitude : Float;
	var latitudeDelta : Float;
	var longitude : Float;
	var longitudeDelta : Float;
	var regionFit : Bool;
}
extern class DecodeStringDict {
	var charset : String;
	var length : Float;
	var position : Float;
	var source : Ti.Buffer;
}
extern class ListViewContentInsetOption {
	var animated : Bool;
	var duration : Float;
}
extern class RouteDescription {
	var inputs : Array<Dynamic>;
	var outputs : Array<Dynamic>;
}
extern class CreateStreamArgs {
	var mode : Float;
	var source : Dynamic;
}
@:enum abstract ContactsAuthorizationResponse(Int) {

}
extern class CloudCheckinsResponse extends CloudResponse {
	var checkins : Array<Dictionary<Dynamic>>;
}
extern class CreateBufferArgs {
	var byteOrder : Float;
	var length : Float;
	var type : String;
	var value : Dynamic;
}
extern class CloudPushNotificationConfig {
	var error : haxe.extern.Rest<Dynamic> -> Dynamic;
	var success : haxe.extern.Rest<Dynamic> -> Dynamic;
}
extern class CloudReviewsResponse extends CloudResponse {
	var reviews : Array<Dictionary<Dynamic>>;
}
extern class Point {
	var x : Float;
	var y : Float;
}
extern class CloudPhotosResponse extends CloudResponse {
	var photos : Array<Dictionary<Dynamic>>;
}
extern class PushNotificationConfig {
	var callback : haxe.extern.Rest<Dynamic> -> Dynamic;
	var error : haxe.extern.Rest<Dynamic> -> Dynamic;
	var success : haxe.extern.Rest<Dynamic> -> Dynamic;
	var types : Array<Number>;
}
extern class MapRouteType {
	var color : String;
	var name : String;
	var points : Array<MapPointType>;
	var width : Float;
}
extern class AcceptDict {
	var error : haxe.extern.Rest<Dynamic> -> Dynamic;
	var timeout : Float;
}
extern class MediaQueryInfoType {
	var exact : Bool;
	var value : Dynamic;
}
extern class PumpCallbackArgs extends ErrorResponse {
	var buffer : Ti.Buffer;
	var bytesProcessed : Float;
	var errorDescription : String;
	var errorState : Float;
	var source : Ti.IOStream;
	var totalBytesProcessed : Float;
}
extern class MusicLibraryOptionsType {
	var allowMultipleSelections : Bool;
	var animated : Bool;
	var autohide : Bool;
	var cancel : haxe.extern.Rest<Dynamic> -> Dynamic;
	var error : haxe.extern.Rest<Dynamic> -> Dynamic;
	var mediaTypes : Dynamic;
	var success : haxe.extern.Rest<Dynamic> -> Dynamic;
}
extern class ShadowDict {
	var blurRadius : Float;
	var color : String;
	var offset : Dictionary<Dynamic>;
}
extern class LaunchOptions {
	var launchOptionsLocationKey : Bool;
	var source : String;
	var url : String;
}
extern class WriteStreamCallbackArgs extends ErrorResponse {
	var bytesProcessed : Float;
	var errorDescription : String;
	var errorState : Float;
	var fromStream : Ti.IOStream;
	var toStream : Ti.IOStream;
}
extern class CloudChatGroupsResponse extends CloudResponse {
	var chat_groups : Array<Dictionary<Dynamic>>;
}
extern class CloudPhotoCollectionsPhotosResponse extends CloudResponse {
	var photos : Array<Dictionary<Dynamic>>;
}
extern class DecodeNumberDict {
	var byteOrder : Float;
	var position : Float;
	var source : Ti.Buffer;
	var type : String;
}
extern class ConnectedCallbackArgs {
	var socket : Ti.Network.Socket.TCP;
}
extern class CloudPhotoCollectionsResponse extends CloudResponse {
	var collections : Array<Dictionary<Dynamic>>;
}
extern class CloudObjectsResponse extends CloudResponse {
	var classname : Array<Dictionary<Dynamic>>;
}
extern class PopoverParams {
	var animated : Bool;
	var rect : Dimension;
	var view : Ti.UI.View;
}
extern class MediaScannerResponse {
	var path : String;
	var uri : String;
}
extern class CloudPushNotificationsQueryChannelResponse extends CloudResponse {
	var push_channels : Array<String>;
}
extern class CloudPostsResponse extends CloudResponse {
	var posts : Array<Dictionary<Dynamic>>;
}
extern class CloudSocialIntegrationsResponse extends CloudResponse {
	var users : Array<Dictionary<Dynamic>>;
}
extern class APSConnectionDelegate {

}
extern class CameraOptionsType {
	var allowEditing : Bool;
	var animated : Bool;
	var arrowDirection : Float;
	var autohide : Bool;
	var autorotate : Bool;
	var cancel : haxe.extern.Rest<Dynamic> -> Dynamic;
	var error : haxe.extern.Rest<Dynamic> -> Dynamic;
	var inPopOver : Bool;
	var mediaTypes : Array<String>;
	var overlay : Ti.UI.View;
	var popoverView : Ti.UI.View;
	var saveToPhotoGallery : Bool;
	var showControls : Bool;
	var success : haxe.extern.Rest<Dynamic> -> Dynamic;
	var transform : Ti.UI._2DMatrix;
	var videoMaximumDuration : Float;
	var videoQuality : Float;
}
extern class ListViewIndexEntry {
	var index : Float;
	var title : String;
}
extern class CloudStreamProgress {
	var progress : Float;
	var url : String;
}
extern class MusicLibraryResponseType {
	var items : Array<Ti.Media.Item>;
	var representative : Ti.Media.Item;
	var types : Float;
}
extern class CloudEventOccurrencesResponse extends CloudResponse {
	var event_occurrences : Array<Dictionary<Dynamic>>;
}
extern class CloudUsersResponse extends CloudResponse {
	var users : Array<Dictionary<Dynamic>>;
}
extern class TableViewContentInsetOption {
	var animated : Bool;
	var duration : Float;
}
extern class CloudFriendRequestsResponse extends CloudResponse {
	var friend_requests : Array<Dictionary<Dynamic>>;
}
extern class CloudACLsResponse extends CloudResponse {
	var acls : Array<Dictionary<Dynamic>>;
}
extern class ListViewMarkerProps {
	var itemIndex : Float;
	var sectionIndex : Float;
}
extern class EventsAuthorizationResponse {
	var code : Float;
	var error : String;
	var success : Bool;
}
extern class PlayerQueue {
	var items : Array<Ti.Media.Item>;
}
extern class CoverFlowImageType {
	var height : Float;
	var image : Dynamic;
	var width : Float;
}
extern class BroadcastIntentOptions {
	var action : String;
	var className : String;
	var data : String;
	var flags : Float;
	var packageName : String;
	var url : String;
}
extern class CloudUsersSecureResponse extends CloudResponse {
	var accessToken : String;
	var expiresIn : Float;
}
extern class CloudClientsResponse extends CloudResponse {
	var ip_address : String;
	var location : Dictionary<Dynamic>;
}
extern class PushNotificationErrorArg {
	var type : String;
}
extern class CloudStatusesResponse extends CloudResponse {
	var statuses : Array<Dictionary<Dynamic>>;
}
extern class WindowToolbarParam {
	var animated : Bool;
	var barColor : String;
	var tintColor : String;
	var translucent : Bool;
}
extern class GeocodedAddress {
	var address : String;
	var city : String;
	var country : String;
	var countryCode : String;
	var country_code : String;
	var displayAddress : String;
	var latitude : String;
	var longitude : String;
	var postalCode : String;
	var region1 : String;
	var region2 : String;
	var street : String;
	var street1 : String;
	var zipcode : String;
}
extern class ContactsCallbackArgs extends ErrorResponse {
	var data : Array<Ti.Contacts.Person>;
}
extern class ZoomScaleOption {
	var animated : Bool;
}
extern class LocationCoordinates {
	var accuracy : Float;
	var altitude : Float;
	var altitudeAccuracy : Float;
	var heading : Float;
	var latitude : Float;
	var longitude : Float;
	var speed : Float;
	var timestamp : Float;
}
extern class ActivityResult {
	var intent : Ti.Android.Intent;
	var requestCode : Float;
	var resultCode : Float;
}
extern class CloudUsersSecureDialog {
	var title : String;
}
extern class CloudFriendsResponse extends CloudResponse {
	var users : Array<Dictionary<Dynamic>>;
}
extern class PhotoGalleryOptionsType {
	var allowEditing : Bool;
	var animated : Bool;
	var arrowDirection : Float;
	var autohide : Bool;
	var cancel : haxe.extern.Rest<Dynamic> -> Dynamic;
	var error : haxe.extern.Rest<Dynamic> -> Dynamic;
	var mediaTypes : Array<String>;
	var popoverView : Ti.UI.View;
	var success : haxe.extern.Rest<Dynamic> -> Dynamic;
}
extern class NotificationParams {
	var alertAction : String;
	var alertBody : String;
	var alertLaunchImage : String;
	var badge : Float;
	var category : String;
	var date : Date;
	var repeat : String;
	var sound : String;
	var timezone : String;
	var userInfo : Dictionary<Dynamic>;
}
@:enum abstract SuccessResponse(Int) {

}
extern class DaysOfTheWeekDictionary {
	var daysOfWeek : Float;
	var week : Float;
}
extern class Modules {

}
extern class ReferenceInsets {
	var bottom : Float;
	var left : Float;
	var right : Float;
	var top : Float;
}
extern class HideStatusBarParams {
	var animated : Bool;
	var animationStyle : Float;
}
extern class PreviewImageOptions {
	var error : haxe.extern.Rest<Dynamic> -> Dynamic;
	var image : Ti.Blob;
	var success : haxe.extern.Rest<Dynamic> -> Dynamic;
}
extern class ListDataItem {
	var properties : Dictionary<Ti.UI.ListItem>;
	var template : Dynamic;
}
extern class ItemTemplate {
	var childTemplates : Array<ViewTemplate>;
	var events : Dictionary<Dynamic>;
	var properties : Dictionary<Ti.UI.ListItem>;
}
extern class MovieSize {
	var height : Float;
	var width : Float;
}
extern class CameraMediaItemType {
	var cropRect : CropRectType;
	var media : Ti.Blob;
	var mediaType : String;
}
extern class HeadingResponse extends ErrorResponse {
	var heading : HeadingData;
}
extern class ListViewEdgeInsets {
	var bottom : Float;
	var left : Float;
	var right : Float;
	var top : Float;
}
extern class BoundaryIdentifier {
	var identifier : String;
	var point1 : Point;
	var point2 : Point;
}
@:enum abstract CloudEmailsResponse(Int) {

}
extern class GradientColorRef {
	var color : String;
	var offset : Float;
}
extern class Font {
	var fontFamily : String;
	var fontSize : Dynamic;
	var fontStyle : String;
	var fontWeight : String;
	var textStyle : String;
}
extern class CloudPlacesResponse extends CloudResponse {
	var places : Array<Dictionary<Dynamic>>;
}
extern class EncodeNumberDict {
	var byteOrder : Float;
	var dest : Ti.Buffer;
	var position : Float;
	var source : Float;
	var type : String;
}
extern class ShowContactsParams {
	var animated : Bool;
	var cancel : haxe.extern.Rest<Dynamic> -> Dynamic;
	var fields : Array<String>;
	var selectedPerson : haxe.extern.Rest<Dynamic> -> Dynamic;
	var selectedProperty : haxe.extern.Rest<Dynamic> -> Dynamic;
}
extern class LocationProviderDict {
	var accuracy : Float;
	var name : String;
	var power : Float;
}
extern class FacebookDialogResponsev1 {
	var cancelled : Bool;
	var error : String;
	var result : String;
	var success : Bool;
}
extern class CloudFilesResponse extends CloudResponse {
	var files : Array<Dictionary<Dynamic>>;
}
extern class HideParams {
	var animated : Bool;
}
extern class SecurityManagerProtocol {
	function connectionDelegateForUrl(url:Dynamic):APSConnectionDelegate;
	function getKeyManagers(proxy:Dynamic):Array<Dynamic>;
	function getTrustManagers(proxy:Dynamic):Array<Dynamic>;
	function willHandleURL(url:Dynamic):Bool;
}
extern class OpenWindowParams {
	var activityEnterAnimation : Float;
	var activityExitAnimation : Float;
	var animated : Bool;
	var bottom : Dynamic;
	var fullscreen : Bool;
	var height : Dynamic;
	var left : Dynamic;
	var modal : Bool;
	var modalStyle : Float;
	var modalTransitionStyle : Float;
	var navBarHidden : Bool;
	var right : Dynamic;
	var top : Dynamic;
	var transition : Float;
	var width : Dynamic;
}
extern class Gradient {
	var backfillEnd : Bool;
	var backfillStart : Bool;
	var colors : Dynamic;
	var endPoint : Point;
	var endRadius : Float;
	var startPoint : Point;
	var startRadius : Float;
	var type : String;
}
extern class ShowStatusBarParams {
	var animated : Bool;
	var animationStyle : Float;
}
extern class TransitionAnimationParam {
	var duration : Float;
	var tranistionTo : Ti.UI.Animation;
	var transitionFrom : Ti.UI.Animation;
}
extern class MapPointType {
	var latitude : Float;
	var longitude : Float;
}
extern class CloudKeyValuesResponse extends CloudResponse {
	var keyvalues : Array<Dictionary<Dynamic>>;
}
extern class TableViewEdgeInsets {
	var bottom : Float;
	var left : Float;
	var right : Float;
	var top : Float;
}
extern class ReverseGeocodeResponse extends ErrorResponse {
	var places : Array<GeocodedAddress>;
}
extern class ContentOffsetOption {
	var animated : Bool;
}
extern class Attribute {
	var range : Array<Number>;
	var type : Float;
	var value : Float;
}
extern class PushNotificationSuccessArg {
	var deviceToken : String;
	var type : String;
}
extern class PushNotificationData {
	var data : Dictionary<Dynamic>;
	var inBackground : Bool;
}
extern class CloseWindowParams {
	var activityEnterAnimation : Float;
	var activityExitAnimation : Float;
	var animated : Bool;
}
extern class CloudLikesResponse extends CloudResponse {
	var likes : Array<Dictionary<Dynamic>>;
}
extern class ShowParams {
	var animated : Bool;
	var rect : Dimension;
	var view : Ti.UI.View;
}
extern class PreviewImageError {
	var message : String;
}
extern class CloudMessagesResponse extends CloudResponse {
	var messages : Array<Dictionary<Dynamic>>;
}
extern class CloudPushNotificationsShowChannelResponse extends CloudResponse {
	var devices : Dictionary<Dynamic>;
}
extern class ImageAsCroppedDict {
	var height : Float;
	var width : Float;
	var x : Float;
	var y : Float;
}
extern class UserNotificationSettings {
	var categories : Array<Ti.App.iOS.UserNotificationCategory>;
	var types : Array<Number>;
}
extern class TableViewAnimationProperties {
	var animated : Bool;
	var animationStyle : Float;
	var position : Float;
}
@:enum abstract MediaAuthorizationResponse(Int) {

}
extern class EncodeStringDict {
	var charset : String;
	var dest : Ti.Buffer;
	var destPosition : Float;
	var source : String;
	var sourceLength : Float;
	var sourcePosition : Float;
}
