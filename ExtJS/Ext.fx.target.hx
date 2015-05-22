typedef IComponent = {
	>Ext.fx.target.ITarget,
};
typedef ICompositeElement = {
	>Ext.fx.target.IElement,
	@:optional
	var isComposite : Bool;
};
typedef ICompositeElementCSS = {
	>Ext.fx.target.ICompositeElement,
};
typedef ICompositeSprite = {
	>Ext.fx.target.ISprite,
};
typedef IElement = {
	>Ext.fx.target.ITarget,
};
typedef IElementCSS = {
	>Ext.fx.target.IElement,
};
typedef ISprite = {
	>Ext.fx.target.ITarget,
};
typedef ITarget = {
	>Ext.IBase,
};
