typedef IComponent = {
	>Ext.IAbstractComponent,
	>Ext.mixin.ITraversable,
	@:optional
	var baseCls : String;
	@:optional
	var border : Dynamic;
	@:optional
	var bottom : Dynamic;
	@:optional
	var centered : Bool;
	@:optional
	var cls : Dynamic;
	@:optional
	var componentCls : String;
	@:optional
	var contentEl : Dynamic;
	@:optional
	var data : Dynamic;
	@:optional
	var disabled : Bool;
	@:optional
	var disabledCls : String;
	@:optional
	var dock : String;
	@:optional
	var docked : String;
	@:optional
	var enterAnimation : Dynamic;
	@:optional
	var exitAnimation : Dynamic;
	@:optional
	var flex : Float;
	@:optional
	var floating : Bool;
	@:optional
	var floatingCls : String;
	@:optional
	var fullscreen : Bool;
	@:optional
	var height : Dynamic;
	@:optional
	var hidden : Bool;
	@:optional
	var hiddenCls : String;
	@:optional
	var hideAnimation : Dynamic;
	@:optional
	var hideOnMaskTap : Bool;
	@:optional
	var html : Dynamic;
	@:optional
	var id : String;
	@:optional
	var itemId : String;
	@:optional
	var layoutOnOrientationChange : Bool;
	@:optional
	var left : Dynamic;
	@:optional
	var margin : Dynamic;
	@:optional
	var maxHeight : Dynamic;
	@:optional
	var maxWidth : Dynamic;
	@:optional
	var minHeight : Dynamic;
	@:optional
	var minWidth : Dynamic;
	@:optional
	var modal : Bool;
	@:optional
	var monitorOrientation : Bool;
	@:optional
	var padding : Dynamic;
	@:optional
	var plugins : Dynamic;
	@:optional
	var record : Ext.data.IModel;
	@:optional
	var renderTo : Ext.IElement;
	@:optional
	var right : Dynamic;
	@:optional
	var scroll : Dynamic;
	@:optional
	var showAnimation : Dynamic;
	@:optional
	var stopMaskTapEvent : Bool;
	@:optional
	var style : Dynamic;
	@:optional
	var styleHtmlCls : String;
	@:optional
	var styleHtmlContent : Bool;
	@:optional
	var top : Dynamic;
	@:optional
	var tpl : Dynamic;
	@:optional
	var tplWriteMode : String;
	@:optional
	var ui : String;
	@:optional
	var width : Dynamic;
	@:optional
	var xtype : String;
	@:optional
	var zIndex : Float;
	@:optional
	function addCls(?cls:String, ?prefix:String, ?suffix:String):Void;
	@:optional
	function destroy():Void;
	@:optional
	function disable():Void;
	@:optional
	function enable():Void;
	@:optional
	function getBaseCls():String;
	@:optional
	function getBorder():Dynamic;
	@:optional
	function getBottom():Dynamic;
	@:optional
	function getCentered():Bool;
	@:optional
	function getCls():Dynamic;
	@:optional
	function getContentEl():Dynamic;
	@:optional
	function getData():Dynamic;
	@:optional
	function getDisabled():Bool;
	@:optional
	function getDisabledCls():String;
	@:optional
	function getDocked():String;
	@:optional
	function getEl():Ext.dom.IElement;
	@:optional
	function getEnterAnimation():Dynamic;
	@:optional
	function getExitAnimation():Dynamic;
	@:optional
	function getFlex():Float;
	@:optional
	function getFloatingCls():String;
	@:optional
	function getHeight():Dynamic;
	@:optional
	function getHidden():Bool;
	@:optional
	function getHiddenCls():String;
	@:optional
	function getHideAnimation():Dynamic;
	@:optional
	function getHtml():Dynamic;
	@:optional
	function getItemId():String;
	@:optional
	function getLeft():Dynamic;
	@:optional
	function getMargin():Dynamic;
	@:optional
	function getMaxHeight():Dynamic;
	@:optional
	function getMaxWidth():Dynamic;
	@:optional
	function getMinHeight():Dynamic;
	@:optional
	function getMinWidth():Dynamic;
	@:optional
	function getPadding():Dynamic;
	@:optional
	function getParent():Ext.IComponent;
	@:optional
	function getPlugins():Dynamic;
	@:optional
	function getRecord():Ext.data.IModel;
	@:optional
	function getRenderTo():Ext.IElement;
	@:optional
	function getRight():Dynamic;
	@:optional
	function getShowAnimation():Dynamic;
	@:optional
	function getSize():Dynamic;
	@:optional
	function getStyle():Dynamic;
	@:optional
	function getStyleHtmlCls():String;
	@:optional
	function getStyleHtmlContent():Bool;
	@:optional
	function getTop():Dynamic;
	@:optional
	function getTpl():Dynamic;
	@:optional
	function getTplWriteMode():String;
	@:optional
	function getUi():String;
	@:optional
	function getWidth():Dynamic;
	@:optional
	function getXTypes():String;
	@:optional
	function getZIndex():Float;
	@:optional
	function hasParent():Bool;
	@:optional
	function hide(?animation:Dynamic):Ext.IComponent;
	@:optional
	function initialize():Void;
	@:optional
	function isDisabled():Bool;
	@:optional
	function isHidden():Bool;
	@:optional
	function isXType(?xtype:String, ?shallow:Bool):Bool;
	@:optional
	function removeCls(?cls:String, ?prefix:String, ?suffix:String):Void;
	@:optional
	function replaceCls(?oldCls:String, ?newCls:String, ?prefix:String, ?suffix:String):Void;
	@:optional
	function resetFloating():Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setBorder(?border:Dynamic):Void;
	@:optional
	function setBottom(?bottom:Dynamic):Void;
	@:optional
	function setCentered(?centered:Bool):Void;
	@:optional
	function setCls(?cls:Dynamic):Void;
	@:optional
	function setContentEl(?contentEl:Dynamic):Void;
	@:optional
	function setData(?data:Dynamic):Void;
	@:optional
	function setDisabled(?disabled:Bool):Void;
	@:optional
	function setDisabledCls(?disabledCls:String):Void;
	@:optional
	function setDocked(?docked:String):Void;
	@:optional
	function setDraggable(?draggable:Dynamic):Void;
	@:optional
	function setEnterAnimation(?enterAnimation:Dynamic):Void;
	@:optional
	function setExitAnimation(?exitAnimation:Dynamic):Void;
	@:optional
	function setFlex(?flex:Float):Void;
	@:optional
	function setFloating(?floating:Bool):Void;
	@:optional
	function setFloatingCls(?floatingCls:String):Void;
	@:optional
	function setHeight(?height:Dynamic):Void;
	@:optional
	function setHidden(?hidden:Bool):Void;
	@:optional
	function setHiddenCls(?hiddenCls:String):Void;
	@:optional
	function setHideAnimation(?hideAnimation:Dynamic):Void;
	@:optional
	function setHtml(?html:Dynamic):Void;
	@:optional
	function setItemId(?itemId:String):Void;
	@:optional
	function setLeft(?left:Dynamic):Void;
	@:optional
	function setMargin(?margin:Dynamic):Void;
	@:optional
	function setMaxHeight(?maxHeight:Dynamic):Void;
	@:optional
	function setMaxWidth(?maxWidth:Dynamic):Void;
	@:optional
	function setMinHeight(?minHeight:Dynamic):Void;
	@:optional
	function setMinWidth(?minWidth:Dynamic):Void;
	@:optional
	function setPadding(?padding:Dynamic):Void;
	@:optional
	function setPlugins(?plugins:Dynamic):Void;
	@:optional
	function setRecord(?record:Ext.data.IModel):Void;
	@:optional
	function setRenderTo(?renderTo:Ext.IElement):Void;
	@:optional
	function setRight(?right:Dynamic):Void;
	@:optional
	function setScrollable():Void;
	@:optional
	function setShowAnimation(?showAnimation:Dynamic):Void;
	@:optional
	function setSize(?width:Float, ?height:Float):Void;
	@:optional
	function setStyle(?style:Dynamic):Void;
	@:optional
	function setStyleHtmlCls(?styleHtmlCls:String):Void;
	@:optional
	function setStyleHtmlContent(?styleHtmlContent:Bool):Void;
	@:optional
	function setTop(?top:Dynamic):Void;
	@:optional
	function setTpl(?tpl:Dynamic):Void;
	@:optional
	function setTplWriteMode(?tplWriteMode:String):Void;
	@:optional
	function setUi(?ui:String):Void;
	@:optional
	function setWidth(?width:Dynamic):Void;
	@:optional
	function setZIndex(?zIndex:Float):Void;
	@:optional
	function show(?animation:Dynamic):Ext.IComponent;
	@:optional
	function showBy(?component:Ext.IComponent, ?alignment:String):Void;
	@:optional
	function up(?selector:String):Ext.IContainer;
	@:optional
	function update():Void;
	@:optional
	function updateStyleHtmlCls(?newHtmlCls:Dynamic, ?oldHtmlCls:Dynamic):Void;
};
typedef IContainer = {
	>Ext.IComponent,
	@:optional
	var activeItem : Dynamic;
	@:optional
	var autoDestroy : Bool;
	@:optional
	var cardSwitchAnimation : Dynamic;
	@:optional
	var control : Dynamic;
	@:optional
	var defaultType : String;
	@:optional
	var defaults : Dynamic;
	@:optional
	var hideOnMaskTap : Bool;
	@:optional
	var items : Dynamic;
	@:optional
	var layout : Dynamic;
	@:optional
	var masked : Dynamic;
	@:optional
	var modal : Bool;
	@:optional
	var scroll : Dynamic;
	@:optional
	var scrollable : Dynamic;
	@:optional
	function add(?newItems:Dynamic):Ext.IComponent;
	@:optional
	function addAll(?items:Array<Dynamic>):Array<Dynamic>;
	@:optional
	function animateActiveItem(?activeItem:Dynamic, ?animation:Dynamic):Void;
	@:optional
	function applyMasked(?masked:Dynamic):Dynamic;
	@:optional
	function child(?selector:String):Ext.IComponent;
	@:optional
	function destroy():Void;
	@:optional
	function down(?selector:String):Ext.IComponent;
	@:optional
	function getActiveItem():Dynamic;
	@:optional
	function getAt(?index:Float):Ext.IComponent;
	@:optional
	function getAutoDestroy():Bool;
	@:optional
	function getComponent(?component:Dynamic):Ext.IComponent;
	@:optional
	function getControl():Dynamic;
	@:optional
	function getDefaultType():String;
	@:optional
	function getDefaults():Dynamic;
	@:optional
	function getDockedComponent(?component:Dynamic):Dynamic;
	@:optional
	function getDockedItems():Array<Dynamic>;
	@:optional
	function getHideOnMaskTap():Bool;
	@:optional
	function getInnerItems():Array<Dynamic>;
	@:optional
	function getItems():Dynamic;
	@:optional
	function getMasked():Dynamic;
	@:optional
	function getModal():Bool;
	@:optional
	function getScrollable():Ext.scroll.IView;
	@:optional
	function insert(?index:Float, ?item:Dynamic):Void;
	@:optional
	function mask(?mask:Dynamic):Void;
	@:optional
	function query(?selector:String):Array<Dynamic>;
	@:optional
	function remove(?item:Dynamic, ?destroy:Bool):Ext.IComponent;
	@:optional
	function removeAll(?destroy:Bool, ?everything:Bool):Ext.IComponent;
	@:optional
	function removeAt(?index:Float):Ext.IContainer;
	@:optional
	function removeDocked(?item:Dynamic, ?destroy:Bool):Ext.IComponent;
	@:optional
	function removeInnerAt(?index:Float):Ext.IContainer;
	@:optional
	function setActiveItem(?activeItem:Dynamic):Void;
	@:optional
	function setAutoDestroy(?autoDestroy:Bool):Void;
	@:optional
	function setControl(?control:Dynamic):Void;
	@:optional
	function setDefaultType(?defaultType:String):Void;
	@:optional
	function setDefaults(?defaults:Dynamic):Void;
	@:optional
	function setHideOnMaskTap(?hideOnMaskTap:Bool):Void;
	@:optional
	function setItems(?items:Dynamic):Void;
	@:optional
	function setLayout(?layout:Dynamic):Void;
	@:optional
	function setMasked(?masked:Dynamic):Void;
	@:optional
	function setModal(?modal:Bool):Void;
	@:optional
	function setScrollable(?scrollable:Dynamic):Void;
	@:optional
	function unmask():Void;
};
typedef IPanel = {
	>Ext.IContainer,
	@:optional
	var baseCls : String;
	@:optional
	var bodyBorder : Dynamic;
	@:optional
	var bodyMargin : Dynamic;
	@:optional
	var bodyPadding : Dynamic;
	@:optional
	function getBaseCls():String;
	@:optional
	function getBodyBorder():Dynamic;
	@:optional
	function getBodyMargin():Dynamic;
	@:optional
	function getBodyPadding():Dynamic;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setBodyBorder(?bodyBorder:Dynamic):Void;
	@:optional
	function setBodyMargin(?bodyMargin:Dynamic):Void;
	@:optional
	function setBodyPadding(?bodyPadding:Dynamic):Void;
};
