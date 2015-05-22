@:enum abstract SocialActorType(Int) {
	var user = 0;
	var document = 1;
	var site = 2;
	var tag = 3;
}
@:enum abstract SocialActorTypes(Int) {
	var none = 0;
	var users = 1;
	var documents = 2;
	var sites = 3;
	var tags = 4;
	var excludeContentWithoutFeeds = 5;
	var all = 6;
}
@:enum abstract SocialAttachmentActionKind(Int) {
	var navigate = 0;
	var adHocAction = 1;
}
@:enum abstract SocialAttachmentKind(Int) {
	var image = 0;
	var video = 1;
	var document = 2;
}
@:enum abstract SocialDataItemType(Int) {
	var user = 0;
	var document = 1;
	var site = 2;
	var tag = 3;
	var link = 4;
}
@:enum abstract SocialDataOverlayType(Int) {
	var link = 0;
	var actors = 1;
}
@:enum abstract SocialFeedSortOrder(Int) {
	var byModifiedTime = 0;
	var byCreatedTime = 1;
}
@:enum abstract SocialFeedType(Int) {
	var personal = 0;
	var news = 1;
	var timeline = 2;
	var likes = 3;
	var everyone = 4;
}
@:enum abstract SocialFeedAttributes(Int) {
	var none = 0;
	var moreThreadsAvailable = 1;
}
@:enum abstract SocialPostAttributes(Int) {
	var none = 0;
	var canLike = 1;
	var canDelete = 2;
	var useAuthorImage = 3;
	var useSmallImage = 4;
	var canFollowUp = 5;
}
@:enum abstract SocialPostDefinitionDataItemType(Int) {
	var text = 0;
	var user = 1;
	var document = 2;
	var site = 3;
	var tag = 4;
	var link = 5;
}
@:enum abstract SocialPostType(Int) {
	var root = 0;
	var reply = 1;
}
@:enum abstract SocialStatusCode(Int) {
	var OK = 0;
	var invalidRequest = 1;
	var accessDenied = 2;
	var itemNotFound = 3;
	var invalidOperation = 4;
	var itemNotModified = 5;
	var internalError = 6;
	var cacheReadError = 7;
	var cacheUpdateError = 8;
	var personalSiteNotFound = 9;
	var failedToCreatePersonalSite = 10;
	var notAuthorizedToCreatePersonalSite = 11;
	var cannotCreatePersonalSite = 12;
	var limitReached = 13;
	var attachmentError = 14;
	var partialData = 15;
	var featureDisabled = 16;
}
@:enum abstract SocialThreadAttributes(Int) {
	var none = 0;
	var isDigest = 1;
	var canReply = 2;
	var canLock = 3;
	var isLocked = 4;
	var replyLimitReached = 5;
}
@:enum abstract SocialThreadType(Int) {
	var normal = 0;
	var likeReference = 1;
	var replyReference = 2;
	var mentionReference = 3;
	var tagReference = 4;
}
extern class SocialActor extends SP.ClientValueObject {
	function get_accountName():String;
	function get_actorType():SocialActorType;
	function get_canFollow():Bool;
	function get_contentUri():String;
	function get_emailAddress():String;
	function get_followedContentUri():String;
	function get_id():String;
	function get_imageUri():String;
	function get_isFollowed():Bool;
	function get_libraryUri():String;
	function get_name():String;
	function get_personalSiteUri():String;
	function get_status():SocialStatusCode;
	function get_statusText():String;
	function get_tagGuid():String;
	function get_title():String;
	function get_uri():String;
}
extern class SocialActorInfo extends SP.ClientValueObject {
	function get_accountName():String;
	function set_accountName(value:String):String;
	function get_actorType():SocialActorType;
	function set_actorType(value:SocialActorType):SocialActorType;
	function get_contentUri():String;
	function set_contentUri(value:String):String;
	function get_id():String;
	function set_id(value:String):String;
	function get_tagGuid():String;
	function set_tagGuid(value:String):String;
}
extern class SocialAttachment extends SP.ClientValueObject {
	function get_attachmentKind():SocialAttachmentKind;
	function set_attachmentKind(value:SocialAttachmentKind):SocialAttachmentKind;
	function get_clickAction():SocialAttachmentAction;
	function set_clickAction(value:SocialAttachmentAction):SocialAttachmentAction;
	function get_contentUri():String;
	function set_contentUri(value:String):String;
	function get_description():String;
	function set_description(value:String):String;
	function get_height():Float;
	function set_height(value:Float):Float;
	function get_length():Float;
	function set_length(value:Float):Float;
	function get_name():String;
	function set_name(value:String):String;
	function get_previewUri():String;
	function set_previewUri(value:String):String;
	function get_uri():String;
	function set_uri(value:String):String;
	function get_width():Float;
	function set_width(value:Float):Float;
}
extern class SocialAttachmentAction extends SP.ClientValueObject {
	function get_actionKind():SocialAttachmentActionKind;
	function set_actionKind(value:SocialAttachmentActionKind):SocialAttachmentActionKind;
	function get_actionUri():String;
	function set_actionUri(value:String):String;
}
extern class SocialDataItem extends SP.ClientValueObject {
	function get_accountName():String;
	function set_accountName(value:String):String;
	function get_itemType():SocialDataItemType;
	function set_itemType(value:SocialDataItemType):SocialDataItemType;
	function get_tagGuid():String;
	function set_tagGuid(value:String):String;
	function get_text():String;
	function set_text(value:String):String;
	function get_uri():String;
	function set_uri(value:String):String;
}
extern class SocialDataOverlay extends SP.ClientValueObject {
	function get_actorIndexes():Array<Float>;
	function get_index():Float;
	function get_length():Float;
	function get_linkUri():String;
	function get_overlayType():SocialDataOverlayType;
}
extern class SocialExceptionDetails extends SP.ClientValueObject {
	function get_internalErrorCode():Float;
	function get_internalMessage():String;
	function get_internalStackTrace():String;
	function get_internalTypeName():String;
	function get_status():SocialStatusCode;
}
extern class SocialFeed extends SP.ClientValueObject {
	function get_attributes():SocialFeedAttributes;
	function get_newestProcessed():String;
	function get_oldestProcessed():String;
	function get_threads():Array<SocialThread>;
	function get_unreadMentionCount():Float;
}
extern class SocialFeedManager extends SP.ClientObject {
	function new(context:SP.ClientRuntimeContext):Void;
	function get_owner():SocialActor;
	function get_personalSitePortalUri():String;
	function createPost(targetId:String, creationData:SocialPostCreationData):SocialThread;
	function deletePost(postId:String):SocialThread;
	function getAllLikers(postId:String):Array<SocialActor>;
	function getFeed(type:SocialFeedType, options:SocialFeedOptions):SocialFeed;
	function getFeedFor(actorId:String, options:SocialFeedOptions):SocialFeed;
	function getFullThread(threadId:String):SocialThread;
	function getMentions(clearUnreadMentions:Bool, options:SocialFeedOptions):SocialFeed;
	function getUnreadMentionCount():SP.IntResult;
	function likePost(postId:String):SocialThread;
	function unlikePost(postId:String):SocialThread;
	function lockThread(threadId:String):SocialThread;
	function unlockThread(threadId:String):SocialThread;
	function suppressThreadNotifications(threadId:String):Void;
	function createImageAttachment(name:String, description:String, imageData:Dynamic):SocialAttachment;
	function getPreview(itemUrl:String):SocialAttachment;
	function getPreviewImage(url:String, key:String, iv:String):Dynamic;
}
extern class SocialFeedOptions extends SP.ClientObject {
	function get_maxThreadCount():Float;
	function set_maxThreadCount(value:Float):Float;
	function get_newerThan():String;
	function set_newerThan(value:String):String;
	function get_olderThan():String;
	function set_olderThan(value:String):String;
	function get_sortOrder():SocialFeedSortOrder;
	function set_sortOrder(value:SocialFeedSortOrder):SocialFeedSortOrder;
}
extern class SocialFollowingManager extends SP.ClientObject {
	function new(context:SP.ClientRuntimeContext):Void;
	function get_followedDocumentsUri():String;
	function get_followedSitesUri():String;
	function follow(actor:SocialActorInfo):SP.IntResult;
	function stopFollowing(actor:SocialActorInfo):SP.BooleanResult;
	function isFollowed(actor:SocialActorInfo):SP.BooleanResult;
	function getFollowed(types:SocialActorTypes):Array<SocialActor>;
	function getFollowedCount(types:SocialActorTypes):SP.IntResult;
	function getFollowers():Array<SocialActor>;
	function getSuggestions():Array<SocialActor>;
}
extern class SocialLink extends SP.ClientValueObject {
	function get_text():String;
	function set_text(value:String):String;
	function get_uri():String;
	function set_uri(value:String):String;
}
extern class SocialPost extends SP.ClientValueObject {
	function get_attachment():SocialAttachment;
	function get_attributes():SocialPostAttributes;
	function get_authorIndex():Float;
	function get_createdTime():String;
	function get_id():String;
	function get_likerInfo():SocialPostActorInfo;
	function get_modifiedTime():String;
	function get_overlays():Array<SocialDataOverlay>;
	function get_postType():SocialPostType;
	function get_preferredImageUri():String;
	function get_source():SocialLink;
	function get_text():String;
}
extern class SocialPostActorInfo extends SP.ClientValueObject {
	function get_includesCurrentUser():Bool;
	function get_indexes():Array<Float>;
	function get_totalCount():Float;
}
extern class SocialPostCreationData extends SP.ClientValueObject {
	function get_attachment():SocialAttachment;
	function set_attachment(value:SocialAttachment):SocialAttachment;
	function get_contentItems():SocialDataItem;
	function set_contentItems(value:SocialDataItem):SocialDataItem;
	function get_contentText():String;
	function set_contentText(value:String):String;
	function get_definitionData():SocialPostDefinitionData;
	function set_definitionData(value:SocialPostDefinitionData):SocialPostDefinitionData;
	function get_source():SocialLink;
	function set_source(value:SocialLink):SocialLink;
	function get_securityUris():Array<String>;
	function set_securityUris(value:Array<String>):Array<String>;
	function get_updateStatusText():Bool;
	function set_updateStatusText(value:Bool):Bool;
}
extern class SocialPostDefinitionData extends SP.ClientValueObject {
	function get_items():Array<SocialPostDefinitionDataItem>;
	function set_items(value:Array<SocialPostDefinitionDataItem>):Array<SocialPostDefinitionDataItem>;
	function get_name():String;
	function set_name(value:String):String;
}
extern class SocialPostDefinitionDataItem extends SP.ClientValueObject {
	function get_accountName():String;
	function set_accountName(value:String):String;
	function get_itemType():SocialPostDefinitionDataItemType;
	function set_itemType(value:SocialPostDefinitionDataItemType):SocialPostDefinitionDataItemType;
	function get_placeholderName():String;
	function set_placeholderName(value:String):String;
	function get_tagGuid():String;
	function set_tagGuid(value:String):String;
	function get_text():String;
	function set_text(value:String):String;
	function get_uri():String;
	function set_uri(value:String):String;
}
extern class SocialPostReference extends SP.ClientValueObject {
	function get_digest():SocialThread;
	function get_post():SocialPost;
	function get_threadId():String;
	function get_threadOwnerIndex():Float;
}
extern class SocialThread extends SP.ClientValueObject {
	function get_actors():Array<SocialActor>;
	function get_attributes():SocialThreadAttributes;
	function get_id():String;
	function get_ownerIndex():Float;
	function get_permalink():String;
	function get_postReference():SocialPostReference;
	function get_replies():Array<SocialPost>;
	function get_rootPost():SocialPost;
	function get_status():SocialStatusCode;
	function get_threadType():SocialThreadType;
	function get_totalReplyCount():Float;
}
