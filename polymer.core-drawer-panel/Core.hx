typedef DrawerPanel = {
	>PolymerElement,
	>HTMLElement,
	var drawerWidth : String;
	var responsiveWidth : String;
	var selected : String;
	var defaultSelected : String;
	var narrow : Bool;
	var rightDrawer : Bool;
	var disableSwipe : Bool;
	var forceNarrow : Bool;
	var disableEdgeSwipe : Bool;
	function togglePanel():Void;
	function openDrawer():Void;
	function closeDrawer():Void;
};
