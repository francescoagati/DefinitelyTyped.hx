extern class Portal {
	var access : String;
	var allSSL : Bool;
	var basemapGalleryGroupQuery : String;
	var bingKey : String;
	var canListApps : Bool;
	var canListData : Bool;
	var canListPreProvisionedItems : Bool;
	var canProvisionDirectPurchase : Bool;
	var canSearchPublic : Bool;
	var canShareBingPublic : Bool;
	var canSharePublic : Bool;
	var canSignInArcGIS : Bool;
	var canSignInIDP : Bool;
	var colorSetsGroupQuery : String;
	var commentsEnabled : Bool;
	var created : Date;
	var culture : String;
	var customBaseUrl : String;
	var defaultBasemap : Dynamic;
	var defaultExtent : Dynamic;
	var description : String;
	var featuredGroups : Array<Dynamic>;
	var featuredGroupsId : String;
	var featuredItemsGroupQuery : String;
	var galleryTemplatesGroupQuery : String;
	var homePageFeaturedContent : String;
	var homePageFeaturedContentCount : Float;
	var httpPort : Float;
	var httpsPort : Float;
	var id : String;
	var ipCntryCode : String;
	var isOrganization : Bool;
	var isPortal : Bool;
	var layerTemplatesGroupQuery : String;
	var maxTokenExpirationMinutes : Float;
	var modified : Date;
	var name : String;
	var portalHostname : String;
	var portalMode : String;
	var portalName : String;
	var portalProperties : Dynamic;
	var portalThumbnail : String;
	var portalUrl : String;
	var region : String;
	var rotatorPanels : Array<String>;
	var showHomePageDescription : Bool;
	var supportsHostedServices : Bool;
	var supportsOAuth : Bool;
	var symbolSetsGroupQuery : String;
	var templatesGroupQuery : String;
	var thumbnail : String;
	var thumbnailUrl : String;
	var units : String;
	var url : String;
	var urlKey : String;
	var user : Dynamic;
	var useStandardizedQuery : Bool;
	function new(url:String):Void;
	function getPortalUser():PortalUser;
	function queryGroups(?queryParams:Dynamic):Dynamic;
	function queryItems(?queryParams:Dynamic):Dynamic;
	function queryUsers(?queryParams:Dynamic):Dynamic;
	function signIn():Dynamic;
	function signOut():Portal;
	@:overload(function(type:Load, listener:{ var target : Portal; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Error, listener:{ var error : Error; var target : Portal; } -> Void):esri.Handle;
}
extern class PortalComment {
	var comment : String;
	var created : String;
	var id : String;
	var owner : String;
}
extern class PortalFolder {
	var created : Date;
	var id : String;
	var portal : Portal;
	var title : String;
	var url : String;
	function getItems():Dynamic;
}
extern class PortalGroup {
	var access : String;
	var created : Date;
	var description : String;
	var id : String;
	var isInvitationOnly : Bool;
	var isViewOnly : Bool;
	var modified : Date;
	var owner : Portal;
	var portal : Portal;
	var snippet : String;
	var tags : Array<String>;
	var thumbnailUrl : String;
	var title : String;
	var url : String;
	function getMembers():Dynamic;
	function queryItems(?queryParams:Dynamic):Dynamic;
}
extern class PortalItem {
	var access : String;
	var accessInformation : String;
	var avgRating : Float;
	var created : Date;
	var culture : String;
	var description : String;
	var extent : Dynamic;
	var id : String;
	var itemDataUrl : String;
	var itemUrl : String;
	var licenseInfo : String;
	var modified : Date;
	var name : String;
	var numComments : Float;
	var numRatings : Float;
	var numViews : Float;
	var owner : String;
	var portal : Portal;
	var size : Float;
	var snippet : String;
	var spatialReference : String;
	var tags : Array<String>;
	var thumbnailUrl : String;
	var title : String;
	var type : String;
	var typeKeywords : Array<String>;
	var url : String;
	var userItemUrl : String;
	function addComment(comment:String):Dynamic;
	function addRating(rating:Float):Dynamic;
	function deleteComment(comment:PortalComment):Dynamic;
	function deleteRating(rating:PortalRating):Dynamic;
	function getComments():Dynamic;
	function getRating():Dynamic;
	function updateComment(comment:PortalComment):Dynamic;
}
extern class PortalQueryResult {
	var nextQueryParams : Dynamic;
	var queryParams : Dynamic;
	var results : Array<Dynamic>;
	var total : Float;
}
extern class PortalRating {
	var created : Date;
	var rating : Float;
}
extern class PortalUser {
	var access : String;
	var created : Date;
	var culture : String;
	var description : String;
	var email : String;
	var fullName : String;
	var modified : Date;
	var orgId : String;
	var portal : Portal;
	var preferredView : String;
	var region : String;
	var role : String;
	var tags : Array<String>;
	var thumbnailUrl : String;
	var userContentUrl : String;
	var username : String;
	function getFolders():Dynamic;
	function getGroupInvitations():Dynamic;
	function getGroups():Dynamic;
	function getItem(itemId:String):Dynamic;
	function getItems(folderId:String):Dynamic;
	function getNotifications():Dynamic;
	function getTags():Dynamic;
}
