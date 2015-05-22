extern class WinJS.UI.FragmentsTopLevel {
	static function cache(href:String):Promise<Dynamic>;
	static function clearCache(href:String):Void;
	static function clearCache(href:HTMLElement):Void;
	static function render(href:String, ?element:HTMLElement):Promise<HTMLElement>;
	static function renderCopy(href:String, ?target:HTMLElement):Promise<HTMLElement>;
	static function renderCopy(href:HTMLElement, ?target:HTMLElement):Promise<HTMLElement>;
}
