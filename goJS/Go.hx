extern class Adornment extends Part {
	function new(?type:EnumValue):Void;
	var adornedObject : GraphObject;
	var adornedPart : Part;
	var placeholder : Placeholder;
}
extern class CommandHandler {
	function new():Void;
	var archetypeGroupData : Dynamic;
	var copiesTree : Bool;
	var deletesTree : Bool;
	var diagram : Diagram;
	var memberValidation : Group -> Part -> Bool;
	var zoomFactor : Float;
	function addTopLevelParts(coll:Iterable, ?check:Bool):Bool;
	function canCollapseSubGraph(?group:Group):Bool;
	function canCollapseTree(?node:Node):Bool;
	function canCopySelection():Bool;
	function canCutSelection():Bool;
	function canDecreaseZoom(?factor:Float):Bool;
	function canDeleteSelection():Bool;
	function canEditTextBlock(?textblock:TextBlock):Bool;
	function canExpandSubGraph(?group:Group):Bool;
	function canExpandTree(?node:Node):Bool;
	function canGroupSelection():Bool;
	function canIncreaseZoom(?factor:Float):Bool;
	function canPasteSelection():Bool;
	function canRedo():Bool;
	function canResetZoom(?newscale:Float):Bool;
	function canSelectAll():Bool;
	function canStopCommand():Bool;
	function canUndo():Bool;
	function canUngroupSelection(?group:Group):Bool;
	function canZoomToFit():Bool;
	function collapseSubGraph(?group:Group):Dynamic;
	function collapseTree(?node:Node):Dynamic;
	function copySelection():Dynamic;
	function copyToClipboard(coll:Iterable):Dynamic;
	function cutSelection():Dynamic;
	function decreaseZoom(?factor:Float):Dynamic;
	function deleteSelection():Dynamic;
	function doKeyDown():Dynamic;
	function doKeyUp():Dynamic;
	function editTextBlock(?textblock:TextBlock):Dynamic;
	function expandSubGraph(?group:Group):Dynamic;
	function expandTree(?node:Node):Dynamic;
	function groupSelection():Dynamic;
	function increaseZoom(?factor:Number):Dynamic;
	function isValidMember(group:Group, part:Part):Bool;
	function pasteFromClipboard():Set;
	function pasteSelection(?pos:Point):Dynamic;
	function redo():Dynamic;
	function resetZoom(?newscale:Float):Dynamic;
	function selectAll():Dynamic;
	function stopCommand():Dynamic;
	function undo():Dynamic;
	function ungroupSelection(?group:Group):Dynamic;
	function zoomToFit():Dynamic;
}
extern class Diagram {
	@:overload(function(?div:String):Void { })
	function new(div:HTMLDivElement):Void;
	var allowClipboard : Bool;
	var allowCopy : Bool;
	var allowDelete : Bool;
	var allowDragOut : Bool;
	var allowDrop : Bool;
	var allowGroup : Bool;
	var allowHorizontalScroll : Bool;
	var allowInsert : Bool;
	var allowLink : Bool;
	var allowMove : Bool;
	var allowRelink : Bool;
	var allowReshape : Bool;
	var allowResize : Bool;
	var allowRotate : Bool;
	var allowSelect : Bool;
	var allowTextEdit : Bool;
	var allowUndo : Bool;
	var allowUngroup : Bool;
	var allowVerticalScroll : Bool;
	var allowZoom : Bool;
	var autoScale : EnumValue;
	var autoScrollRegion : Dynamic;
	var click : InputEvent -> Void;
	var commandHandler : CommandHandler;
	var contentAlignment : Spot;
	var contextClick : InputEvent -> Void;
	var contextMenu : Adornment;
	var currentCursor : String;
	var currentTool : Tool;
	var defaultCursor : String;
	var defaultTool : Tool;
	var div : HTMLDivElement;
	var documentBounds : Rect;
	var doubleClick : InputEvent -> Void;
	var firstInput : InputEvent;
	var fixedBounds : Rect;
	var grid : Panel;
	var groupSelectionAdornmentTemplate : Adornment;
	var groupTemplate : Group;
	var groupTemplateMap : Map;
	var hasHorizontalScrollbar : Bool;
	var hasVerticalScrollbar : Bool;
	var initialAutoScale : EnumValue;
	var initialContentAlignment : Spot;
	var initialDocumentSpot : Spot;
	var initialPosition : Point;
	var initialScale : Float;
	var initialViewportSpot : Spot;
	var isEnabled : Bool;
	var isModelReadOnly : Bool;
	var isModified : Bool;
	var isMouseCaptured : Bool;
	var isReadOnly : Bool;
	var isTreePathToChildren : Bool;
	var lastInput : InputEvent;
	var layers : Iterator;
	var layout : Layout;
	var links : Iterator;
	var linkSelectionAdornmentTemplate : Adornment;
	var linkTemplate : Link;
	var linkTemplateMap : Map;
	var maxScale : Float;
	var maxSelectionCount : Float;
	var minScale : Float;
	var model : Model;
	var mouseDragOver : InputEvent -> Void;
	var mouseDrop : InputEvent -> Void;
	var mouseHold : InputEvent -> Void;
	var mouseHover : InputEvent -> Void;
	var mouseOver : InputEvent -> Void;
	var nodes : Iterator;
	var nodeSelectionAdornmentTemplate : Adornment;
	var nodeTemplate : Part;
	var nodeTemplateMap : Map;
	var padding : Dynamic;
	var parts : Iterator;
	var position : Point;
	var scale : Float;
	var scrollHorizontalLineChange : Float;
	var scrollVerticalLineChange : Float;
	var selection : Set;
	var skipsUndoManager : Bool;
	var toolManager : ToolManager;
	var toolTip : Adornment;
	var undoManager : UndoManager;
	var validCycle : EnumValue;
	var viewportBounds : Rect;
	var zoomPoint : Point;
	function add(part:Part):Dynamic;
	function addChangedListener(listener:ChangedEvent -> Void):Dynamic;
	function addDiagramListener(name:String, listener:DiagramEvent -> Void):Dynamic;
	function addLayer(layer:Layer):Dynamic;
	function addLayerAfter(layer:Layer, existingLayer:Layer):Dynamic;
	function addLayerBefore(layer:Layer, existingLayer:Layer):Dynamic;
	function alignDocument(documentspot:Spot, viewportspot:Spot):Dynamic;
	function centerRect(r:Rect):Dynamic;
	function clear():Dynamic;
	function clearSelection():Dynamic;
	function commitTransaction(tname:String):Bool;
	function computeBounds():Rect;
	function computePartsBounds(coll:Iterable):Rect;
	function delayInitialization(?func:Void -> Void):Dynamic;
	function findLayer(name:String):Layer;
	function findLinkForData(linkdata:Dynamic):Link;
	function findNodeForData(nodedata:Dynamic):Node;
	function findNodeForKey(key:Dynamic):Node;
	function findObjectAt(p:Point, ?navig:GraphObject -> GraphObject, ?pred:GraphObject -> Bool):GraphObject;
	@:overload(function(p:Point, ?navig:GraphObject -> GraphObject, ?pred:GraphObject -> Bool, ?coll:Set):Iterable { })
	function findObjectsAt(p:Point, ?navig:GraphObject -> GraphObject, ?pred:GraphObject -> Bool, ?coll:List):Iterable;
	@:overload(function(r:Rect, ?navig:GraphObject -> GraphObject, ?pred:GraphObject -> Bool, ?partialInclusion:Bool, ?coll:Set):Iterable { })
	function findObjectsIn(r:Rect, ?navig:GraphObject -> GraphObject, ?pred:GraphObject -> Bool, ?partialInclusion:Bool, ?coll:List):Iterable;
	@:overload(function(p:Point, dist:Float, ?navig:GraphObject -> GraphObject, ?pred:GraphObject -> Bool, ?partialInclusion:Bool, ?coll:Set):Iterable { })
	function findObjectsNear(p:Point, dist:Float, ?navig:GraphObject -> GraphObject, ?pred:GraphObject -> Bool, ?partialInclusion:Bool, ?coll:List):Iterable;
	function findPartAt(p:Point, selectable:Bool):Part;
	function findPartForData(data:Dynamic):Part;
	function findPartForKey(key:Dynamic):Part;
	function findTopLevelGroups():Iterator;
	function findTreeRoots():Iterator;
	function focus():Dynamic;
	static function fromDiv(div:HTMLDivElement):Diagram;
	static function inherit(derivedclass:Dynamic, baseclass:Dynamic):Dynamic;
	function layoutDiagram(?invalidateAll:Bool):Dynamic;
	function makeImage(?properties:Dynamic):HTMLImageElement;
	function makeImageData(?properties:Dynamic):String;
	function rebuildParts():Dynamic;
	function remove(part:Part):Dynamic;
	function removeChangedListener(listener:ChangedEvent -> Void):Dynamic;
	function removeDiagramListener(name:String, listener:DiagramEvent -> Void):Dynamic;
	function removeLayer(layer:Layer):Dynamic;
	function rollbackTransaction():Bool;
	function scroll(unit:String, dir:String, ?dist:Float):Dynamic;
	function scrollToRect(r:Rect):Dynamic;
	function select(part:Part):Dynamic;
	function selectCollection(coll:Iterable):Dynamic;
	function startTransaction(?tname:String):Bool;
	function transformDocToView(p:Point):Point;
	function transformViewToDoc(p:Point):Point;
	function updateAllTargetBindings():Dynamic;
	function zoomToFit():Dynamic;
	function zoomToRect(r:Rect, ?scaling:EnumValue):Dynamic;
	static var CycleAll : EnumValue;
	static var CycleDestinationTree : EnumValue;
	static var CycleNotDirected : EnumValue;
	static var CycleNotUndirected : EnumValue;
	static var CycleSourceTree : EnumValue;
	static var None : EnumValue;
	static var Uniform : EnumValue;
	static var UniformToFill : EnumValue;
	function maybeUpdate():Dynamic;
	function requestUpdate():Dynamic;
}
extern class DiagramEvent {
	function new():Void;
	var cancel : Bool;
	var diagram : Diagram;
	var name : String;
	var parameter : Dynamic;
	var subject : Dynamic;
}
extern class GraphObject {
	function new():Void;
	var actionCancel : InputEvent -> GraphObject -> Void;
	var actionDown : InputEvent -> GraphObject -> Void;
	var actionMove : InputEvent -> GraphObject -> Void;
	var actionUp : InputEvent -> GraphObject -> Void;
	var actualBounds : Rect;
	var alignment : Spot;
	var alignmentFocus : Spot;
	var angle : Float;
	var areaBackground : Dynamic;
	var background : Dynamic;
	var click : InputEvent -> GraphObject -> Void;
	var column : Float;
	var columnSpan : Float;
	var contextClick : InputEvent -> GraphObject -> Void;
	var contextMenu : Adornment;
	var cursor : String;
	var desiredSize : Size;
	var diagram : Diagram;
	var doubleClick : InputEvent -> GraphObject -> Void;
	var fromEndSegmentDirection : EnumValue;
	var fromEndSegmentLength : Float;
	var fromLinkable : Dynamic;
	var fromLinkableDuplicates : Bool;
	var fromLinkableSelfNode : Bool;
	var fromMaxLinks : Float;
	var fromShortLength : Float;
	var fromSpot : Spot;
	var height : Float;
	var isActionable : Bool;
	var isPanelMain : Bool;
	var layer : Layer;
	var margin : Dynamic;
	var maxSize : Size;
	var measuredBounds : Rect;
	var minSize : Size;
	var mouseDragEnter : InputEvent -> GraphObject -> GraphObject -> Void;
	var mouseDragLeave : InputEvent -> GraphObject -> GraphObject -> Void;
	var mouseDrop : InputEvent -> GraphObject -> Void;
	var mouseEnter : InputEvent -> GraphObject -> GraphObject -> Void;
	var mouseHold : InputEvent -> GraphObject -> Void;
	var mouseHover : InputEvent -> GraphObject -> Void;
	var mouseLeave : InputEvent -> GraphObject -> GraphObject -> Void;
	var mouseOver : InputEvent -> GraphObject -> Void;
	var name : String;
	var naturalBounds : Rect;
	var panel : Panel;
	var part : Part;
	var pickable : Bool;
	var portId : String;
	var position : Point;
	var row : Float;
	var rowSpan : Float;
	var scale : Float;
	var segmentFraction : Float;
	var segmentIndex : Float;
	var segmentOffset : Point;
	var segmentOrientation : EnumValue;
	var stretch : EnumValue;
	var toEndSegmentDirection : EnumValue;
	var toEndSegmentLength : Float;
	var toLinkable : Dynamic;
	var toLinkableDuplicates : Bool;
	var toLinkableSelfNode : Bool;
	var toMaxLinks : Float;
	var toolTip : Adornment;
	var toShortLength : Float;
	var toSpot : Spot;
	var visible : Bool;
	var width : Float;
	function bind(binding:Binding):Dynamic;
	function copy():GraphObject;
	function getDocumentAngle():Float;
	function getDocumentPoint(s:Spot, ?result:Point):Point;
	function getDocumentScale():Float;
	function getLocalPoint(p:Point, ?result:Point):Point;
	function isContainedBy(panel:GraphObject):Bool;
	function isVisibleObject():Bool;
	static function make(type:Dynamic, initializers:haxe.extern.Rest<Dynamic>):Dynamic;
	static var Default : EnumValue;
	static var Fill : EnumValue;
	static var Horizontal : EnumValue;
	static var None : EnumValue;
	static var Uniform : EnumValue;
	static var UniformToFill : EnumValue;
	static var Vertical : EnumValue;
}
extern class Group extends Node {
	function new(?type:EnumValue):Void;
	var computesBoundsAfterDrag : Bool;
	var isSubGraphExpanded : Bool;
	var layout : Layout;
	var memberAdded : Group -> Part -> Void;
	var memberParts : Iterator;
	var memberRemoved : Group -> Part -> Void;
	var memberValidation : Group -> Part -> Bool;
	var placeholder : Placeholder;
	var subGraphExpandedChanged : Group -> Void;
	var ungroupable : Bool;
	var wasSubGraphExpanded : Bool;
	function addMembers(coll:Iterable, ?check:Bool):Bool;
	function canAddMembers(coll:Iterable):Bool;
	function canUngroup():Bool;
	function collapseSubGraph():Dynamic;
	function expandSubGraph():Dynamic;
	function findSubGraphParts():Set;
	function move(newpos:Point):Dynamic;
}
extern class InputEvent {
	function new():Void;
	var alt : Bool;
	var bubbles : Bool;
	var button : Float;
	var clickCount : Float;
	var control : Bool;
	var delta : Float;
	var diagram : Diagram;
	var documentPoint : Point;
	var down : Bool;
	var event : Event;
	var handled : Bool;
	var key : String;
	var left : Bool;
	var meta : Bool;
	var middle : Bool;
	var modifiers : Float;
	var right : Bool;
	var shift : Bool;
	var targetDiagram : Diagram;
	var targetObject : GraphObject;
	var timestamp : Float;
	var up : Bool;
	var viewPoint : Point;
	function copy():InputEvent;
}
extern class Layer {
	function new():Void;
	var allowCopy : Bool;
	var allowDelete : Bool;
	var allowGroup : Bool;
	var allowLink : Bool;
	var allowMove : Bool;
	var allowRelink : Bool;
	var allowReshape : Bool;
	var allowResize : Bool;
	var allowRotate : Bool;
	var allowSelect : Bool;
	var allowTextEdit : Bool;
	var allowUngroup : Bool;
	var diagram : Diagram;
	var isTemporary : Bool;
	var name : String;
	var opacity : Float;
	var parts : Iterator;
	var partsBackwards : Iterator;
	var pickable : Bool;
	var visible : Bool;
	function findObjectAt(p:Point, ?navig:GraphObject -> GraphObject, ?pred:GraphObject -> Bool):GraphObject;
	@:overload(function(p:Point, ?navig:GraphObject -> GraphObject, ?pred:GraphObject -> Bool, ?coll:Set):Iterable { })
	function findObjectsAt(p:Point, ?navig:GraphObject -> GraphObject, ?pred:GraphObject -> Bool, ?coll:List):Iterable;
	@:overload(function(r:Rect, ?navig:GraphObject -> GraphObject, ?pred:GraphObject -> Bool, ?partialInclusion:Bool, ?coll:Set):Iterable { })
	function findObjectsIn(r:Rect, ?navig:GraphObject -> GraphObject, ?pred:GraphObject -> Bool, ?partialInclusion:Bool, ?coll:List):Iterable;
	@:overload(function(p:Point, dist:Float, ?navig:GraphObject -> GraphObject, ?pred:GraphObject -> Bool, ?partialInclusion:Bool, ?coll:Set):Iterable { })
	function findObjectsNear(p:Point, dist:Float, ?navig:GraphObject -> GraphObject, ?pred:GraphObject -> Bool, ?partialInclusion:Bool, ?coll:List):Iterable;
}
extern class Link extends Part {
	function new():Void;
	var adjusting : EnumValue;
	var corner : Float;
	var curve : EnumValue;
	var curviness : Float;
	var fromEndSegmentDirection : EnumValue;
	var fromEndSegmentLength : Float;
	var fromNode : Node;
	var fromPort : GraphObject;
	var fromPortChanged : Link -> GraphObject -> GraphObject -> Void;
	var fromPortId : String;
	var fromShortLength : Float;
	var fromSpot : Spot;
	var geometry : Geometry;
	var isLabeledLink : Bool;
	var isOrthogonal : Bool;
	var isTreeLink : Bool;
	var labelNodes : Iterator;
	var midAngle : Float;
	var midPoint : Point;
	var path : Shape;
	var points : List;
	var pointsCount : Float;
	var relinkableFrom : Bool;
	var relinkableTo : Bool;
	var resegmentable : Bool;
	var routing : EnumValue;
	var smoothness : Float;
	var toEndSegmentDirection : EnumValue;
	var toEndSegmentLength : Float;
	var toNode : Node;
	var toPort : GraphObject;
	var toPortChanged : Link -> GraphObject -> GraphObject -> Void;
	var toPortId : String;
	var toShortLength : Float;
	var toSpot : Spot;
	function canRelinkFrom():Bool;
	function canRelinkTo():Bool;
	function findClosestSegment(p:Point):Float;
	function getLinkDirection(node:Node, port:GraphObject, linkpoint:Point, spot:Spot, from:Bool, ortho:Bool, othernode:Node, otherport:GraphObject):Float;
	function getLinkPoint(node:Node, port:GraphObject, spot:Spot, from:Bool, ortho:Bool, othernode:Node, otherport:GraphObject, ?result:Point):Dynamic;
	function getLinkPointFromPoint(node:Node, port:GraphObject, focus:Point, p:Point, from:Bool, ?result:Point):Point;
	function getOtherNode(node:Node):Node;
	function getOtherPort(port:GraphObject):GraphObject;
	function getPoint(i:Float):Point;
	function move(newpos:Point):Dynamic;
	static var AvoidsNodes : EnumValue;
	static var Bezier : EnumValue;
	static var End : EnumValue;
	static var JumpGap : EnumValue;
	static var JumpOver : EnumValue;
	static var None : EnumValue;
	static var Normal : EnumValue;
	static var OrientAlong : EnumValue;
	static var OrientMinus90 : EnumValue;
	static var OrientMinus90Upright : EnumValue;
	static var OrientOpposite : EnumValue;
	static var OrientPlus90 : EnumValue;
	static var OrientPlus90Upright : EnumValue;
	static var OrientUpright : EnumValue;
	static var OrientUpright45 : EnumValue;
	static var Orthogonal : EnumValue;
	static var Scale : EnumValue;
	static var Stretch : EnumValue;
}
extern class Node extends Part {
	function new(?type:EnumValue):Void;
	var avoidable : Bool;
	var avoidableMargin : Dynamic;
	var isLinkLabel : Bool;
	var isTreeExpanded : Bool;
	var isTreeLeaf : Bool;
	var labeledLink : Link;
	var linkConnected : Node -> Link -> GraphObject -> Void;
	var linkDisconnected : Node -> Link -> GraphObject -> Void;
	var linksConnected : Iterator;
	var port : GraphObject;
	var ports : Iterator;
	var treeExpandedChanged : Node -> Void;
	var wasTreeExpanded : Bool;
	function collapseTree(?level:Float):Dynamic;
	function expandTree(?level:Float):Dynamic;
	function findLinksBetween(othernode:Node, ?pid:String, ?otherpid:String):Iterator;
	function findLinksConnected(?pid:String):Iterator;
	function findLinksInto(?pid:String):Iterator;
	function findLinksOutOf(?pid:String):Iterator;
	function findLinksTo(othernode:Node, ?pid:String, ?otherpid:String):Iterator;
	function findNodesConnected(?pid:String):Iterator;
	function findNodesInto(?pid:String):Iterator;
	function findNodesOutOf(?pid:String):Iterator;
	function findPort(pid:String):GraphObject;
	function findTreeChildrenLinks():Iterator;
	function findTreeChildrenNodes():Iterator;
	function findTreeParentLink():Link;
	function findTreeParentNode():Node;
	function findTreeParts(?level:Float):Set;
	function findTreeRoot():Node;
	function isInTreeOf(node:Node):Bool;
	static var DirectionAbsolute : EnumValue;
	static var DirectionDefault : EnumValue;
	static var DirectionRotatedNode : EnumValue;
	static var DirectionRotatedNodeOrthogonal : EnumValue;
}
extern class Overview extends Diagram {
	@:overload(function(?id:String):Void { })
	function new(div:HTMLDivElement):Void;
	var box : Part;
	var drawsTemporaryLayers : Bool;
	var observed : Diagram;
}
extern class Palette extends Diagram {
	@:overload(function(?id:String):Void { })
	function new(div:HTMLDivElement):Void;
}
extern class Panel extends GraphObject {
	function new(?type:EnumValue):Void;
	var columnCount : Float;
	var columnSizing : EnumValue;
	var data : Dynamic;
	var defaultAlignment : Spot;
	var defaultColumnSeparatorDashArray : Array<Dynamic>;
	var defaultColumnSeparatorStroke : Dynamic;
	var defaultColumnSeparatorStrokeWidth : Float;
	var defaultRowSeparatorDashArray : Array<Dynamic>;
	var defaultRowSeparatorStroke : Dynamic;
	var defaultRowSeparatorStrokeWidth : Float;
	var defaultSeparatorPadding : Dynamic;
	var defaultStretch : EnumValue;
	var elements : Iterator;
	var gridCellSize : Size;
	var gridOrigin : Point;
	var itemArray : Array<Dynamic>;
	var itemCategoryProperty : Dynamic;
	var itemTemplate : Panel;
	var itemTemplateMap : Map;
	var leftIndex : Float;
	var opacity : Float;
	var padding : Dynamic;
	var rowCount : Float;
	var rowSizing : EnumValue;
	var topIndex : Float;
	var type : EnumValue;
	var viewboxStretch : EnumValue;
	function add(element:GraphObject):Dynamic;
	function copy():Panel;
	function elt(idx:Float):GraphObject;
	function findColumnForLocalX(x:Float):Float;
	function findObject(name:String):GraphObject;
	function findRowForLocalY(y:Float):Float;
	function getColumnDefinition(idx:Float):RowColumnDefinition;
	function getRowDefinition(idx:Float):RowColumnDefinition;
	function insertAt(index:Float, element:GraphObject):Dynamic;
	function rebuildItemElements():Dynamic;
	function remove(element:GraphObject):Dynamic;
	function removeAt(idx:Float):Dynamic;
	function removeColumnDefinition(idx:Float):Dynamic;
	function removeRowDefinition(idx:Float):Dynamic;
	function updateTargetBindings(?srcprop:String):Dynamic;
	static var Auto : EnumValue;
	static var Grid : EnumValue;
	static var Horizontal : EnumValue;
	static var Link : EnumValue;
	static var Position : EnumValue;
	static var Spot : EnumValue;
	static var Table : EnumValue;
	static var TableColumn : EnumValue;
	static var TableRow : EnumValue;
	static var Vertical : EnumValue;
	static var Viewbox : EnumValue;
}
extern class Part extends Panel {
	function new(?type:EnumValue):Void;
	var adornments : Iterator;
	var category : String;
	var containingGroup : Group;
	var containingGroupChanged : Part -> Group -> Group -> Void;
	var copyable : Bool;
	var deletable : Bool;
	var diagram : Diagram;
	var dragComputation : Part -> Point -> Point -> Point;
	var groupable : Bool;
	var isInDocumentBounds : Bool;
	var isLayoutPositioned : Bool;
	var isSelected : Bool;
	var isShadowed : Bool;
	var isTopLevel : Bool;
	var layer : Layer;
	var layerChanged : Part -> Layer -> Layer -> Void;
	var layerName : String;
	var layoutConditions : Float;
	var location : Point;
	var locationObject : GraphObject;
	var locationObjectName : String;
	var locationSpot : Spot;
	var maxLocation : Point;
	var minLocation : Point;
	var movable : Bool;
	var reshapable : Bool;
	var resizable : Bool;
	var resizeAdornmentTemplate : Adornment;
	var resizeCellSize : Size;
	var resizeObject : GraphObject;
	var resizeObjectName : String;
	var rotatable : Bool;
	var rotateAdornmentTemplate : Adornment;
	var rotateObject : GraphObject;
	var rotateObjectName : String;
	var selectable : Bool;
	var selectionAdorned : Bool;
	var selectionAdornmentTemplate : Adornment;
	var selectionChanged : Part -> Void;
	var selectionObject : GraphObject;
	var selectionObjectName : String;
	var shadowBlur : Float;
	var shadowColor : String;
	var shadowOffset : Point;
	var text : String;
	var textEditable : Bool;
	function addAdornment(category:String, ad:Adornment):Dynamic;
	function canCopy():Bool;
	function canDelete():Bool;
	function canEdit():Bool;
	function canGroup():Bool;
	function canLayout():Bool;
	function canMove():Bool;
	function canReshape():Bool;
	function canResize():Bool;
	function canRotate():Bool;
	function canSelect():Bool;
	function clearAdornments():Dynamic;
	function findAdornment(category:String):Adornment;
	function findCommonContainingGroup(other:Part):Group;
	function findTopLevelPart():Part;
	function invalidateLayout(?condition:Float):Dynamic;
	function isMemberOf(part:Part):Bool;
	function isVisible():Bool;
	function move(newpos:Point):Dynamic;
	function removeAdornment(category:String):Dynamic;
	function updateAdornments():Dynamic;
	function updateTargetBindings(?srcprop:String):Dynamic;
	static var LayoutAdded : Float;
	static var LayoutGroupLayout : Float;
	static var LayoutHidden : Float;
	static var LayoutNodeSized : Float;
	static var LayoutNone : Float;
	static var LayoutRemoved : Float;
	static var LayoutShown : Float;
	static var LayoutStandard : Float;
	function ensureBounds():Dynamic;
}
extern class Picture extends GraphObject {
	function new():Void;
	var element : HTMLElement;
	var errorFunction : Picture -> Event -> Void;
	var imageStretch : EnumValue;
	var naturalBounds : Rect;
	var source : String;
	var sourceRect : Rect;
}
extern class Placeholder extends GraphObject {
	function new():Void;
	var padding : Dynamic;
}
extern class RowColumnDefinition {
	function new():Void;
	var actual : Float;
	var alignment : Spot;
	var background : Dynamic;
	var coversSeparators : Bool;
	var height : Float;
	var index : Float;
	var isRow : Bool;
	var maximum : Float;
	var minimum : Float;
	var panel : Panel;
	var position : Float;
	var separatorDashArray : Array<Dynamic>;
	var separatorPadding : Dynamic;
	var separatorStroke : Dynamic;
	var separatorStrokeWidth : Float;
	var sizing : EnumValue;
	var stretch : EnumValue;
	var total : Float;
	var width : Float;
	function bind(binding:Binding):Dynamic;
	static var Default : EnumValue;
	static var None : EnumValue;
	static var ProportionalExtra : EnumValue;
}
extern class Shape extends GraphObject {
	function new():Void;
	var figure : String;
	var fill : Dynamic;
	var fromArrow : String;
	var geometry : Geometry;
	var geometryStretch : EnumValue;
	var geometryString : String;
	var interval : Float;
	var isGeometryPositioned : Bool;
	var naturalBounds : Rect;
	var parameter1 : Float;
	var parameter2 : Float;
	var spot1 : Spot;
	var spot2 : Spot;
	var stroke : Dynamic;
	var strokeCap : String;
	var strokeDashArray : Array<Dynamic>;
	var strokeDashOffset : Float;
	var strokeJoin : String;
	var strokeMiterLimit : Float;
	var strokeWidth : Float;
	var toArrow : String;
}
extern class TextBlock extends GraphObject {
	function new():Void;
	var editable : Bool;
	var errorFunction : TextEditingTool -> String -> String -> Void;
	var font : String;
	var isMultiline : Bool;
	var isStrikethrough : Bool;
	var isUnderline : Bool;
	var lineCount : Float;
	var naturalBounds : Rect;
	var stroke : Dynamic;
	var text : String;
	var textAlign : String;
	var textEditor : HTMLElement;
	var textValidation : TextBlock -> String -> String -> Bool;
	var wrap : EnumValue;
	static var None : EnumValue;
	static var WrapDesiredSize : EnumValue;
	static var WrapFit : EnumValue;
}
extern class Brush {
	@:overload(function(?color:String):Void { })
	function new(type:EnumValue):Void;
	var color : String;
	var colorStops : Map;
	var end : Spot;
	var endRadius : Float;
	var pattern : Dynamic;
	var start : Spot;
	var startRadius : Float;
	var type : EnumValue;
	function addColorStop(loc:Float, color:String):Dynamic;
	function copy():Brush;
	static function randomColor(?min:Float, ?max:Float):String;
	static var Linear : EnumValue;
	static var Pattern : EnumValue;
	static var Radial : EnumValue;
	static var Solid : EnumValue;
}
extern class Geometry {
	function new(?type:EnumValue):Void;
	var bounds : Rect;
	var endX : Float;
	var endY : Float;
	var figures : List;
	var spot1 : Spot;
	var spot2 : Spot;
	var startX : Float;
	var startY : Float;
	var type : EnumValue;
	function computeBoundsWithoutOrigin():Rect;
	function copy():Geometry;
	static function fillPath(str:String):String;
	function normalize():Point;
	function offset(x:Float, y:Float):Dynamic;
	static function parse(str:String, ?filled:Bool):Geometry;
	function rotate(angle:Float, ?x:Float, ?y:Float):Dynamic;
	function scale(x:Float, y:Float):Dynamic;
	static function stringify(val:Geometry):String;
	static var Ellipse : EnumValue;
	static var Line : EnumValue;
	static var Path : EnumValue;
	static var Rectangle : EnumValue;
}
extern class Margin {
	@:overload(function(m:Float):Void { })
	@:overload(function(tb:Float, rl:Float):Void { })
	@:overload(function(t:Float, r:Float, b:Float, l:Float):Void { })
	function new():Void;
	var bottom : Float;
	var left : Float;
	var right : Float;
	var top : Float;
	function copy():Margin;
	function equals(m:Margin):Bool;
	function equalTo(t:Float, r:Float, b:Float, l:Float):Bool;
	function isReal():Bool;
	static function parse(str:String):Margin;
	function set(m:Margin):Margin;
	function setTo(t:Float, r:Float, b:Float, l:Float):Margin;
	static function stringify(val:Margin):String;
}
extern class PathFigure {
	function new(?sx:Float, ?sy:Float, ?filled:Bool):Void;
	var isFilled : Bool;
	var isShadowed : Bool;
	var segments : List;
	var startX : Float;
	var startY : Float;
	function copy():PathFigure;
}
extern class PathSegment {
	function new(type:EnumValue, ?ex:Float, ?ey:Float, ?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float, ?clockwise:Bool):Void;
	var centerX : Float;
	var centerY : Float;
	var endX : Float;
	var endY : Float;
	var isClockwiseArc : Bool;
	var isClosed : Bool;
	var isLargeArc : Bool;
	var point1X : Float;
	var point1Y : Float;
	var point2X : Float;
	var point2Y : Float;
	var radiusX : Float;
	var radiusY : Float;
	var startAngle : Float;
	var sweepAngle : Float;
	var type : EnumValue;
	var xAxisRotation : Float;
	function close():PathSegment;
	function copy():PathSegment;
	static var Arc : EnumValue;
	static var Bezier : EnumValue;
	static var Line : EnumValue;
	static var Move : EnumValue;
	static var QuadraticBezier : EnumValue;
	static var SvgArc : EnumValue;
}
extern class Point {
	@:overload(function(x:Float, y:Float):Void { })
	function new():Void;
	var x : Float;
	var y : Float;
	function add(p:Point):Point;
	function copy():Point;
	@:overload(function(px:Float, py:Float):Float { })
	static function direction(px:Float, py:Float, qx:Float, qy:Float):Float;
	function directionPoint(p:Point):Float;
	static function distanceLineSegmentSquared(px:Float, py:Float, ax:Float, ay:Float, bx:Float, by:Float):Float;
	@:overload(function(px:Float, py:Float, qx:Float, qy:Float):Float { })
	function distanceSquared(px:Float, py:Float):Float;
	function distanceSquaredPoint(p:Point):Float;
	function equals(p:Point):Bool;
	function equalTo(x:Float, y:Float):Bool;
	function isReal():Bool;
	function normalize():Point;
	function offset(dx:Float, dy:Float):Point;
	static function parse(str:String):Point;
	function rotate(angle:Float):Point;
	function scale(sx:Float, sy:Float):Point;
	function set(p:Point):Point;
	function setRectSpot(r:Rect, spot:Spot):Point;
	function setSpot(x:Float, y:Float, w:Float, h:Float, spot:Spot):Point;
	function setTo(x:Float, y:Float):Point;
	static function stringify(val:Point):String;
	function subtract(p:Point):Point;
}
extern class Rect {
	@:overload(function(tl:Point, br:Point):Void { })
	@:overload(function(tl:Point, sz:Size):Void { })
	@:overload(function(x:Float, y:Float, w:Float, h:Float):Void { })
	function new():Void;
	var bottom : Float;
	var center : Point;
	var centerX : Float;
	var centerY : Float;
	var height : Float;
	var left : Float;
	var position : Point;
	var right : Float;
	var size : Size;
	var top : Float;
	var width : Float;
	var x : Float;
	var y : Float;
	function addMargin(m:Margin):Rect;
	@:overload(function(rx:Float, ry:Float, rw:Float, rh:Float, x:Float, y:Float, ?w:Float, ?h:Float):Bool { })
	function contains(x:Float, y:Float, ?w:Float, ?h:Float):Bool;
	function containsPoint(p:Point):Bool;
	function containsRect(r:Rect):Bool;
	function copy():Rect;
	function equals(r:Rect):Bool;
	function equalTo(x:Float, y:Float, w:Float, h:Float):Bool;
	function grow(t:Float, r:Float, b:Float, l:Float):Rect;
	function inflate(w:Float, h:Float):Rect;
	function intersect(x:Float, y:Float, w:Float, h:Float):Rect;
	function intersectRect(r:Rect):Rect;
	@:overload(function(x:Float, y:Float, w:Float, h:Float):Bool { })
	static function intersects(rx:Float, ry:Float, rw:Float, rh:Float, x:Float, y:Float, w:Float, h:Float):Bool;
	function intersectsRect(r:Rect):Bool;
	function isEmpty():Bool;
	function isReal():Bool;
	function offset(dx:Float, dy:Float):Rect;
	static function parse(str:String):Rect;
	function set(r:Rect):Rect;
	function setPoint(p:Point):Rect;
	function setSize(s:Size):Rect;
	function setSpot(x:Float, y:Float, spot:Spot):Rect;
	function setTo(x:Float, y:Float, w:Float, h:Float):Rect;
	static function stringify(val:Rect):String;
	function subtractMargin(m:Margin):Rect;
	function union(x:Float, y:Float, ?w:Float, ?h:Float):Rect;
	function unionPoint(p:Point):Rect;
	function unionRect(r:Rect):Rect;
}
extern class Size {
	@:overload(function(w:Float, h:Float):Void { })
	function new():Void;
	var height : Float;
	var width : Float;
	function copy():Size;
	function equals(s:Size):Bool;
	function equalTo(w:Float, h:Float):Bool;
	function isReal():Bool;
	static function parse(str:String):Size;
	function set(s:Size):Size;
	function setTo(w:Float, h:Float):Size;
	static function stringify(val:Size):String;
}
extern class Spot {
	@:overload(function(x:Float, y:Float):Void { })
	@:overload(function(x:Float, y:Float, offx:Float, offy:Float):Void { })
	function new():Void;
	var offsetX : Float;
	var offsetY : Float;
	var x : Float;
	var y : Float;
	function copy():Spot;
	function equals(spot:Spot):Bool;
	function includesSide(side:Spot):Bool;
	function isDefault():Bool;
	function isNoSpot():Bool;
	function isSide():Bool;
	function isSpot():Bool;
	function opposite():Spot;
	static function parse(str:String):Spot;
	function set(s:Spot):Spot;
	function setTo(x:Float, y:Float, offx:Float, offy:Float):Spot;
	static function stringify(val:Spot):String;
	static var AllSides : Spot;
	static var Bottom : Spot;
	static var BottomCenter : Spot;
	static var BottomLeft : Spot;
	static var BottomLeftSides : Spot;
	static var BottomRight : Spot;
	static var BottomRightSides : Spot;
	static var BottomSide : Spot;
	static var Center : Spot;
	static var Default : Spot;
	static var Left : Spot;
	static var LeftCenter : Spot;
	static var LeftRightSides : Spot;
	static var LeftSide : Spot;
	static var MiddleBottom : Spot;
	static var MiddleLeft : Spot;
	static var MiddleRight : Spot;
	static var MiddleTop : Spot;
	static var None : Spot;
	static var NotBottomSide : Spot;
	static var NotLeftSide : Spot;
	static var NotRightSide : Spot;
	static var NotTopSide : Spot;
	static var Right : Spot;
	static var RightCenter : Spot;
	static var RightSide : Spot;
	static var Top : Spot;
	static var TopBottomSides : Spot;
	static var TopCenter : Spot;
	static var TopLeft : Spot;
	static var TopLeftSides : Spot;
	static var TopRight : Spot;
	static var TopRightSides : Spot;
	static var TopSide : Spot;
}
extern class Binding {
	function new(?targetprop:String, ?sourceprop:String, ?conv:Dynamic -> ?Dynamic -> Dynamic):Void;
	var backConverter : Dynamic -> ?Dynamic -> Dynamic;
	var converter : Dynamic -> ?Dynamic -> Dynamic;
	var mode : EnumValue;
	var sourceName : String;
	var sourceProperty : String;
	var targetProperty : String;
	function makeTwoWay(?backconv:Dynamic -> ?Dynamic -> Dynamic):Binding;
	function ofObject(?srcname:String):Binding;
	static function parseEnum(ctor:Dynamic, defval:EnumValue):String -> EnumValue;
	static function toString(val:Dynamic):String;
	static var OneWay : EnumValue;
	static var TwoWay : EnumValue;
}
extern class ChangedEvent {
	function new():Void;
	var change : EnumValue;
	var diagram : Diagram;
	var model : Model;
	var modelChange : String;
	var newParam : Dynamic;
	var newValue : Dynamic;
	var object : Dynamic;
	var oldParam : Dynamic;
	var oldValue : Dynamic;
	var propertyName : Dynamic;
	function canRedo():Bool;
	function canUndo():Bool;
	function clear():Dynamic;
	function copy():ChangedEvent;
	function getParam(undo:Bool):Dynamic;
	function getValue(undo:Bool):Dynamic;
	function redo():Dynamic;
	function undo():Dynamic;
	static var Insert : EnumValue;
	static var Property : EnumValue;
	static var Remove : EnumValue;
	static var Transaction : EnumValue;
}
extern class GraphLinksModel extends Model {
	function new(?nodedataarray:Array<Dynamic>, ?linkdataarray:Array<Dynamic>):Void;
	var archetypeNodeData : Dynamic;
	var copyLinkDataFunction : Dynamic -> GraphLinksModel -> Dynamic;
	var linkCategoryProperty : Dynamic;
	var linkDataArray : Array<Dynamic>;
	var linkFromKeyProperty : Dynamic;
	var linkFromPortIdProperty : Dynamic;
	var linkLabelKeysProperty : Dynamic;
	var linkToKeyProperty : Dynamic;
	var linkToPortIdProperty : Dynamic;
	var nodeGroupKeyProperty : Dynamic;
	var nodeIsGroupProperty : Dynamic;
	var nodeIsLinkLabelProperty : Dynamic;
	function addLabelKeyForLinkData(linkdata:Dynamic, key:Dynamic):Dynamic;
	function addLinkData(linkdata:Dynamic):Dynamic;
	function containsLinkData(linkdata:Dynamic):Bool;
	function copyLinkData(linkdata:Dynamic):Dynamic;
	function getCategoryForLinkData(linkdata:Dynamic):String;
	function getFromKeyForLinkData(linkdata:Dynamic):Dynamic;
	function getFromPortIdForLinkData(linkdata:Dynamic):String;
	function getGroupKeyForNodeData(nodedata:Dynamic):Dynamic;
	function getLabelKeysForLinkData(linkdata:Dynamic):Array<Dynamic>;
	function getToKeyForLinkData(linkdata:Dynamic):Dynamic;
	function getToPortIdForLinkData(linkdata:Dynamic):String;
	function isGroupForNodeData(nodedata:Dynamic):Bool;
	function isLinkLabelForNodeData(nodedata:Dynamic):Bool;
	function removeLabelKeyForLinkData(linkdata:Dynamic, key:Dynamic):Dynamic;
	function removeLinkData(linkdata:Dynamic):Dynamic;
	function setCategoryForLinkData(linkdata:Dynamic, cat:String):Dynamic;
	function setFromKeyForLinkData(linkdata:Dynamic, key:Dynamic):Dynamic;
	function setFromPortIdForLinkData(linkdata:Dynamic, portname:String):Dynamic;
	function setGroupKeyForNodeData(nodedata:Dynamic, key:Dynamic):Dynamic;
	function setLabelKeysForLinkData(linkdata:Dynamic, arr:Array<Dynamic>):Dynamic;
	function setToKeyForLinkData(linkdata:Dynamic, key:Dynamic):Dynamic;
	function setToPortIdForLinkData(linkdata:Dynamic, portname:String):Dynamic;
}
extern class Model {
	function new(?nodedataarray:Array<Dynamic>):Void;
	var copyNodeDataFunction : Dynamic -> Model -> Dynamic;
	var dataFormat : String;
	var isReadOnly : Bool;
	var makeUniqueKeyFunction : Model -> Dynamic -> Dynamic;
	var name : String;
	var nodeCategoryProperty : Dynamic;
	var nodeDataArray : Array<Dynamic>;
	var nodeKeyProperty : Dynamic;
	var skipsUndoManager : Bool;
	var undoManager : UndoManager;
	function addArrayItem(arr:Array<Dynamic>, val:Dynamic):Dynamic;
	function addChangedListener(listener:ChangedEvent -> Void):Dynamic;
	function addNodeData(nodedata:Dynamic):Dynamic;
	function clear():Dynamic;
	function commitTransaction(tname:String):Bool;
	function containsNodeData(nodedata:Dynamic):Bool;
	function copyNodeData(nodedata:Dynamic):Dynamic;
	function findNodeDataForKey(key:Dynamic):Dynamic;
	static function fromJson(s:Dynamic, ?model:Model):Model;
	function getCategoryForNodeData(nodedata:Dynamic):String;
	function getKeyForNodeData(nodedata:Dynamic):Dynamic;
	function insertArrayItem(arr:Array<Dynamic>, idx:Float, val:Dynamic):Dynamic;
	function makeNodeDataKeyUnique(nodedata:Dynamic):Dynamic;
	function raiseChangedEvent(change:EnumValue, propertyname:Dynamic, obj:Dynamic, oldval:Dynamic, newval:Dynamic, ?oldparam:Dynamic, ?newparam:Dynamic):Dynamic;
	function raiseDataChanged(data:Dynamic, propertyname:Dynamic, oldval:Dynamic, newval:Dynamic, ?oldparam:Dynamic, ?newparam:Dynamic):Dynamic;
	function removeArrayItem(arr:Array<Dynamic>, ?idx:Float):Dynamic;
	function removeChangedListener(listener:ChangedEvent -> Void):Dynamic;
	function removeNodeData(nodedata:Dynamic):Dynamic;
	function rollbackTransaction():Bool;
	function setCategoryForNodeData(nodedata:Dynamic, cat:String):Dynamic;
	function setDataProperty(data:Dynamic, propname:String, val:Dynamic):Dynamic;
	function setKeyForNodeData(nodedata:Dynamic, key:Dynamic):Dynamic;
	function startTransaction(?tname:String):Bool;
	function toJson(?classname:String):String;
	function updateTargetBindings(data:Dynamic, ?srcpropname:String):Dynamic;
}
extern class Transaction {
	function new():Void;
	var changes : List;
	var isComplete : Bool;
	var name : String;
	function canRedo():Bool;
	function canUndo():Bool;
	function clear():Dynamic;
	function redo():Dynamic;
	function undo():Dynamic;
}
extern class TreeModel extends Model {
	function new(?nodedataarray:Array<Dynamic>):Void;
	var nodeParentKeyProperty : Dynamic;
	var parentLinkCategoryProperty : Dynamic;
	function getParentKeyForNodeData(nodedata:Dynamic):Dynamic;
	function getParentLinkCategoryForNodeData(childdata:Dynamic):String;
	function setParentKeyForNodeData(nodedata:Dynamic, key:Dynamic):Dynamic;
	function setParentLinkCategoryForNodeData(childdata:Dynamic, cat:String):Dynamic;
}
extern class UndoManager {
	function new():Void;
	var currentTransaction : Transaction;
	var history : List;
	var hisotryIndex : Float;
	var isEnabled : Bool;
	var isInTransaction : Bool;
	var isUndoingRedoing : Bool;
	var maxHistoryLength : Float;
	var models : Iterator;
	var nestedTransactionNames : List;
	var transactionLevel : Float;
	var transactionToRedo : Transaction;
	var transactionToUndo : Transaction;
	function addModel(model:Model):Dynamic;
	function canRedo():Bool;
	function canUndo():Bool;
	function clear():Dynamic;
	function commitTransaction(tname:String):Bool;
	function handleChanged(e:ChangedEvent):Dynamic;
	function redo():Dynamic;
	function removeModel(model:Model):Dynamic;
	function rollbackTransaction():Bool;
	function skipsEvent(e:ChangedEvent):Bool;
	function startTransaction(?tname:String):Bool;
	function undo():Dynamic;
}
extern class CircularLayout extends Layout {
	function new():Void;
	var actualCenter : Point;
	var actualSpacing : Float;
	var actualXRadius : Float;
	var actualYRadius : Float;
	var arrangement : EnumValue;
	var aspectRatio : Float;
	var comparer : CircularVertex -> CircularVertex -> Float;
	var direction : EnumValue;
	var nodeDiameterFormula : EnumValue;
	var radius : Float;
	var sorting : EnumValue;
	var spacing : Float;
	var startAngle : Float;
	var sweepAngle : Float;
	function commitLayout():Dynamic;
	function commitLinks():Dynamic;
	function commitNodes():Dynamic;
	function createNetwork():LayoutNetwork;
	@:overload(function(coll:Group):Dynamic { })
	@:overload(function(coll:Iterable):Dynamic { })
	function doLayout(coll:Diagram):Dynamic;
	static var Ascending : EnumValue;
	static var BidirectionalLeft : EnumValue;
	static var BidirectionalRight : EnumValue;
	static var Circular : EnumValue;
	static var Clockwise : EnumValue;
	static var ConstantAngle : EnumValue;
	static var ConstantDistance : EnumValue;
	static var ConstantSpacing : EnumValue;
	static var Counterclockwise : EnumValue;
	static var Descending : EnumValue;
	static var Forwards : EnumValue;
	static var Optimized : EnumValue;
	static var Packed : EnumValue;
	static var Pythagorean : EnumValue;
	static var Reverse : EnumValue;
}
extern class CircularEdge extends LayoutEdge {
	function new():Void;
}
extern class CircularVertex extends LayoutVertex {
	function new():Void;
	var actualAngle : Float;
	var diameter : Float;
}
extern class ForceDirectedLayout extends Layout {
	function new():Void;
	var arrangementSpacing : Size;
	var arrangesToOrigin : Bool;
	var comments : Bool;
	var currentIteration : Float;
	var defaultCommentElectricalCharge : Float;
	var defaultCommentSpringLength : Float;
	var defaultElectricalCharge : Float;
	var defaultGravitationalMass : Float;
	var defaultSpringLength : Float;
	var defaultSpringStiffness : Float;
	var epsilonDistance : Float;
	var infinityDistance : Float;
	var maxIterations : Float;
	var setsPortSpots : Bool;
	function commitLayout():Dynamic;
	function commitLinks():Dynamic;
	function commitNodes():Dynamic;
	function createNetwork():LayoutNetwork;
	@:overload(function(coll:Group):Dynamic { })
	@:overload(function(coll:Iterable):Dynamic { })
	function doLayout(coll:Diagram):Dynamic;
	function electricalCharge(v:ForceDirectedVertex):Float;
	function electricalFieldX(x:Float, y:Float):Float;
	function electricalFieldY(x:Float, y:Float):Float;
	function gravitationalFieldX(x:Float, y:Float):Float;
	function gravitationalFieldY(x:Float, y:Float):Float;
	function gravitationalMass(v:ForceDirectedVertex):Float;
	function isFixed(v:ForceDirectedVertex):Bool;
	function springLength(e:ForceDirectedEdge):Float;
	function springStiffness(e:ForceDirectedEdge):Float;
}
extern class ForceDirectedEdge extends LayoutEdge {
	function new():Void;
	var length : Float;
	var stiffness : Float;
}
extern class ForceDirectedVertex extends LayoutVertex {
	function new():Void;
	var charge : Float;
	var forceX : Float;
	var forceY : Float;
	var isFixed : Bool;
	var mass : Float;
}
extern class GridLayout extends Layout {
	function new():Void;
	var alignment : EnumValue;
	var arrangement : EnumValue;
	var cellSize : Size;
	var comparer : Part -> Part -> Float;
	var sorting : EnumValue;
	var spacing : Size;
	var wrappingColumn : Float;
	var wrappingWidth : Float;
	@:overload(function(coll:Group):Dynamic { })
	@:overload(function(coll:Iterable):Dynamic { })
	function doLayout(coll:Diagram):Dynamic;
	static var Ascending : EnumValue;
	static var Descending : EnumValue;
	static var Forward : EnumValue;
	static var LeftToRight : EnumValue;
	static var Location : EnumValue;
	static var Position : EnumValue;
	static var Reverse : EnumValue;
	static var RightToLeft : EnumValue;
}
extern class LayeredDigraphLayout extends Layout {
	function new():Void;
	var aggressiveOption : EnumValue;
	var columnSpacing : Float;
	var cycleRemoveOption : EnumValue;
	var direction : Float;
	var initializeOption : EnumValue;
	var iterations : Float;
	var layeringOption : EnumValue;
	var layerSpacing : Float;
	var maxColumn : Float;
	var maxIndex : Float;
	var maxIndexLayer : Float;
	var maxLayer : Float;
	var minIndexLayer : Float;
	var packOption : Float;
	var setsPortSpots : Bool;
	function assignLayers():Dynamic;
	function commitLayout():Dynamic;
	function commitLinks():Dynamic;
	function commitNodes():Dynamic;
	function createNetwork():LayoutNetwork;
	@:overload(function(coll:Group):Dynamic { })
	@:overload(function(coll:Iterable):Dynamic { })
	function doLayout(coll:Diagram):Dynamic;
	static var AggressiveLess : EnumValue;
	static var AggressiveMore : EnumValue;
	static var AggressiveNone : EnumValue;
	static var CycleDepthFirst : EnumValue;
	static var CycleGreedy : EnumValue;
	static var InitDepthFirstIn : EnumValue;
	static var InitDepthFirstOut : EnumValue;
	static var InitNaive : EnumValue;
	static var LayerLongestPathSink : EnumValue;
	static var LayerLongestPathSource : EnumValue;
	static var LayerOptimalLinkLength : EnumValue;
	static var PackAll : Float;
	static var PackExpand : Float;
	static var PackMedian : Float;
	static var PackNone : Float;
	static var PackStraighten : Float;
}
extern class LayeredDigraphEdge extends LayoutEdge {
	function new():Void;
	var forest : Bool;
	var portFromColOffset : Float;
	var portFromPos : Float;
	var portToColOffset : Float;
	var portToPos : Float;
	var rev : Bool;
	var valid : Bool;
}
extern class LayeredDigraphVertex extends LayoutVertex {
	function new():Void;
	var column : Float;
	var component : Float;
	var index : Float;
	var layer : Float;
	var near : LayeredDigraphVertex;
}
extern class Layout {
	function new():Void;
	var arrangementOrigin : Point;
	var diagram : Diagram;
	var group : Group;
	var isInitial : Bool;
	var isOngoing : Bool;
	var isRealtime : Bool;
	var isRouting : Bool;
	var isValidLayout : Bool;
	var isViewportSized : Bool;
	var newtork : LayoutNetwork;
	function commitLayout():Dynamic;
	function copy():Layout;
	function createNetwork():LayoutNetwork;
	@:overload(function(coll:Group):Dynamic { })
	@:overload(function(coll:Iterable):Dynamic { })
	function doLayout(coll:Diagram):Dynamic;
	function invalidateLayout():Dynamic;
	@:overload(function(coll:Group):LayoutNetwork { })
	@:overload(function(coll:Iterable):LayoutNetwork { })
	function makeNetwork(coll:Diagram):LayoutNetwork;
	function updateParts():Dynamic;
}
extern class LayoutNetwork {
	function new():Void;
	var edges : Set;
	var layout : Layout;
	var vertexes : Set;
	function addEdge(edge:LayoutEdge):Dynamic;
	function addLink(link:Link):LayoutEdge;
	function addNode(node:Node):LayoutVertex;
	function addParts(parts:Iterable, ?toplevelonly:Bool):Dynamic;
	function addVertex(vertex:LayoutVertex):Dynamic;
	function createEdge():LayoutEdge;
	function createVertex():LayoutVertex;
	function deleteArtificialVertexes():Dynamic;
	function deleteEdge(edge:LayoutEdge):Dynamic;
	function deleteLink(link:Link):Dynamic;
	function deleteNode(node:Node):Dynamic;
	function deleteSelfEdges():Dynamic;
	function deleteVertex(vertex:LayoutVertex):Dynamic;
	function findAllParts():Set;
	function findEdge(link:Link):LayoutEdge;
	function findVertex(node:Node):LayoutVertex;
	function linkVertexes(fromVertex:LayoutVertex, toVertex:LayoutVertex, link:Link):LayoutEdge;
	function reverseEdge(edge:LayoutEdge):Dynamic;
	function splitIntoSubNetworks():List;
}
extern class LayoutEdge {
	function new():Void;
	var fromVertex : LayoutVertex;
	var link : Link;
	var network : LayoutNetwork;
	var toVertex : LayoutVertex;
	function commit():Dynamic;
	function getOtherVertex(v:LayoutVertex):Dynamic;
}
extern class LayoutVertex {
	function new():Void;
	var bounds : Rect;
	var centerX : Float;
	var centerY : Float;
	var destinationEdges : Iterator;
	var destinationVertexes : Iterator;
	var edges : Iterator;
	var edgesCount : Float;
	var focus : Point;
	var focusX : Float;
	var focusY : Float;
	var height : Float;
	var network : LayoutNetwork;
	var node : Node;
	var sourceEdges : Iterator;
	var sourceVertexes : Iterator;
	var vertexes : Iterator;
	var width : Float;
	var x : Float;
	var y : Float;
	function addDestinationEdge(edge:LayoutEdge):Dynamic;
	function addSourceEdge(edge:LayoutEdge):Dynamic;
	function commit():Dynamic;
	function deleteDestinationEdge(edge:LayoutEdge):Dynamic;
	function deleteSourceEdge(edge:LayoutEdge):Dynamic;
	static function smartComparer(m:LayoutVertex, n:LayoutVertex):Float;
	static function standardComparer(m:LayoutVertex, n:LayoutVertex):Float;
}
extern class TreeLayout extends Layout {
	function new():Void;
	var alignment : EnumValue;
	var alternateAlignment : EnumValue;
	var alternateAngle : Float;
	var alternateBreadthLimit : Float;
	var alternateChildPortSpot : Spot;
	var alternateCommentMargin : Float;
	var alternateCommentSpacing : Float;
	var alternateCompaction : EnumValue;
	var alternateComparer : TreeVertex -> TreeVertex -> Float;
	var alternateDefaults : TreeVertex;
	var alternateLayerSpacing : Float;
	var alternateLayerSpacingParentOverlap : Float;
	var alternateNodeIndent : Float;
	var alternateNodeIndentPastParent : Float;
	var alternateNodeSpacing : Float;
	var alternatePortSpot : Spot;
	var alternateRowIndent : Float;
	var alternateRowSpacing : Float;
	var alternateSetsChildPortSpot : Bool;
	var alternateSetsPortSpot : Bool;
	var alternateSorting : EnumValue;
	var angle : Float;
	var arrangement : EnumValue;
	var arrangementSpacing : Size;
	var breadthLimit : Float;
	var childPortSpot : Spot;
	var commentMargin : Float;
	var commentSpacing : Float;
	var compaction : EnumValue;
	var comparer : TreeVertex -> TreeVertex -> Float;
	var layerSpacing : Float;
	var layerSpacingParentOverlap : Float;
	var nodeIndent : Float;
	var nodeIndentPastParent : Float;
	var nodeSpacing : Float;
	var path : EnumValue;
	var portSpot : Spot;
	var rootDefaults : TreeVertex;
	var roots : Set;
	var rowIndent : Float;
	var rowSpacing : Float;
	var setsChildPortSpot : Bool;
	var setsPortSpot : Bool;
	var sorting : EnumValue;
	var treeStyle : EnumValue;
	function addComments(v:LayoutVertex):Dynamic;
	function arrangeTrees():Dynamic;
	function assignTreeVertexValues(v:LayoutVertex):Dynamic;
	function commitLayout():Dynamic;
	function commitLinks():Dynamic;
	function commitNodes():Dynamic;
	function createNetwork():LayoutNetwork;
	@:overload(function(coll:Group):Dynamic { })
	@:overload(function(coll:Iterable):Dynamic { })
	function doLayout(coll:Diagram):Dynamic;
	function initializeTreeVertexValues(v:LayoutVertex):Dynamic;
	function layoutComments(v:LayoutVertex):Dynamic;
	static var AlignmentBottomRightBus : EnumValue;
	static var AlignmentBus : EnumValue;
	static var AlignmentBusBranching : EnumValue;
	static var AlignmentCenterChildren : EnumValue;
	static var AlignmentCenterSubtrees : EnumValue;
	static var AlignmentEnd : EnumValue;
	static var AlignmentStart : EnumValue;
	static var AlignmentTopLeftBus : EnumValue;
	static var ArrangementFixedRoots : EnumValue;
	static var ArrangementHorizontal : EnumValue;
	static var ArrangementVertical : EnumValue;
	static var CompactionBlock : EnumValue;
	static var CompactionNone : EnumValue;
	static var PathDefault : EnumValue;
	static var PathDestination : EnumValue;
	static var PathSource : EnumValue;
	static var SortingAscending : EnumValue;
	static var SortingDescending : EnumValue;
	static var SortingForwards : EnumValue;
	static var SortingReverse : EnumValue;
	static var StyleAlternating : EnumValue;
	static var StyleLastParents : EnumValue;
	static var StyleLayered : EnumValue;
	static var StyleRootOnly : EnumValue;
}
extern class TreeEdge extends LayoutEdge {
	function new():Void;
	var relativePoint : Point;
	function commit():Dynamic;
}
extern class TreeVertex extends LayoutVertex {
	function new():Void;
	var alignment : EnumValue;
	var angle : Float;
	var breadthLimit : Float;
	var childPortSpot : Spot;
	var children : Array<Dynamic>;
	var childrenCount : Float;
	var commentMargin : Float;
	var comments : Array<Dynamic>;
	var commentSpacing : Float;
	var compaction : EnumValue;
	var comparer : TreeVertex -> TreeVertex -> Float;
	var descendantCount : Float;
	var initialized : Bool;
	var layerSpacing : Float;
	var layerSpacingParentOverlap : Float;
	var level : Float;
	var maxChildrenCount : Float;
	var maxGenerationCount : Float;
	var nodeIndent : Float;
	var nodeIndentPastParent : Float;
	var nodeSpacing : Float;
	var parent : TreeVertex;
	var portSpot : Spot;
	var relativePosition : Point;
	var rowIndent : Float;
	var rowSpacing : Float;
	var setsChildPortSpot : Bool;
	var setsPortSpot : Bool;
	var sorting : EnumValue;
	var subtreeOffset : Point;
	var subtreeSize : Size;
	function copyInheritedPropertiesFrom(copy:TreeVertex):Dynamic;
}
extern class ActionTool extends Tool {
	function new():Void;
	function canStart():Bool;
	function doCancel():Dynamic;
	function doMouseDown():Dynamic;
	function doMouseMove():Dynamic;
	function doMouseUp():Dynamic;
}
extern class ClickCreatingTool extends Tool {
	function new():Void;
	var archetypeNodeData : Dynamic;
	var isDoubleClick : Bool;
	function canStart():Bool;
	function doMouseUp():Dynamic;
	function insertPart(loc:Point):Part;
}
extern class ClickSelectingTool extends Tool {
	function new():Void;
	function canStart():Bool;
	function doMouseUp():Dynamic;
}
extern class ContextMenuTool extends Tool {
	function new():Void;
	var currentContextMenu : Adornment;
	var mouseDownPoint : Point;
	function canStart():Bool;
	function doActivate():Dynamic;
	function doMouseMove():Dynamic;
	function doMouseUp():Dynamic;
	function findObjectWithContextMenu():Dynamic;
	function hideContextMenu():Dynamic;
	function hideDefaultContextMenu():Dynamic;
	function positionContextMenu(contextmenu:Adornment, obj:GraphObject):Dynamic;
	function showContextMenu(contextmenu:Adornment, obj:GraphObject):Dynamic;
	function showDefaultContextMenu():Dynamic;
}
extern class DraggingTool extends Tool {
	function new():Void;
	var copiedParts : Map;
	var copiesEffectiveCollection : Bool;
	var currentPart : Part;
	var delay : Float;
	var draggedParts : Map;
	var dragsTree : Bool;
	var gridSnapCellSize : Size;
	var gridSnapCellSpot : Spot;
	var gridSnapOrigin : Point;
	var isGridSnapEnabled : Bool;
	var isGridSnapRealtime : Bool;
	function canStart():Bool;
	function computeEffectiveCollection(parts:Iterable):Map;
	function computeMove(n:Part, newloc:Point, ?draggedparts:Map, ?result:Point):Point;
	function doActivate():Dynamic;
	function doCancel():Dynamic;
	function doDeactivate():Dynamic;
	function doDragOver(pt:Point, obj:GraphObject):Dynamic;
	function doDropOnto(pt:Point, obj:GraphObject):Dynamic;
	function doKeyDown():Dynamic;
	function doKeyUp():Dynamic;
	function doMouseMove():Dynamic;
	function doMouseUp():Dynamic;
	function findDraggablePart():Part;
	function mayCopy():Bool;
	function mayMove():Bool;
	function moveParts(parts:Map, offset:Point, check:Bool):Dynamic;
	function standardMouseSelect():Dynamic;
}
extern class DragSelectingTool extends Tool {
	function new():Void;
	var box : Part;
	var delay : Float;
	var isPartialInclusion : Bool;
	function canStart():Bool;
	function computeBoxBounds():Rect;
	function doActivate():Dynamic;
	function doDeactivate():Dynamic;
	function doMouseMove():Dynamic;
	function doMouseUp():Dynamic;
	function selectInRect(r:Rect):Dynamic;
}
extern class LinkingBaseTool extends Tool {
	function new():Void;
	var isForwards : Bool;
	var linkValidation : Node -> GraphObject -> Node -> GraphObject -> Link -> Bool;
	var originalFromNode : Node;
	var originalFromPort : GraphObject;
	var originalLink : Link;
	var originalToNode : Node;
	var originalToPort : GraphObject;
	var portGravity : Float;
	var portTargeted : Node -> GraphObject -> Node -> GraphObject -> Bool -> Void;
	var targetPort : GraphObject;
	var temporaryFromNode : Node;
	var temporaryFromPort : GraphObject;
	var temporaryLink : Link;
	var temporaryToNode : Node;
	var temporaryToPort : GraphObject;
	function copyPortProperties(realnode:Node, realport:GraphObject, tempnode:Node, tempport:GraphObject, toend:Bool):Dynamic;
	function doMouseMove():Dynamic;
	function findTargetPort(toend:Bool):GraphObject;
	function isInSameNode(fromport:GraphObject, toport:GraphObject):Bool;
	function isLinked(fromport:GraphObject, toport:GraphObject):Bool;
	function isValidFrom(fromnode:Node, fromport:GraphObject):Bool;
	function isValidLink(fromnode:Node, fromport:GraphObject, tonode:Node, toport:GraphObject):Bool;
	function isValidTo(tonode:Node, toport:GraphObject):Bool;
	function setNoTargetPortProperties(tempnode:Node, tempport:GraphObject, toend:Bool):Dynamic;
}
extern class LinkingTool extends LinkingBaseTool {
	function new():Void;
	var archetypeLabelNodeData : Dynamic;
	var archetypeLinkData : Dynamic;
	var direction : EnumValue;
	var startObject : GraphObject;
	function canStart():Bool;
	function doActivate():Dynamic;
	function doDeactivate():Dynamic;
	function doMouseUp():Dynamic;
	function findLinkablePort():GraphObject;
	function insertLink(fromnode:Node, fromport:GraphObject, tonode:Node, toport:GraphObject):Link;
	static var BackwardsOnly : EnumValue;
	static var Either : EnumValue;
	static var ForwardsOnly : EnumValue;
}
extern class LinkReshapingTool extends Tool {
	function new():Void;
	var adornedLink : Link;
	var handle : GraphObject;
	var handleArchetype : GraphObject;
	var midHandleArchetype : GraphObject;
	var originalPoint : Point;
	var originalPoints : List;
	function canStart():Bool;
	function computeReshape(p:Point):Point;
	function doActivate():Dynamic;
	function doCancel():Dynamic;
	function doDeactivate():Dynamic;
	function doMouseMove():Dynamic;
	function doMouseUp():Dynamic;
	function reshape(newPoint:Point):Dynamic;
	function updateAdornments(part:Part):Dynamic;
	static var All : EnumValue;
	static var Horizontal : EnumValue;
	static var None : EnumValue;
	static var Vertical : EnumValue;
}
extern class PanningTool extends Tool {
	function new():Void;
	var bubbles : Bool;
	var originalPosition : Point;
	function canStart():Bool;
	function doActivate():Dynamic;
	function doCancel():Dynamic;
	function doDeactivate():Dynamic;
	function doMouseMove():Dynamic;
	function doMouseUp():Dynamic;
}
extern class RelinkingTool extends Tool {
	function new():Void;
	var fromHandleArchetype : GraphObject;
	var handle : GraphObject;
	var toHandleArchetype : GraphObject;
	function canStart():Bool;
	function doActivate():Dynamic;
	function doDeactivate():Dynamic;
	function doMouseUp():Dynamic;
	function reconnectLink(existinglink:Link, newnode:Node, newport:GraphObject, toend:Bool):Bool;
	function updateAdornments(part:Part):Dynamic;
}
extern class ResizingTool extends Tool {
	function new():Void;
	var adornedObject : GraphObject;
	var cellSize : Size;
	var handle : GraphObject;
	var handleArchetype : GraphObject;
	var isGridSnapEnabled : Bool;
	var maxSize : Size;
	var minSize : Size;
	var originalDesiredSize : Size;
	var originalLocation : Point;
	function canStart():Bool;
	function computeCellSize():Size;
	function computeMaxSize():Size;
	function computeMinSize():Size;
	function computeResize(newPoint:Point, spot:Spot, min:Size, max:Size, cell:Size, reshape:Bool):Rect;
	function doActivate():Dynamic;
	function doCancel():Dynamic;
	function doDeactivate():Dynamic;
	function doMouseMove():Dynamic;
	function doMouseUp():Dynamic;
	function rezise(newr:Rect):Dynamic;
	function updateAdornments(part:Part):Dynamic;
}
extern class RotatingTool extends Tool {
	function new():Void;
	var adornedObject : GraphObject;
	var handle : GraphObject;
	var handleArchetype : GraphObject;
	var originalAngle : Float;
	var snapAngleEpsilon : Float;
	var snapAngleMultiple : Float;
	function canStart():Bool;
	function computeRotate(newPoint:Point):Float;
	function doActivate():Dynamic;
	function doCancel():Dynamic;
	function doDeactivate():Dynamic;
	function doMouseMove():Dynamic;
	function doMouseUp():Dynamic;
	function rotate(newangle:Float):Dynamic;
	function updateAdornments(part:Part):Dynamic;
}
extern class TextEditingTool extends Tool {
	function new():Void;
	var currentTextEditor : Element;
	var defaultTextEditor : Element;
	var starting : EnumValue;
	var textBlock : TextBlock;
	var textValidation : TextBlock -> String -> String -> Bool;
	function acceptText(reason:EnumValue):Dynamic;
	function canStart():Bool;
	function doActivate():Dynamic;
	function doCancel():Dynamic;
	function doDeactivate():Dynamic;
	function doMouseDown():Dynamic;
	function doMouseUp():Dynamic;
	function doStart():Dynamic;
	function isValidText(textblock:TextBlock, oldstr:String, newstr:String):Bool;
	static var Enter : EnumValue;
	static var LostFocus : EnumValue;
	static var MouseDown : EnumValue;
	static var SingleClick : EnumValue;
	static var SingleClickSelected : EnumValue;
	static var Tab : EnumValue;
}
extern class Tool {
	function new():Void;
	var diagram : Diagram;
	var isActive : Bool;
	var isEnabled : Bool;
	var name : String;
	var transactionResult : String;
	function cancelWaitAfter():Dynamic;
	function canStart():Bool;
	function doActivate():Dynamic;
	function doCancel():Dynamic;
	function doDeactivate():Dynamic;
	function doKeyDown():Dynamic;
	function doKeyUp():Dynamic;
	function doMouseDown():Dynamic;
	function doMouseMove():Dynamic;
	function doMouseUp():Dynamic;
	function doMouseWheel():Dynamic;
	function doStart():Dynamic;
	function doStop():Dynamic;
	function doWaitAfter():Dynamic;
	function findToolHandleAt(p:Point, category:String):GraphObject;
	function isBeyondDragSize(?first:Point, ?last:Point):Bool;
	function standardMouseClick(?navig:GraphObject -> GraphObject, ?pred:GraphObject -> Bool):Dynamic;
	function standardMouseOver():Dynamic;
	function standardMouseSelect():Dynamic;
	function standardMouseWheel():Dynamic;
	function standardWaitAfter(delay:Float):Dynamic;
	function startTransaction(?tname:String):Bool;
	function stopTool():Dynamic;
	function stopTransaction():Bool;
	function updateAdornments(part:Part):Dynamic;
}
extern class ToolManager extends Tool {
	function new():Void;
	var actionTool : ActionTool;
	var clickCreatingTool : ClickCreatingTool;
	var clickSelectingTool : ClickSelectingTool;
	var contextMenuTool : ContextMenuTool;
	var currentToolTip : Adornment;
	var draggingTool : DraggingTool;
	var dragSelectingTool : DragSelectingTool;
	var dragSize : Size;
	var holdDelay : Float;
	var hoverDelay : Float;
	var linkingTool : LinkingTool;
	var linkReshapingTool : LinkReshapingTool;
	var mouseDownTools : List;
	var mouseMoveTools : List;
	var mouseUpTools : List;
	var mouseWheelBehavior : EnumValue;
	var panningTool : PanningTool;
	var relinkingTool : RelinkingTool;
	var resizingTool : ResizingTool;
	var rotatingTool : RotatingTool;
	var textEditingTool : TextEditingTool;
	function doKeyDown():Dynamic;
	function doKeyUp():Dynamic;
	function doMouseDown():Dynamic;
	function doMouseHover():Dynamic;
	function doMouseMove():Dynamic;
	function doMouseUp():Dynamic;
	function doMouseWheel():Dynamic;
	function doToolTip():Dynamic;
	function doWaitAfter():Dynamic;
	function findTool(name:String):Tool;
	function hideToolTip():Dynamic;
	function initializeStandardTools():Dynamic;
	function positionToolTip(tooltip:Adornment, obj:GraphObject):Dynamic;
	function replaceTool(name:String, newtool:Tool):Tool;
	function showToolTip(tooltip:Adornment, obj:GraphObject):Dynamic;
	static var WheelNone : EnumValue;
	static var WheelScroll : EnumValue;
	static var WheelZoom : EnumValue;
}
extern class Iterable {
	var iterator : Iterator;
}
extern class Iterator extends Iterable {
	var count : Float;
	var iterator : Iterator;
	var key : Dynamic;
	var value : Dynamic;
	function first():Dynamic;
	function next():Bool;
	function reset():Dynamic;
}
extern class List {
	@:overload(function(?type:String):Void { })
	function new(type:Dynamic):Void;
	var count : Float;
	var iterator : Iterator;
	var iteratorBackwards : Iterator;
	var length : Float;
	function add(val:Dynamic):Dynamic;
	function addAll(coll:Dynamic):List;
	function clear():Dynamic;
	function contains(val:Dynamic):Bool;
	function copy():List;
	function elt(i:Float):Dynamic;
	function first():Dynamic;
	function indexOf(val:Dynamic):Float;
	function insertAt(i:Float, val:Dynamic):Dynamic;
	function remove(val:Dynamic):Bool;
	function removeAt(i:Float):Dynamic;
	function removeRange(to:Float, from:Float):Dynamic;
	function reverse():List;
	function setElt(i:Float, val:Dynamic):Dynamic;
	function sort(sortfunc:Dynamic -> Dynamic -> Float):List;
	function toArray():Array<Dynamic>;
	function toSet():Set;
}
extern class Map {
	@:overload(function(keytype:String, valtype:Dynamic):Void { })
	@:overload(function(keytype:Dynamic, valtype:String):Void { })
	@:overload(function(?keytype:String, ?valtype:String):Void { })
	function new(keytype:Dynamic, valtype:Dynamic):Void;
	var count : Float;
	var iterator : Iterator;
	function add(key:Dynamic, val:Dynamic):Bool;
	function addAll(map:Map):Map;
	function clear():Dynamic;
	function contains(key:Dynamic):Bool;
	function copy():Map;
	function getValue(key:Dynamic):Dynamic;
	function remove(key:Dynamic):Bool;
	function toArray():Array<Dynamic>;
	function toKeySet():Set;
}
extern class Set {
	@:overload(function(?type:String):Void { })
	function new(type:Dynamic):Void;
	var count : Float;
	var iterator : Iterator;
	function add(val:Dynamic):Bool;
	function addAll(coll:Dynamic):Set;
	function clear():Dynamic;
	function contains(val:Dynamic):Bool;
	function containsAll(coll:Iterable):Bool;
	function containsAny(coll:Iterable):Bool;
	function copy():Set;
	function first():Dynamic;
	function remove(val:Dynamic):Bool;
	function removeAll(coll:Iterable):Set;
	function retainAll(coll:Iterable):Set;
	function toArray():Array<Dynamic>;
	function toList():List;
}
extern class EnumValue {

}
