typedef Activities = {
	function insert(object:{ var part : String; @:optional
	var RequestBody : String; }):HttpRequest<GoogleApiYouTubeActivityResource>;
	function list(object:{ var part : String; @:optional
	var channelId : String; @:optional
	var home : Bool; @:optional
	var maxResults : Float; @:optional
	var mine : Bool; @:optional
	var pageToken : String; @:optional
	var publishedAfter : String; @:optional
	var publishedBefore : String; @:optional
	var regionCode : String; }):HttpRequest<GoogleApiYouTubePaginationInfo<GoogleApiYouTubeActivityResource>>;
};
typedef ChannelBanners = {
	function insert(object:{ var onBehalfOfContentOwner : String; var RequestBody : String; }):HttpRequest<GoogleApiYouTubeChannelBannerResource>;
};
typedef Channels = {
	function list(object:{ var part : String; @:optional
	var categoryId : String; @:optional
	var forUsername : String; @:optional
	var id : String; @:optional
	var managedByMe : Bool; @:optional
	var maxResults : Float; @:optional
	var mine : Bool; @:optional
	var mySubscribers : Bool; @:optional
	var onBehalfOfContentOwner : String; @:optional
	var pageToken : String; }):HttpRequest<GoogleApiYouTubePaginationInfo<GoogleApiYouTubeChannelResource>>;
	function update(object:{ var part : String; @:optional
	var onBehalfOfContentOwner : String; @:optional
	var RequestBody : String; }):HttpRequest<GoogleApiYouTubeChannelResource>;
};
typedef GuideCategories = {
	function list(object:{ var part : String; @:optional
	var hl : String; @:optional
	var id : String; @:optional
	var regionCode : String; }):HttpRequest<GoogleApiYouTubePageInfo<GoogleApiYouTubeGuideCategoryResource>>;
};
typedef PlaylistItems = {
	function delete(object:{ var id : String; }):HttpRequest<GoogleApiYouTubePlaylistItemResource>;
	function insert(object:{ var part : String; @:optional
	var RequestBody : String; }):HttpRequest<GoogleApiYouTubePlaylistItemResource>;
	function list(object:{ var part : String; @:optional
	var id : String; @:optional
	var maxResults : Float; @:optional
	var pageToken : String; @:optional
	var playlistId : String; @:optional
	var videoId : String; }):HttpRequest<GoogleApiYouTubePaginationInfo<GoogleApiYouTubePlaylistItemResource>>;
	function update(object:{ var part : String; @:optional
	var RequestBody : String; }):HttpRequest<GoogleApiYouTubePlaylistItemResource>;
};
typedef Playlists = {
	function delete(object:{ var id : String; }):HttpRequest<GoogleApiYouTubePlaylistResource>;
	function insert(object:{ var part : String; @:optional
	var RequestBody : String; }):HttpRequest<GoogleApiYouTubePlaylistResource>;
	function list(object:{ var part : String; @:optional
	var channelId : String; @:optional
	var id : String; @:optional
	var maxResults : Float; @:optional
	var mine : Bool; var pagetoken : String; }):HttpRequest<GoogleApiYouTubePaginationInfo<GoogleApiYouTubePlaylistResource>>;
	function update(object:{ var part : String; @:optional
	var RequestBody : String; }):HttpRequest<GoogleApiYouTubePlaylistResource>;
};
typedef Search = {
	function list(object:{ var part : String; @:optional
	var channelId : String; @:optional
	var channelType : String; @:optional
	var forContentOwner : Bool; @:optional
	var forMine : Bool; @:optional
	var maxResults : Float; @:optional
	var onBehalfOfContentOwner : String; @:optional
	var order : String; @:optional
	var pageToken : String; @:optional
	var publishedAfter : String; @:optional
	var publishedBefore : String; @:optional
	var q : String; @:optional
	var regionCode : String; @:optional
	var relatedToVideoId : String; @:optional
	var safeSearch : String; @:optional
	var topicId : String; @:optional
	var type : String; @:optional
	var videoCaption : String; @:optional
	var videoCategoryId : String; @:optional
	var videoDefinition : String; @:optional
	var videoDimension : String; @:optional
	var videoDuration : String; @:optional
	var videoEmbeddable : String; @:optional
	var videoLicense : String; @:optional
	var videoSyndicated : String; @:optional
	var videoType : String; }):HttpRequest<GoogleApiYouTubePaginationInfo<GoogleApiYouTubeSearchResource>>;
};
typedef Subscriptions = {
	function delete(object:{ var id : String; }):HttpRequest<GoogleApiYouTubeSubscriptionResource>;
	function insert(object:{ var part : String; var RequestBody : String; }):HttpRequest<GoogleApiYouTubeSubscriptionResource>;
	function list(object:{ var part : String; @:optional
	var channelId : String; @:optional
	var forChannelId : String; @:optional
	var id : String; @:optional
	var maxResults : Float; @:optional
	var mine : Bool; @:optional
	var mySubscripbers : Bool; @:optional
	var order : String; @:optional
	var pageToken : String; }):HttpRequest<GoogleApiYouTubePaginationInfo<GoogleApiYouTubeSubscriptionResource>>;
};
typedef Thumbnails = {
	function set(object:{ var videoId : String; }):HttpRequest<GoogleApiYouTubePageInfo<GoogleApiYouTubeThumbnailResource>>;
};
typedef VideoCategories = {
	function list(object:{ var part : String; @:optional
	var hl : String; @:optional
	var id : String; @:optional
	var regionCode : String; }):HttpRequest<GoogleApiYouTubePageInfo<GoogleApiYouTubeVideoCategoryResource>>;
};
typedef Videos = {
	function delete(object:{ var id : String; @:optional
	var onBehalfOfContentOwner : String; }):HttpRequest<GoogleApiYouTubeVideoResource>;
	function getRating(object:{ var id : String; @:optional
	var onBehalfOfContentOwner : String; }):HttpRequest<GoogleApiYouTubeVideoGetRatingResponse>;
	function insert(object:{ var part : String; @:optional
	var autoLevels : Bool; @:optional
	var onBehalfOfContentOwner : String; @:optional
	var onBehalfOfContentOwnerChannel : String; @:optional
	var stabilize : Bool; @:optional
	var RequestBody : String; }):HttpRequest<GoogleApiYouTubeVideoResource>;
	function list(object:{ var part : String; var chart : String; var id : String; var locale : String; var maxResults : Float; var myRating : String; var onBehalfOfContentOwner : String; var pageToken : String; var videoCategoryId : String; }):HttpRequest<GoogleApiYouTubePaginationInfo<GoogleApiYouTubeVideoResource>>;
	function rate(object:{ var id : String; var rating : String; @:optional
	var onBehalfOfContentOwner : String; }):HttpRequest<Dynamic>;
	function update(object:{ var part : String; @:optional
	var onBehalfOfContentOwner : String; @:optional
	var RequestBody : String; }):HttpRequest<GoogleApiYouTubeVideoResource>;
};
typedef GoogleApiYouTubePageInfo<T> = {
	var kind : String;
	var etag : String;
	var items : Array<T>;
};
typedef GoogleApiYouTubePaginationInfo<T> = {
	var kind : String;
	var etag : String;
	var pageInfo : { var totalResults : Float; var resultsPerPage : Float; };
	var nextPageToken : String;
	var prevPageToken : String;
	var items : Array<T>;
};
typedef GoogleApiYouTubeActivityResource = {
	var kind : String;
	var etag : String;
	var id : String;
	var snippet : { var publishedAt : String; var channelId : String; var title : String; var description : String; var thumbnails : Array<GoogleApiYouTubeThumbnailItemResource>; var channelTitle : String; var type : String; var groupId : String; };
	var contentDetails : { var upload : { var videoId : String; }; var like : { var resourceId : { var kind : String; var videoId : String; }; }; var favorite : { var resourceId : { var kind : String; var videoId : String; }; }; var comment : { var resourceId : { var kind : String; var videoId : String; var channelId : String; }; }; var subscription : { var resourceId : { var kind : String; var channelId : String; }; }; var playlistItem : { var resourceId : { var kind : String; var videoId : String; }; var playlistId : String; var playlistItemId : String; }; var recommendation : { var resourceId : { var kind : String; var videoId : String; var channelId : String; }; var reason : String; var seedResourceId : { var kind : String; var videoId : String; var channelId : String; var playlistId : String; }; }; var bulletin : { var resourceId : { var kind : String; var videoId : String; var channelId : String; var playlistId : String; }; }; var social : { var type : String; var resourceId : { var kind : String; var videoId : String; var channelId : String; var playlistId : String; }; var author : String; var referenceUrl : String; var imageUrl : String; }; var channelItem : { var resourceId : { }; }; };
};
typedef GoogleApiYouTubeChannelBannerResource = {
	var kind : String;
	var etag : String;
	var url : String;
};
typedef GoogleApiYouTubeChannelResource = {
	var id : String;
	var kind : String;
	var etag : String;
	var snippet : { var title : String; var description : String; var publishedAt : String; var thumbnails : Array<GoogleApiYouTubeThumbnailItemResource>; };
	var contentDetails : { var relatedPlaylists : { var likes : String; var favorites : String; var uploads : String; var watchHistory : String; var watchLater : String; }; var googlePlusUserId : String; };
	var statistics : { var viewCount : Float; var commentCount : Float; var subscriberCount : Float; var videoCount : Float; };
	var topicDetails : { var topicIds : Array<String>; };
	var status : { var privacyStatus : String; var isLinked : Bool; };
	var brandingSettings : { var channel : { var title : String; var description : String; var keywords : String; var defaultTab : String; var trackingAnalyticsAccountId : String; var moderateComments : Bool; var showRelatedChannels : Bool; var showBrowseView : Bool; var featuredChannelsTitle : String; var featuredChannelsUrls : Array<String>; var unsubscribedTrailer : String; }; var watch : { var textColor : String; var backgroundColor : String; var featuredPlaylistId : String; }; var image : { var bannerImageUrl : String; var bannerMobileImageUrl : String; var backgroundImageUrl : { var default : String; var localized : Array<{ var value : String; var language : String; }>; }; var largeBrandedBannerImageImapScript : { var default : String; var localized : Array<{ var value : String; var language : String; }>; }; var largeBrandedBannerImageUrl : { var default : String; var localized : Array<{ var value : String; var language : String; }>; }; var smallBrandedBannerImageImapScript : { var default : String; var localized : Array<{ var value : String; var language : String; }>; }; var smallBrandedBannerImageUrl : { var default : String; var localized : Array<{ var value : String; var language : String; }>; }; var watchIconImageUrl : String; var trackingImageUrl : String; var bannerTabletLowImageUrl : String; var bannerTabletImageUrl : String; var bannerTabletHdImageUrl : String; var bannerTabletExtraHdImageUrl : String; var bannerMobileLowImageUrl : String; var bannerMobileMediumImageUrl : String; var bannerMobileHdImageUrl : String; var bannerMobileExtraHdImageUrl : String; var bannerTvImageUrl : String; var bannerExternalUrl : String; }; var hints : Array<{ var property : String; var value : String; }>; };
	var invideoPromotion : { var timing : { var type : String; var offsetMs : Float; }; var position : { var type : String; var cornerPosition : String; }; var items : Array<{ var type : String; var videoId : String; }>; };
};
typedef GoogleApiYouTubeGuideCategoryResource = {
	var id : String;
	var kind : String;
	var etag : String;
	var snippet : { var channelId : String; var title : String; };
};
typedef GoogleApiYouTubePlaylistItemResource = {
	var id : String;
	var kind : String;
	var etag : String;
	var snippet : { var publishedAt : String; var channelId : String; var title : String; var description : String; var thumbnails : Array<GoogleApiYouTubeThumbnailItemResource>; var channelTitle : String; var playlistId : String; var position : Float; var resourceId : { var kind : String; var videoId : String; }; };
	var contentDetails : { var videoId : String; var startAt : String; var endAt : String; var note : String; };
	var status : { var privacyStatus : String; };
};
typedef GoogleApiYouTubePlaylistResource = {
	var id : String;
	var kind : String;
	var etag : String;
	var snippet : { var publishedAt : String; var channelId : String; var title : String; var description : String; var thumbnails : Array<GoogleApiYouTubeThumbnailItemResource>; var channelTitle : String; var tags : Array<String>; };
	var status : { var privacyStatus : String; };
	var contentDetails : { var itemCount : Float; };
	var player : { var embedHtml : String; };
};
typedef GoogleApiYouTubeSearchResource = {
	var kind : String;
	var etag : String;
	var id : { var kind : String; var videoId : String; var channelId : String; var playlistId : String; };
	var snippet : { var publishedAt : String; var channelId : String; var title : String; var description : String; var thumbnails : Array<GoogleApiYouTubeThumbnailItemResource>; var channelTitle : String; };
};
typedef GoogleApiYouTubeSubscriptionResource = {
	var id : String;
	var etag : String;
	var kind : String;
	var snippet : { var publishedAt : String; var channelTitle : String; var title : String; var description : String; var resourceId : { var kind : String; var channelId : String; }; var channelId : String; var thumbnails : Array<GoogleApiYouTubeThumbnailItemResource>; };
	var contentDetails : { var totalItemCount : Float; var newItemCount : Float; };
	var subscriberSnippet : { var title : String; var description : String; var channelId : String; var thumbnails : Array<GoogleApiYouTubeThumbnailItemResource>; };
};
typedef GoogleApiYouTubeThumbnailResource = {
	var default : GoogleApiYouTubeThumbnailItemResource;
	var medium : GoogleApiYouTubeThumbnailItemResource;
	var high : GoogleApiYouTubeThumbnailItemResource;
};
typedef GoogleApiYouTubeThumbnailItemResource = {
	var url : String;
	var width : Float;
	var height : Float;
};
typedef GoogleApiYouTubeVideoCategoryResource = {
	var id : String;
	var kind : String;
	var etag : String;
	var snippet : { var channelId : String; var title : String; };
};
typedef GoogleApiYouTubeVideoResource = {
	var id : String;
	var kind : String;
	var etag : String;
	var snippet : { var publishedAt : String; var channelId : String; var title : String; var description : String; var thumbnails : Array<GoogleApiYouTubeThumbnailItemResource>; var channelTitle : String; var tags : Array<String>; var categoryId : String; };
	var contentDetails : { var duration : String; var dimension : String; var definition : String; var caption : String; var licensedContent : Bool; var regionRestriction : { var allowed : Array<String>; var blocked : Array<String>; }; var contentRating : { var mpaaRating : String; var tvpgRating : String; var bbfcRating : String; var chvrsRating : String; var eirinRating : String; var cbfcRating : String; var fmocRating : String; var icaaRating : String; var acbRating : String; var oflcRating : String; var fskRating : String; var kmrbRating : String; var djctqRating : String; var russiaRating : String; var rtcRating : String; }; };
	var player : { var embedHtml : String; };
	var statistics : { var viewCount : Float; var likeCount : Float; var dislikeCount : Float; var favoriteCount : Float; var commentCount : Float; };
	var status : { var uploadStatus : String; var failureReason : String; var rejectionReason : String; var privacyStatus : String; var license : String; var embeddable : Bool; var publicStatsViewable : Bool; };
	var topicDetails : { var topicIds : Array<String>; };
	var recordingDetails : { var location : { var latitude : Float; var longitude : Float; var elevation : Float; }; var locationDescription : String; var recordingDate : String; };
	var fileDetails : { var fileName : String; var fileSize : Float; var fileType : String; var container : String; var videoStreams : Array<{ var widthPixels : Float; var heightPixels : Float; var frameRateFps : Float; var aspectRatio : Float; var codec : String; var bitrateBps : Float; var rotation : String; var vender : String; }>; var audioStreams : Array<{ var channelCount : Float; var codec : String; var bitrateBps : Float; var vendor : String; }>; var durationMs : Float; var bitrateBps : Float; var recordingLocation : { var latitude : Float; var longitude : Float; var elevation : Float; }; var creationTime : String; };
	var processingDetails : { var processingStatus : String; var processingProgress : { var partsTotal : Float; var partsProcessed : Float; var timeLeftMs : Float; }; var processingFailureReason : String; var fileDetailsAvailability : String; var processingIssuesAvailability : String; var tagSuggestionsAvailability : String; var editorSuggestionsAvailability : String; var thumbnailsAvailability : String; };
	var suggestions : { var processingErrors : Array<String>; var processingWarnings : Array<String>; var processingHints : Array<String>; var tagSuggestions : Array<{ var tag : String; var categoryRestricts : Array<String>; }>; var editorSuggestions : Array<String>; };
};
typedef GoogleApiYouTubeVideoGetRatingResponse = {
	var kind : String;
	var etag : String;
	var items : Array<{ var videoId : String; var rating : String; }>;
};
