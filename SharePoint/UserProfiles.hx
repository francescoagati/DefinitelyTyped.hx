@:enum abstract ChangeTypes(Int) {
	var none = 0;
	var add = 1;
	var modify = 2;
	var remove = 3;
	var metadata = 4;
	var all = 5;
}
extern class HashTag extends ClientValueObject {
	function get_name():String;
	function get_useCount():Float;
}
extern class HashTagCollection extends SP.ClientObjectCollection<HashTag> {
	function itemAt(index:Float):HashTag;
	function get_item(index:Float):HashTag;
}
@:enum abstract ObjectTypes(Int) {
	var none = 0;
	var singleValueProperty = 1;
	var multiValueProperty = 2;
	var anniversary = 3;
	var dlMembership = 4;
	var siteMembership = 5;
	var quickLink = 6;
	var colleague = 7;
	var personalizationSite = 8;
	var userProfile = 9;
	var webLog = 10;
	var custom = 11;
	var organizationProfile = 12;
	var organizationMembership = 13;
	var all = 14;
}
extern class PeopleManager extends SP.ClientObject {
	function new(context:SP.ClientRuntimeContext):Void;
	static function getTrendingTags(context:SP.ClientRuntimeContext):HashTagCollection;
	static function isFollowing(context:SP.ClientRuntimeContext, possibleFollowerAccountName:String, possibleFolloweeAccountName:String):SP.BooleanResult;
	function get_editProfileLink():String;
	function get_isMyPeopleListPublic():Bool;
	function getFollowedTags(numberOfTagsToFetch:Float):Array<String>;
	function getMyProperties():PersonProperties;
	function getPropertiesFor(accountName:String):PersonProperties;
	function getUserProfilePropertyFor(accountName:String, propertyName:String):String;
	function getUserProfilePropertiesFor(propertiesForUser:UserProfilePropertiesForUser):Array<Dynamic>;
	function getMySuggestions():SP.ClientObjectList<PersonProperties>;
	function hideSuggestion(accountName:String):Void;
	function follow(accountName:String):Void;
	function stopFollowing(accountName:String):Void;
	function followTag(tagId:String):Void;
	function stopFollowingTag(tagId:String):Void;
	function amIFollowing(accountName:String):SP.BooleanResult;
	function getPeopleFollowedByMe():SP.ClientObjectList<PersonProperties>;
	function getPeopleFollowedBy(accountName:String):SP.ClientObjectList<PersonProperties>;
	function getMyFollowers():SP.ClientObjectList<PersonProperties>;
	function getFollowersFor(accountName:String):SP.ClientObjectList<PersonProperties>;
	function amIFollowedBy(accountName:String):SP.BooleanResult;
	function setMyProfilePicture(data:Dynamic):Void;
}
@:enum abstract PersonalSiteCapabilities(Int) {
	var none = 0;
	var profile = 1;
	var social = 2;
	var storage = 3;
	var myTasksDashboard = 4;
	var education = 5;
	var guest = 6;
}
@:enum abstract PersonalSiteInstantiationState(Int) {
	var uninitialized = 0;
	var enqueued = 1;
	var created = 2;
	var deleted = 3;
	var permissionsGeneralFailure = 4;
	var permissionsUPANotGranted = 5;
	var permissionsUserNotLicensed = 6;
	var permissionsSelfServiceSiteCreationDisabled = 7;
	var permissionsNoMySitesInPeopleLight = 8;
	var permissionsEmptyHostUrl = 9;
	var permissionsHostFailedToInitializePersonalSiteContext = 10;
	var errorGeneralFailure = 11;
	var errorManagedPathDoesNotExist = 12;
	var errorLanguageNotInstalled = 13;
	var errorPartialCreate = 14;
	var errorPersonalSiteAlreadyExists = 15;
	var errorRootSiteNotPresent = 16;
	var errorSelfServiceSiteCreateCallFailed = 17;
}
@:enum abstract SocialDataStoreExceptionCode(Int) {
	var socialListNotFound = 0;
	var personalSiteNotFound = 1;
	var cannotCreatePersonalSite = 2;
	var noSocialFeatures = 3;
}
extern class PersonProperties extends SP.ClientObject {
	function get_accountName():String;
	function get_directReports():Array<String>;
	function get_displayName():String;
	function get_email():String;
	function get_extendedManagers():Array<String>;
	function get_extendedReports():Array<String>;
	function get_isFollowed():Bool;
	function get_latestPost():String;
	function get_peers():Array<String>;
	function get_personalUrl():String;
	function get_pictureUrl():String;
	function get_title():String;
	function get_userProfileProperties():{ };
	function get_userUrl():String;
}
extern class ProfileLoader extends SP.ClientObject {
	static function getProfileLoader(context:SP.ClientRuntimeContext):ProfileLoader;
	function getUserProfile():UserProfile;
}
extern class UserProfile extends SP.ClientObject {
	function new():Void;
	function get_followedContent():FollowedContent;
	function get_personalSite():SP.Site;
	function get_personalSiteCapabilities():PersonalSiteCapabilities;
	function get_personalSiteInstantiationState():PersonalSiteInstantiationState;
	function get_pictureImportEnabled():Bool;
	function get_urlToCreatePersonalSite():String;
	function shareAllSocialData(shareAll:Bool):Void;
	function createPersonalSite(lcid:Float):Void;
	function createPersonalSiteEnque(isInteractive:Bool):Void;
}
extern class FollowedContent extends SP.ClientObject {
	function new(context:SP.ClientRuntimeContext):Void;
	static function newObject(context:SP.ClientRuntimeContext):FollowedContent;
	function get_followedDocumentsUrl():String;
	function get_followedSitesUrl():String;
	function follow(url:String, ?data:FollowedItemData):FollowResult;
	function followItem(item:FollowedItem):FollowResult;
	function stopFollowing(url:String):Void;
	function isFollowed(url:String):SP.BooleanResult;
	function getFollowedStatus(url:String):SP.IntResult;
	function getItem(url:String):FollowedItem;
	function getItems(options:FollowedContentQueryOptions, subtype:Float):Array<FollowedItem>;
	function updateData(url:String, data:FollowedItemData):Void;
	function refreshFollowedItem(item:FollowedItem):FollowedItem;
	function findAndUpdateFollowedItem(url:String):FollowedItem;
}
extern class FollowedItem extends SP.ClientValueObject {
	function get_data():{ };
	function set_data(value:{ }):{ };
	function get_fileType():String;
	function set_fileType(value:String):String;
	function get_fileTypeProgid():String;
	function set_fileTypeProgid(value:String):String;
	function get_flags():String;
	function set_flags(value:String):String;
	function get_hasFeed():Bool;
	function set_hasFeed(value:Bool):Bool;
	function get_hidden():Bool;
	function set_hidden(value:Bool):Bool;
	function get_iconUrl():String;
	function set_iconUrl(value:String):String;
	function get_itemId():Float;
	function set_itemId(value:Float):Float;
	function get_itemType():FollowedItemType;
	function set_itemType(value:FollowedItemType):FollowedItemType;
	function get_listId():String;
	function set_listId(value:String):String;
	function get_parentUrl():String;
	function set_parentUrl(value:String):String;
	function get_serverUrlProgid():String;
	function set_serverUrlProgid(value:String):String;
	function get_siteId():String;
	function set_siteId(value:String):String;
	function get_subtype():Float;
	function set_subtype(value:Float):Float;
	function get_title():String;
	function set_title(value:String):String;
	function get_uniqueId():Dynamic;
	function set_uniqueId(value:Dynamic):Dynamic;
	function get_url():String;
	function set_url(value:String):String;
	function get_webId():String;
	function set_webId(value:Dynamic):Dynamic;
}
@:enum abstract FollowedItemType(Int) {
	var unknown = 0;
	var document = 1;
	var site = 2;
	var all = 3;
}
@:enum abstract FollowedContentExceptionType(Int) {
	var itemAlreadyExists = 0;
	var itemDoesNotExist = 1;
	var invalidQueryString = 2;
	var invalidSubtypeValue = 3;
	var unsupportedItemType = 4;
	var followLimitReached = 5;
	var untrustedSource = 6;
	var unsupportedSite = 7;
	var internalError = 8;
}
@:enum abstract FollowedContentQueryOptions(Int) {
	var unset = 0;
	var sites = 1;
	var documents = 2;
	var hidden = 3;
	var nonFeed = 4;
	var defaultOptions = 5;
	var all = 6;
}
@:enum abstract FollowedStatus(Int) {
	var followed = 0;
	var notFollowed = 1;
	var notFollowable = 2;
}
extern class FollowedItemData extends SP.ClientObject {
	function get_properties():{ };
}
extern class FollowResult extends SP.ClientValueObject {
	function get_item():FollowedItem;
	function get_resultType():FollowResultType;
}
@:enum abstract FollowResultType(Int) {
	var unknown = 0;
	var followed = 1;
	var refollowed = 2;
	var hitFollowLimit = 3;
	var failed = 4;
}
extern class UserProfilePropertiesForUser extends SP.ClientObject {
	function new(context:SP.ClientContext, accountName:String, propertyNames:Array<String>):Void;
	function get_accountName():String;
	function set_accountName(value:String):String;
	function getPropertyNames():Array<String>;
}
