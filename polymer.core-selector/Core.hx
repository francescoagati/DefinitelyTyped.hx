typedef Selector = {
	>PolymerElement,
	>HTMLElement,
};
typedef SelectorOnSelectEvent = {
	>Event,
	var detail : { var item : HTMLElement; var isSelected : Bool; };
};
