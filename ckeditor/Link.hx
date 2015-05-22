extern class LinkTopLevel {
	static var emptyAnchorFix : Bool;
	static var fakeAnchor : Bool;
	static var synAnchorSelector : Bool;
	static function getEditorAnchors(editor:Editor):Array<dom.Element>;
	static function getSelectedLink(editor:Editor):dom.ElementPath;
	static function tryRestoreFakeAnchor(editor:Editor, element:dom.Element):dom.Element;
}
