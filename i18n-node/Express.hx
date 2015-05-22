typedef Request = {
	>I18nAPI,
	var languages : Array<String>;
	var regions : Array<String>;
	var language : String;
	var region : String;
};
typedef Response = {
	>I18nAPI,
	var locals : I18nAPI;
};
