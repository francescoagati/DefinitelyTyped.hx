extern class CodemirrorTopLevel {
	static function CodeMirror(host:HTMLElement, ?options:CodeMirror.EditorConfiguration):CodeMirror.Editor;
	static function CodeMirror(callback:HTMLElement -> Void, ?options:CodeMirror.EditorConfiguration):CodeMirror.Editor;
}
