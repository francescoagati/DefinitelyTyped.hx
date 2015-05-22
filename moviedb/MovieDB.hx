typedef IMovieDB = {
	function searchMovie(params:SearchOptions, callback:Dynamic -> SearchResults -> Void):Void;
	function movieInfo(options:InfoOptions, callback:Dynamic -> Movie -> Void):Void;
};
typedef SearchOptions = {
	var query : String;
};
typedef InfoOptions = {
	var id : Float;
};
typedef SearchResults = {
	var page : Float;
	var results : Array<SearchResult>;
	var total_Pages : Float;
	var total_results : Float;
};
typedef SearchResult = {
	var adult : Bool;
	var backdrop_path : String;
	var id : Float;
	var original_title : String;
	var release_date : Date;
	var poster_path : String;
	var popularity : Float;
	var title : String;
	var vote_average : Float;
	var vote_count : Float;
};
typedef Movie = {
	var adult : Bool;
	var backdrop_path : String;
	var belongs_to_collection : Dynamic;
	var budget : Float;
	var genres : Array<Genre>;
	var homepage : String;
	var id : Float;
	var imdb_id : Float;
	var original_title : String;
	var overview : String;
	var popularity : Float;
	var poster_path : String;
	var production_companies : Array<ProductionCompany>;
	var production_countries : Array<ProductionCountry>;
	var release_date : Date;
	var revenue : Float;
	var runtime : Float;
	var spoken_languages : Array<SpokenLanguage>;
	var status : String;
	var tagline : String;
	var title : String;
	var vote_average : Float;
	var vote_count : Float;
};
typedef Genre = {
	var id : Float;
	var name : String;
};
typedef ProductionCompany = {
	var id : Float;
	var name : String;
};
typedef ProductionCountry = {
	var iso_3166_1 : Float;
	var name : String;
};
typedef SpokenLanguage = {
	var iso_639_1 : Float;
	var name : String;
};
