extern class URI_EncodingTopLevel {
	static function encodeURIComponent(str:String, ?bAsUrl:Bool, ?bForFilterQuery:Bool, ?bForCallback:Bool):String;
	static function escapeUrlForCallback(str:String):String;
}
typedef IListItem = {
	var ID : Float;
	var ContentTypeId : String;
};
