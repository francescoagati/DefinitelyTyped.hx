extern class DockManager {
	var context : DockManagerContext;
	function new(element:HTMLDivElement):Void;
	function initialize():Void;
	function rebuildLayout(node:DockNode):Void;
	function invalidate():Void;
	function resize(width:Float, height:Float):Void;
	function setModel(model:DockModel):Void;
	function setRootNode(node:DockNode):Void;
	function dockDialogLeft(referenceNode:DockNode, dialog:Dialog):DockNode;
	function dockDialogRight(referenceNode:DockNode, dialog:Dialog):DockNode;
	function dockDialogUp(referenceNode:DockNode, dialog:Dialog):DockNode;
	function dockDialogDown(referenceNode:DockNode, dialog:Dialog):DockNode;
	function dockDialogFill(referenceNode:DockNode, container:PanelContainer):DockNode;
	function dockLeft(referenceNode:DockNode, container:PanelContainer, ratio:Float):DockNode;
	function dockRight(referenceNode:DockNode, container:PanelContainer, ratio:Float):DockNode;
	function dockUp(referenceNode:DockNode, container:PanelContainer, ratio:Float):DockNode;
	function dockDown(referenceNode:DockNode, container:PanelContainer, ratio:Float):DockNode;
	function dockFill(referenceNode:DockNode, container:PanelContainer):DockNode;
	function suspendLayout():Void;
	function resumeLayout():Void;
	function saveState():String;
	function loadState(state:String):Void;
}
extern class DockManagerContext {
	var dockManager : DockManager;
	var model : DockModel;
	var documentManagerView : DocumentManagerContainer;
	function new(dockManager:DockManager):Void;
}
extern class DockModel {
	var rootNode : DockNode;
	var documentManagerNode : DockNode;
}
extern class DockNode {
	function new(container:PanelContainer):Void;
	function detachFromParent():Void;
}
extern class TabHost {
	var tabStripDirection : TabStripDirection;
	var displayCloseButton : Bool;
	var pages : Array<TabPage>;
	var hostElement : HTMLDivElement;
	var tabListElement : HTMLDivElement;
	var separatorElement : HTMLDivElement;
	var contentElement : HTMLDivElement;
	function new(?tabStripDirection:TabStripDirection, ?displayCloseButton:Bool):Void;
	function setActiveTab(container:PanelContainer):Void;
	function onTabPageSelected(page:TabPage):Void;
	function resize(width:Float, height:Float):Void;
}
extern class TabPage {
	function new(host:TabHost, container:PanelContainer):Void;
}
@:enum abstract TabStripDirection(Int) {
	var DIRECTION_TOP = 0;
	var DIRECTION_BOTTOM = 1;
	var DIRECTION_LEFT = 2;
	var DIRECTION_RIGHT = 3;
}
extern class FillDockContainer {
	var tabOrientation : TabStripDirection;
	var element : HTMLDivElement;
	var tabHost : TabHost;
	var dockManager : DockManager;
	var name : String;
	var containerType : String;
	var minimumAllowedChildNodes : Float;
	function new(dockManager:DockManager, ?tabStripDirection:TabStripDirection):Void;
}
extern class DocumentManagerContainer extends FillDockContainer {
	var selectedTab : TabPage;
	function new(dockManager:DockManager):Void;
	function saveState(state:String):Void;
}
extern class PanelContainer {
	var width : Float;
	var height : Float;
	function new(element:HTMLElement, dockManager:DockManager, ?title:String):Void;
	function setTitle(title:String):Void;
	function setTitleIcon(iconName:String):Void;
}
extern class Dialog {
	static function fromElement(id:String, dockManager:DockManager):Dialog;
	function new(panel:PanelContainer, dockManager:DockManager):Void;
	function setPosition(x:Float, y:Float):Void;
	function resize(width:Float, height:Float):Void;
	function setTitle(title:String):Void;
	function setTitleIcon(iconName:String):Void;
	function bringToFront():Void;
}
