extern class UtilTopLevel {
	static function createViewEditUrl(renderCtx:SPClientTemplates.RenderContext, listItem:IListItem, ?useEditFormUrl:Bool, ?appendSource:Bool):String;
	static function createItemPropertiesTitle(renderCtx:SPClientTemplates.RenderContext, listItem:IListItem):String;
	static function clearSelectedItemsDict(context:Dynamic):Void;
	static function ctxInitItemState(context:Dynamic):Void;
	static function getAttributeFromItemTable(itemTableParam:HTMLElement, strAttributeName:String, strAttributeOldName:String):String;
	static function getSelectedItemsDict(context:Dynamic):Dynamic;
	static function removeOnlyPagingArgs(url:String):String;
	static function removePagingArgs(url:String):String;
	static function showAttachmentRows():Void;
}
