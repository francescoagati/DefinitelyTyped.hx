extern class SelectionTopLevel {
	static function selectListItem(iid:String, bSelect:Bool):Dynamic;
	static function getSelectedItems():Array<{ var id : Float; var fsObjType : FileSystemObjectType; }>;
	static function getSelectedList():String;
	static function getSelectedView():String;
	static function navigateUp(viewId:String):Void;
	static function deselectAllListItems(iid:String):Dynamic;
}
