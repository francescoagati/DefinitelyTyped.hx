typedef MostVisitedURL = {
	var url : String;
	var title : String;
};
extern class Chrome.topSitesTopLevel {
	static function get(callback:MostVisitedURL -> Void):Void;
}
