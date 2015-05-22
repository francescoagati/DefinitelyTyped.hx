typedef KbSearchControl = {
	>Control,
	function addOnResultOpened(handler:Void -> Void):Void;
	function addOnSelection(handler:Void -> Void):Void;
	function getSearchQuery():String;
	function getSelectedResult():KbSearchResult;
	function removeOnResultOpened(handler:Void -> Void):Void;
	function removeOnSelection(handler:Void -> Void):Void;
	function setSearchQuery(query:String):Void;
};
typedef KbSearchResult = {
	var answer : String;
	var articleId : String;
	var articleUid : String;
	var createdOn : Date;
	var expiredDate : Date;
	var isAssociated : Bool;
	var lastModifiedOn : Date;
	var publicUrl : String;
	var published : Bool;
	var question : String;
	var rating : Float;
	var searchBlurb : String;
	var serviceDeskUri : String;
	var timesViewed : Float;
};
