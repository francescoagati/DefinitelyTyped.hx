typedef IBufferedList = {
	>Ext.IBase,
	>Ext.mixin.IBindable,
	@:optional
	function getList():Dynamic;
	@:optional
	function setList(?list:Dynamic):Void;
};
typedef IListPaging = {
	>Ext.IComponent,
	@:optional
	var autoPaging : Bool;
	@:optional
	var loadMoreText : String;
	@:optional
	var noMoreRecordsText : String;
	@:optional
	function getAutoPaging():Bool;
	@:optional
	function getLoadMoreText():String;
	@:optional
	function getNoMoreRecordsText():String;
	@:optional
	function setAutoPaging(?autoPaging:Bool):Void;
	@:optional
	function setLoadMoreText(?loadMoreText:String):Void;
	@:optional
	function setNoMoreRecordsText(?noMoreRecordsText:String):Void;
};
typedef IPullRefresh = {
	>Ext.IComponent,
	@:optional
	var autoSnapBack : Bool;
	@:optional
	var lastUpdatedDateFormat : String;
	@:optional
	var lastUpdatedText : String;
	@:optional
	var list : Ext.dataview.IList;
	@:optional
	var loadedText : String;
	@:optional
	var loadingText : String;
	@:optional
	var overpullSnapBackDuration : Float;
	@:optional
	var pullRefreshText : String;
	@:optional
	var pullReleaseText : String;
	@:optional
	var pullText : String;
	@:optional
	var pullTpl : Dynamic;
	@:optional
	var releaseText : String;
	@:optional
	var scrollerAutoRefresh : Bool;
	@:optional
	var snappingAnimationDuration : Float;
	@:optional
	function getAutoSnapBack():Bool;
	@:optional
	function getLastUpdatedDateFormat():String;
	@:optional
	function getLastUpdatedText():String;
	@:optional
	function getList():Ext.dataview.IList;
	@:optional
	function getLoadedText():String;
	@:optional
	function getLoadingText():String;
	@:optional
	function getOverpullSnapBackDuration():Float;
	@:optional
	function getPullText():String;
	@:optional
	function getPullTpl():Dynamic;
	@:optional
	function getReleaseText():String;
	@:optional
	function getScrollerAutoRefresh():Bool;
	@:optional
	function getSnappingAnimationDuration():Float;
	@:optional
	function getTranslatable():Bool;
	@:optional
	function setAutoSnapBack(?autoSnapBack:Bool):Void;
	@:optional
	function setLastUpdatedDateFormat(?lastUpdatedDateFormat:String):Void;
	@:optional
	function setLastUpdatedText(?lastUpdatedText:String):Void;
	@:optional
	function setList(?list:Ext.dataview.IList):Void;
	@:optional
	function setLoadedText(?loadedText:String):Void;
	@:optional
	function setLoadingText(?loadingText:String):Void;
	@:optional
	function setOverpullSnapBackDuration(?overpullSnapBackDuration:Float):Void;
	@:optional
	function setPullRefreshText(?text:String):Void;
	@:optional
	function setPullText(?pullText:String):Void;
	@:optional
	function setPullTpl(?pullTpl:Dynamic):Void;
	@:optional
	function setReleaseRefreshText(?text:String):Void;
	@:optional
	function setReleaseText(?releaseText:String):Void;
	@:optional
	function setScrollerAutoRefresh(?scrollerAutoRefresh:Bool):Void;
	@:optional
	function setSnappingAnimationDuration(?snappingAnimationDuration:Float):Void;
	@:optional
	function setTranslatable(?translatable:Bool):Void;
	@:optional
	function snapBack(?force:Bool):Void;
};
typedef ISortableList = {
	>Ext.IComponent,
	>Ext.mixin.IBindable,
	@:optional
	function getHandleSelector():String;
	@:optional
	function getList():Dynamic;
	@:optional
	function setHandleSelector(?handleSelector:String):Void;
	@:optional
	function setList(?list:Dynamic):Void;
};
