typedef Response<T> = {
	var data : Dynamic;
	var status : Float;
	var success : Bool;
};
typedef Account = {
	var id : Float;
	var url : String;
	var bio : String;
	var reputation : Float;
	var created : Float;
	var pro_expiration : Dynamic;
};
typedef AccountSettings = {
	var email : String;
	var high_quality : Bool;
	var public_images : Bool;
	var album_privacy : String;
	var pro_expiration : Dynamic;
	var accepted_gallery_terms : Bool;
	var active_emails : Array<String>;
	var messaging_enabled : Bool;
	var blocked_users : Array<BlockedUser>;
};
typedef Album = {
	var id : String;
	var title : String;
	var description : String;
	var datetime : Float;
	var cover : String;
	var cover_width : Float;
	var cover_height : Float;
	@:optional
	var account_url : String;
	@:optional
	var account_id : Float;
	var privacy : String;
	var layout : String;
	var views : Float;
	var link : String;
	var favorite : Bool;
	@:optional
	var nsfw : Bool;
	var section : String;
	var order : Float;
	@:optional
	var deletehash : String;
	var images_count : Float;
	var images : Array<Image>;
};
typedef BlockedUser = {
	var blocked_id : Float;
	var blocked_url : String;
};
typedef Comment = {
	var id : Float;
	var image_id : String;
	var comment : String;
	var author : String;
	var author_id : Float;
	var on_album : Bool;
	var album_cover : String;
	var ups : Float;
	var downs : Float;
	var points : Float;
	var datetime : Float;
	var parent_id : Float;
	var deleted : Bool;
	@:optional
	var vote : String;
	var children : Array<Comment>;
};
typedef Conversation = {
	var id : Float;
	var last_message_preview : String;
	var datetime : Float;
	var with_account_id : Float;
	var with_account : String;
	var message_count : Float;
	@:optional
	var messages : Array<Message>;
	@:optional
	var done : Bool;
	@:optional
	var page : Float;
};
typedef CustomGallery = {
	var account_url : String;
	var link : String;
	var tags : Array<String>;
	var item_count : Float;
	var items : Array<GalleryItem>;
};
typedef GalleryItem = {
	var id : String;
	var title : String;
	var description : String;
	var datetime : Float;
	@:optional
	var account_url : String;
	@:optional
	var account_id : Float;
	var ups : Float;
	var downs : Float;
	var score : Float;
	var is_album : Bool;
	var views : Float;
	var link : String;
	@:optional
	var vote : String;
	var favorite : Bool;
	@:optional
	var nsfw : Bool;
	var comment_count : Float;
	var topic : String;
	var topic_id : Float;
};
typedef GalleryAlbum = {
	>GalleryItem,
	var cover : String;
	var cover_width : Float;
	var cover_height : Float;
	var privacy : String;
	var layout : String;
	var images_count : Float;
	var images : Array<Image>;
};
typedef GalleryImage = {
	>GalleryItem,
	var type : String;
	var animated : Bool;
	var width : Float;
	var height : Float;
	var size : Float;
	var bandwidth : Float;
	@:optional
	var deletehash : String;
	@:optional
	var gifv : String;
	@:optional
	var mp4 : String;
	@:optional
	var webm : String;
	@:optional
	var looping : Bool;
	var section : String;
};
typedef GalleryProfile = {
	var total_gallery_comments : Float;
	var total_gallery_favorites : Float;
	var total_gallery_submissions : Float;
	var trophies : Array<Trophy>;
};
typedef Trophy = {
	var id : Float;
	var name : String;
	var name_clean : String;
	var description : String;
	var data : String;
	var data_link : String;
	var datetime : Float;
	var image : String;
};
typedef Image = {
	var id : String;
	var title : String;
	var description : String;
	var datetime : Float;
	var type : String;
	var animated : Bool;
	var width : Float;
	var height : Float;
	var size : Float;
	var views : Float;
	var bandwidth : Float;
	@:optional
	var deletehash : String;
	@:optional
	var name : String;
	var section : String;
	var link : String;
	@:optional
	var gifv : String;
	@:optional
	var mp4 : String;
	@:optional
	var webm : String;
	@:optional
	var looping : Bool;
	@:optional
	var vote : String;
	var favorite : Bool;
	@:optional
	var nsfw : Bool;
	@:optional
	var account_url : String;
	@:optional
	var account_id : Float;
};
typedef MemeMetadata = {
	var meme_name : String;
	var top_text : String;
	var bottom_text : String;
	var bg_image : String;
};
typedef Message = {
	var id : Float;
	var from : String;
	var account_id : Float;
	var sender_id : Float;
	var body : String;
	var conversation_id : Float;
	var datetime : Float;
};
typedef Notification<T> = {
	var id : Float;
	var account_id : Float;
	var viewed : Bool;
	var content : T;
};
typedef AccountNotifications = {
	var replies : Array<Notification<Comment>>;
	var messages : Array<Notification<Conversation>>;
};
typedef Tag = {
	var name : String;
	var followers : Float;
	var total_items : Float;
	@:optional
	var following : Bool;
	var items : Array<GalleryItem>;
};
typedef TagVote = {
	var ups : Float;
	var downs : Float;
	var name : String;
	var author : String;
};
typedef Topic = {
	var id : Float;
	var name : String;
	var description : String;
};
typedef Vote = {
	var ups : Float;
	var downs : Float;
};
typedef Error = {
	var error : String;
	var request : String;
	var method : String;
};
