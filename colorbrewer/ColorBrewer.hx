typedef ColorScheme = { };
typedef EightColorScheme = {
	>ColorScheme,
	var _3 : Array<Dynamic>;
	var _4 : Array<Dynamic>;
	var _5 : Array<Dynamic>;
	var _6 : Array<Dynamic>;
	var _7 : Array<Dynamic>;
	var _8 : Array<Dynamic>;
};
typedef NineColorScheme = {
	>EightColorScheme,
	var _9 : Array<Dynamic>;
};
typedef ElevenColorScheme = {
	>NineColorScheme,
	var _10 : Array<Dynamic>;
	var _11 : Array<Dynamic>;
};
typedef TwelveColorScheme = {
	>ElevenColorScheme,
	var _12 : Array<Dynamic>;
};
typedef Base = {
	var YlGn : NineColorScheme;
	var YlGnBu : NineColorScheme;
	var GnBu : NineColorScheme;
	var BuGn : NineColorScheme;
	var PuBuGn : NineColorScheme;
	var PuBu : NineColorScheme;
	var BuPu : NineColorScheme;
	var RdPu : NineColorScheme;
	var PuRd : NineColorScheme;
	var OrRd : NineColorScheme;
	var YlOrRd : NineColorScheme;
	var YlOrBr : NineColorScheme;
	var Purples : NineColorScheme;
	var Blues : NineColorScheme;
	var Greens : NineColorScheme;
	var Oranges : NineColorScheme;
	var Reds : NineColorScheme;
	var Greys : NineColorScheme;
	var PuOr : ElevenColorScheme;
	var BrBG : ElevenColorScheme;
	var PRGn : ElevenColorScheme;
	var PiYG : ElevenColorScheme;
	var RdBu : ElevenColorScheme;
	var RdGy : ElevenColorScheme;
	var RdYlBu : ElevenColorScheme;
	var Spectral : ElevenColorScheme;
	var RdYlGn : ElevenColorScheme;
	var Accent : EightColorScheme;
	var Dark2 : EightColorScheme;
	var Paired : TwelveColorScheme;
	var Pastel1 : NineColorScheme;
	var Pastel2 : EightColorScheme;
	var Set1 : NineColorScheme;
	var Set2 : EightColorScheme;
	var Set3 : TwelveColorScheme;
};
