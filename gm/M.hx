typedef ClassOptions = {
	@:optional
	var imageMagick : Bool;
};
typedef CompareCallback = { };
typedef GetterCallback<T> = { };
typedef WriteCallback = { };
typedef ChannelInfo<T> = {
	var Red : T;
	var Green : T;
	var Blue : T;
};
typedef CompareOptions = {
	@:optional
	var file : String;
	@:optional
	var highlightColor : String;
	@:optional
	var highlightStyle : String;
	@:optional
	var tolerance : Float;
};
typedef ColorStatistics = {
	var Minimum : String;
	var Maximum : String;
	var Mean : String;
	var Standard Deviation : String;
};
typedef Dimensions = {
	var width : Float;
	var height : Float;
};
typedef ImageInfo = {
	var Background Color : String;
	var Border Color : String;
	var Channel Depths : ChannelInfo<String>;
	var Channel Statistics : ChannelInfo<ColorStatistics>;
	var Class : String;
	var color : Float;
	var Compose : String;
	var Compression : String;
	var depth : Float;
	var Depth : String;
	var Dispose : String;
	var Filesize : String;
	var format : String;
	var Format : String;
	var Geometry : String;
	var Interlace : String;
	var Iterations : String;
	@:optional
	var JPEG-Quality : String;
	@:optional
	var JPEG-Colorspace : String;
	@:optional
	var JPEG-Colorspace-Name : String;
	@:optional
	var JPEG-Sampling-factors : String;
	var Matte Color : String;
	var Orientation : String;
	var Page geometry : String;
	var path : String;
	@:optional
	var Profile-color : String;
	@:optional
	var Profile-iptc : { };
	@:optional
	var Profile-EXIF : { };
	@:optional
	var Profile-XMP : String;
	@:optional
	var Resolution : String;
	var size : Dimensions;
	var Signature : String;
	var Software : String;
	var Tainted : String;
	var Type : String;
};
typedef State = {
	function adjoin():State;
	function affine(matrix:String):State;
	function antialias(enable:Bool):State;
	function append(image:String, ?ltr:Bool):State;
	function authenticate(password:String):State;
	function autoOrient():State;
	function backdrop():State;
	function bitdepth(bits:Float):State;
	@:overload(function(red:Float, green:Float, blue:Float, ?opacity:Float):State { })
	function blackThreshold(intensity:Float):State;
	function bluePrimary(x:Float, y:Float):State;
	function blur(radius:Float, ?sigma:Float):State;
	function border(width:Float, height:Float):State;
	function borderColor(color:String):State;
	function box(color:String):State;
	@:overload(function(type:Green):State { })
	@:overload(function(type:Blue):State { })
	@:overload(function(type:Opacity):State { })
	@:overload(function(type:Matte):State { })
	@:overload(function(type:Cyan):State { })
	@:overload(function(type:Magenta):State { })
	@:overload(function(type:Yellow):State { })
	@:overload(function(type:Black):State { })
	@:overload(function(type:Gray):State { })
	@:overload(function(type:String):State { })
	function channel(type:Red):State;
	function charcoal(factor:Float):State;
	function chop(width:Float, height:Float, ?x:Float, ?y:Float):State;
	function clip():State;
	function coalesce():State;
	function colorize(red:Float, green:Float, blue:Float):State;
	@:overload(function(type:Private):State { })
	@:overload(function(type:String):State { })
	function colorMap(type:Shared):State;
	function colors(colors:Float):State;
	@:overload(function(space:CMYK):State { })
	@:overload(function(space:GRAY):State { })
	@:overload(function(space:HSL):State { })
	@:overload(function(space:HSB):State { })
	@:overload(function(space:OHTA):State { })
	@:overload(function(space:RGB):State { })
	@:overload(function(space:Rec601Luma):State { })
	@:overload(function(space:Rec709Luma):State { })
	@:overload(function(space:Rec601YCbCr):State { })
	@:overload(function(space:Rec709YCbCr):State { })
	@:overload(function(space:Transparent):State { })
	@:overload(function(space:XYZ):State { })
	@:overload(function(space:YCbCr):State { })
	@:overload(function(space:YIQ):State { })
	@:overload(function(space:YPbPr):State { })
	@:overload(function(space:YUV):State { })
	@:overload(function(space:String):State { })
	function colorspace(space:CineonLog):State;
	@:overload(function(operator:In):State { })
	@:overload(function(operator:Out):State { })
	@:overload(function(operator:Atop):State { })
	@:overload(function(operator:Xor):State { })
	@:overload(function(operator:Plus):State { })
	@:overload(function(operator:Minus):State { })
	@:overload(function(operator:Add):State { })
	@:overload(function(operator:Subtract):State { })
	@:overload(function(operator:Difference):State { })
	@:overload(function(operator:Divide):State { })
	@:overload(function(operator:Multiply):State { })
	@:overload(function(operator:Bumpmap):State { })
	@:overload(function(operator:Copy):State { })
	@:overload(function(operator:CopyRed):State { })
	@:overload(function(operator:CopyGreen):State { })
	@:overload(function(operator:CopyBlue):State { })
	@:overload(function(operator:CopyOpacity):State { })
	@:overload(function(operator:CopyCyan):State { })
	@:overload(function(operator:CopyMagenta):State { })
	@:overload(function(operator:CopyYellow):State { })
	@:overload(function(operator:CopyBlack):State { })
	@:overload(function(operator:String):State { })
	function compose(operator:Over):State;
	@:overload(function(type:BZip):State { })
	@:overload(function(type:Fax):State { })
	@:overload(function(type:Group4):State { })
	@:overload(function(type:JPEG):State { })
	@:overload(function(type:Lossless):State { })
	@:overload(function(type:LZW):State { })
	@:overload(function(type:RLE):State { })
	@:overload(function(type:Zip):State { })
	@:overload(function(type:LZMA):State { })
	@:overload(function(type:String):State { })
	function compress(type:None):State;
	function contrast(multiplier:Float):State;
	function convolve(kernel:String):State;
	function createDirectories():State;
	function crop(width:Float, height:Float, ?x:Float, ?y:Float, ?percent:Bool):State;
	function cycle(amount:Float):State;
	function deconstruct():State;
	function define():State;
	function delay(milliseconds:Float):State;
	function density(width:Float, height:Float):State;
	function despeckle():State;
	function displace(horizontal:Float, vertical:Float):State;
	function display(xServer:String):State;
	@:overload(function(method:None):State { })
	@:overload(function(method:Background):State { })
	@:overload(function(method:Previous):State { })
	@:overload(function(method:String):State { })
	function dispose(method:Undefined):State;
	function dissolve(percent:Float):State;
	function dither(?enable:Bool):State;
	function edge(?radius:Float):State;
	function emboss(?radius:Float):State;
	@:overload(function(encoding:AdobeExpert):State { })
	@:overload(function(encoding:AdobeStandard):State { })
	@:overload(function(encoding:AppleRoman):State { })
	@:overload(function(encoding:BIG5):State { })
	@:overload(function(encoding:GB2312):State { })
	@:overload(function(encoding:Latin 2):State { })
	@:overload(function(encoding:None):State { })
	@:overload(function(encoding:SJIScode):State { })
	@:overload(function(encoding:Symbol):State { })
	@:overload(function(encoding:Unicode):State { })
	@:overload(function(encoding:Wansung):State { })
	@:overload(function(encoding:String):State { })
	function encoding(encoding:AdobeCustom):State;
	@:overload(function(type:LSB):State { })
	@:overload(function(type:Native):State { })
	@:overload(function(type:String):State { })
	function endian(type:MSB):State;
	function enhance():State;
	function equalize():State;
	function extent(width:Float, height:Float, ?options:String):State;
	function file(filename:String):State;
	@:overload(function(type:Box):State { })
	@:overload(function(type:Triangle):State { })
	@:overload(function(type:Hermite):State { })
	@:overload(function(type:Hanning):State { })
	@:overload(function(type:Hamming):State { })
	@:overload(function(type:Blackman):State { })
	@:overload(function(type:Gaussian):State { })
	@:overload(function(type:Quadratic):State { })
	@:overload(function(type:Cubic):State { })
	@:overload(function(type:Catrom):State { })
	@:overload(function(type:Mitchell):State { })
	@:overload(function(type:Lanczos):State { })
	@:overload(function(type:Bessel):State { })
	@:overload(function(type:Sinc):State { })
	@:overload(function(type:String):State { })
	function filter(type:Point):State;
	function flatten():State;
	function flip():State;
	function flop():State;
	function foreground(color:String):State;
	function frame(width:Float, height:Float, outerBevelWidth:Float, outBevelHeight:Float):State;
	function fuzz(distance:Float, ?percent:Bool):State;
	function gamma(r:Float, g:Float, b:Float):State;
	function gaussian(radius:Float, ?sigma:Float):State;
	@:overload(function(width:Float, height:Float, option:@):State { })
	@:overload(function(width:Float, height:Float, option:!):State { })
	@:overload(function(width:Float, height:Float, option:^):State { })
	@:overload(function(width:Float, height:Float, option:<):State { })
	@:overload(function(width:Float, height:Float, option:>):State { })
	@:overload(function(width:Float, ?height:Float, ?option:String):State { })
	@:overload(function(geometry:String):State { })
	function geometry(width:Float, height:Float, option:%):State;
	function greenPrimary(x:Float, y:Float):State;
	@:overload(function(direction:North):State { })
	@:overload(function(direction:NorthEast):State { })
	@:overload(function(direction:West):State { })
	@:overload(function(direction:Center):State { })
	@:overload(function(direction:East):State { })
	@:overload(function(direction:SouthWest):State { })
	@:overload(function(direction:South):State { })
	@:overload(function(direction:SouthEast):State { })
	@:overload(function(direction:String):State { })
	function gravity(direction:NorthWest):State;
	function highlightColor(color:String):State;
	@:overload(function(style:Threshold):State { })
	@:overload(function(style:Tint):State { })
	@:overload(function(style:XOR):State { })
	@:overload(function(style:String):State { })
	function highlightStyle(style:Assign):State;
	function iconGeometry(geometry:String):State;
	function implode(?factor:Float):State;
	@:overload(function(type:Perceptual):State { })
	@:overload(function(type:Relative):State { })
	@:overload(function(type:Saturation):State { })
	@:overload(function(type:String):State { })
	function intent(type:Absolute):State;
	@:overload(function(type:Line):State { })
	@:overload(function(type:Plane):State { })
	@:overload(function(type:Partition):State { })
	@:overload(function(type:String):State { })
	function interlace(type:None):State;
	function label(name:String):State;
	function lat(width:Float, height:Float, offset:Float, ?percent:Bool):State;
	function level(blackPoint:Float, gamma:Float, whitePoint:Float, ?percent:Bool):State;
	@:overload(function(type:File, val:String):State { })
	@:overload(function(type:Map, val:String):State { })
	@:overload(function(type:Memory, val:String):State { })
	@:overload(function(type:Pixels, val:String):State { })
	@:overload(function(type:Threads, val:String):State { })
	@:overload(function(type:String, val:String):State { })
	function limit(type:Disk, val:String):State;
	@:overload(function(type:Color):State { })
	@:overload(function(type:Delegate):State { })
	@:overload(function(type:Format):State { })
	@:overload(function(type:Magic):State { })
	@:overload(function(type:Module):State { })
	@:overload(function(type:Resource):State { })
	@:overload(function(type:Type):State { })
	function list(type:String):State;
	function log(format:String):State;
	function loop(iterations:Float):State;
	function lower(width:Float, height:Float):State;
	function magnify(factor:Float):State;
	function map(filename:String):State;
	function mask(filename:String):State;
	function matte():State;
	function matteColor(color:String):State;
	function maximumError(limit:Float):State;
	function median(?radius:Float):State;
	function minify(factor:Float):State;
	@:overload(function(mode:Unframe):State { })
	@:overload(function(mode:Concatenate):State { })
	@:overload(function(mode:String):State { })
	function mode(mode:Frame):State;
	function modulate(b:Float, s:Float, h:Float):State;
	function monitor():State;
	function monochrome():State;
	@:overload(function(otherImg:Array<String>, outName:String, ?callback:WriteCallback):State { })
	function morph(otherImg:String, outName:String, ?callback:WriteCallback):State;
	function mosaic():State;
	function motionBlur(radius:Float, ?sigma:Float, ?angle:Float):State;
	function name():State;
	function negative():State;
	@:overload(function(type:Gaussian):State { })
	@:overload(function(type:Multiplicative):State { })
	@:overload(function(type:Impulse):State { })
	@:overload(function(type:Laplacian):State { })
	@:overload(function(type:Poisson):State { })
	@:overload(function(type:String):State { })
	@:overload(function(radius:Float):State { })
	function noise(type:Uniform):State;
	function noop():State;
	function normalize():State;
	function opaque(color:String):State;
	@:overload(function(channel:String, operator:And, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Assign, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Depth, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Divide, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Gamma, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Negate, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:LShift, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Log, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Max, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Min, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Multiply, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Or, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Pow, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:RShift, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Subtract, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Threshold, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Threshold-White, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Threshold-White-Negate, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Threshold-Black, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Threshold-Black-Negate, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Xor, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Noise-Gaussian, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Noise-Impulse, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Noise-Laplacian, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Noise-Multiplicative, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Noise-Poisson, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Noise-Random, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:Noise-Uniform, rvalue:Float, ?percent:Bool):State { })
	@:overload(function(channel:String, operator:String, rvalue:Float, ?percent:Bool):State { })
	function operator(channel:String, operator:Add, rvalue:Float, ?percent:Bool):State;
	@:overload(function(channelType:Intensity, NxN:String):State { })
	@:overload(function(channelType:Red, NxN:String):State { })
	@:overload(function(channelType:Green, NxN:String):State { })
	@:overload(function(channelType:Blue, NxN:String):State { })
	@:overload(function(channelType:Cyan, NxN:String):State { })
	@:overload(function(channelType:Magenta, NxN:String):State { })
	@:overload(function(channelType:Yellow, NxN:String):State { })
	@:overload(function(channelType:Black, NxN:String):State { })
	@:overload(function(channelType:Opacity, NxN:String):State { })
	@:overload(function(channelType:String, NxN:String):State { })
	function orderedDither(channelType:All, NxN:String):State;
	function outputDirectory(directory:String):State;
	@:overload(function(width:Float, height:Float, ?arg:!):State { })
	@:overload(function(width:Float, height:Float, ?arg:<):State { })
	@:overload(function(width:Float, height:Float, ?arg:>):State { })
	@:overload(function(width:Float, height:Float, ?arg:String):State { })
	function page(width:Float, height:Float, ?arg:%):State;
	function pause(seconds:Float):State;
	function pen(color:String):State;
	function ping():State;
	function pointSize(size:Float):State;
	function noProfile():State;
	@:overload(function(type:Shear):State { })
	@:overload(function(type:Roll):State { })
	@:overload(function(type:Hue):State { })
	@:overload(function(type:Saturation):State { })
	@:overload(function(type:Brightness):State { })
	@:overload(function(type:Gamma):State { })
	@:overload(function(type:Spiff):State { })
	@:overload(function(type:Dull):State { })
	@:overload(function(type:Grayscale):State { })
	@:overload(function(type:Quantize):State { })
	@:overload(function(type:Despeckle):State { })
	@:overload(function(type:ReduceNoise):State { })
	@:overload(function(type:AddNoise):State { })
	@:overload(function(type:Sharpen):State { })
	@:overload(function(type:Blur):State { })
	@:overload(function(type:Threshold):State { })
	@:overload(function(type:EdgeDetect):State { })
	@:overload(function(type:Spread):State { })
	@:overload(function(type:Shade):State { })
	@:overload(function(type:Raise):State { })
	@:overload(function(type:Segment):State { })
	@:overload(function(type:Solarize):State { })
	@:overload(function(type:Swirl):State { })
	@:overload(function(type:Implode):State { })
	@:overload(function(type:Wave):State { })
	@:overload(function(type:OilPaint):State { })
	@:overload(function(type:CharcoalDrawing):State { })
	@:overload(function(type:JPEG):State { })
	@:overload(function(type:String):State { })
	function preview(type:Rotate):State;
	function paint(radius:Float):State;
	function process(command:String):State;
	function profile(filename:String):State;
	function progress():State;
	@:overload(function(channelType:Intensity, LOWxHIGH:String):State { })
	@:overload(function(channelType:Red, LOWxHIGH:String):State { })
	@:overload(function(channelType:Green, LOWxHIGH:String):State { })
	@:overload(function(channelType:Blue, LOWxHIGH:String):State { })
	@:overload(function(channelType:Cyan, LOWxHIGH:String):State { })
	@:overload(function(channelType:Magenta, LOWxHIGH:String):State { })
	@:overload(function(channelType:Yellow, LOWxHIGH:String):State { })
	@:overload(function(channelType:Black, LOWxHIGH:String):State { })
	@:overload(function(channelType:Opacity, LOWxHIGH:String):State { })
	@:overload(function(channelType:String, LOWxHIGH:String):State { })
	function randomThreshold(channelType:All, LOWxHIGH:String):State;
	function quality(level:Float):State;
	function raise(width:Float, height:Float):State;
	function recolor(matrix:String):State;
	function redPrimary(x:Float, y:Float):State;
	function region(width:Float, height:Float, ?x:Float, ?y:Float):State;
	function remote():State;
	function render():State;
	@:overload(function(reset:String):State { })
	@:overload(function(width:Float, height:Float, xoff:Float, yoff:Float, ?arg:String):State { })
	function repage(reset:+):State;
	function sample(geometry:String):State;
	function samplingFactor(horizontalFactor:Float, verticalFactor:Float):State;
	function rawSize(width:Float, height:Float, ?offset:Float):State;
	function resample(horizontal:Float, vertical:Float):State;
	@:overload(function(width:Float, height:Float, option:@):State { })
	@:overload(function(width:Float, height:Float, option:!):State { })
	@:overload(function(width:Float, height:Float, option:^):State { })
	@:overload(function(width:Float, height:Float, option:<):State { })
	@:overload(function(width:Float, height:Float, option:>):State { })
	@:overload(function(width:Float, ?height:Float, ?option:String):State { })
	function resize(width:Float, height:Float, option:%):State;
	function roll(horizontal:Float, vertical:Float):State;
	function rotate(backgroundColor:String, degrees:Float):State;
	function scene(index:Float):State;
	function scenes(start:Float, end:Float):State;
	function scale(width:Float, height:Float):State;
	function screen():State;
	function segment(clustherThreshold:Float, smoothingThreshold:Float):State;
	function sepia():State;
	function set(attribute:String, value:String):State;
	function setFormat(format:String):State;
	function shade(azimuth:Float, elevation:Float):State;
	function shadow(radius:Float, ?sigma:Float):State;
	function sharedMemory():State;
	function shave(width:Float, height:Float, ?percent:Bool):State;
	function sharpen(radius:Float, ?sigma:Float):State;
	function shear(xDegrees:Float, yDegress:Float):State;
	function silent():State;
	function snaps(count:Float):State;
	function solarize(threshold:Float):State;
	function spread(amount:Float):State;
	function stegano(offset:Float):State;
	function stereo():State;
	function strip():State;
	function swirl(degrees:Float):State;
	function textFont(font:String):State;
	function threshold(value:Float, ?percent:Bool):State;
	@:overload(function(width:Float, height:Float, outName:String, quality:Float, callback:WriteCallback):State { })
	@:overload(function(width:Float, height:Float, outName:String, quality:Float, align:Topleft, callback:WriteCallback):State { })
	@:overload(function(width:Float, height:Float, outName:String, quality:Float, align:Center, callback:WriteCallback):State { })
	@:overload(function(width:Float, height:Float, outName:String, quality:Float, align:String, callback:WriteCallback):State { })
	function thumb(width:Float, height:Float, outName:String, callback:WriteCallback):State;
	function tile(filename:String):State;
	function title(title:String):State;
	function transform(color:String):State;
	function transparent(color:String):State;
	function treeDepth(depth:Float):State;
	function trim():State;
	@:overload(function(type:Grayscale):State { })
	@:overload(function(type:Palette):State { })
	@:overload(function(type:PaletteMatte):State { })
	@:overload(function(type:TrueColor):State { })
	@:overload(function(type:TrueColorMatte):State { })
	@:overload(function(type:ColorSeparation):State { })
	@:overload(function(type:ColorSeparationMatte):State { })
	@:overload(function(type:Optimize):State { })
	@:overload(function(type:String):State { })
	function type(type:Bilevel):State;
	function update(seconds:Float):State;
	@:overload(function(type:PixelsPerInch):State { })
	@:overload(function(type:PixelsPerCentimeter):State { })
	@:overload(function(type:String):State { })
	function units(type:Undefined):State;
	function unsharp(radius:Float, ?sigma:Float, ?amount:Float, ?threshold:Float):State;
	function usePixmap():State;
	function view():State;
	@:overload(function(method:Edge):State { })
	@:overload(function(method:Mirror):State { })
	@:overload(function(method:Tile):State { })
	@:overload(function(method:String):State { })
	function virtualPixel(method:Constant):State;
	@:overload(function(type:GrayScale):State { })
	@:overload(function(type:StaticColor):State { })
	@:overload(function(type:PseudoColor):State { })
	@:overload(function(type:TrueColor):State { })
	@:overload(function(type:DirectColor):State { })
	@:overload(function(type:Default):State { })
	@:overload(function(type:String):State { })
	function visual(type:StaticGray):State;
	function watermark(brightness:Float, saturation:Float):State;
	function wave(amplitude:Float, wavelength:Float):State;
	function whitePoint(x:Float, y:Float):State;
	@:overload(function(red:Float, green:Float, blue:Float, ?opacity:Float):State { })
	function whiteThreshold(intensity:Float):State;
	function window(id:String):State;
	function windowGroup():State;
	function color(callback:GetterCallback<Float>):State;
	function depth(callback:GetterCallback<Float>):State;
	function filesize(callback:GetterCallback<String>):State;
	function format(callback:GetterCallback<String>):State;
	function identify(callback:GetterCallback<ImageInfo>):State;
	function res(callback:GetterCallback<String>):State;
	function size(callback:GetterCallback<Dimensions>):State;
	function orientation(callback:GetterCallback<String>):State;
	function draw(args:String):State;
	function drawArc(x0:Float, y0:Float, x1:Float, y1:Float, r0:Float, r1:Float):State;
	@:overload(function(x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float):State { })
	@:overload(function(x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, coords:haxe.extern.Rest<Float>):State { })
	function drawBezier(x0:Float, y0:Float, x1:Float, y1:Float):State;
	function drawCircle(x0:Float, y0:Float, x1:Float, y1:Float):State;
	function drawEllipse(x0:Float, y0:Float, rx:Float, ry:Float, a0:Float, a1:Float):State;
	function drawLine(x0:Float, y0:Float, x1:Float, y1:Float):State;
	function drawPoint(x:Float, y:Float):State;
	@:overload(function(x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, coords:haxe.extern.Rest<Float>):State { })
	function drawPolygon(x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float):State;
	@:overload(function(x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, coords:haxe.extern.Rest<Float>):State { })
	function drawPolyline(x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float):State;
	@:overload(function(x0:Float, y0:Float, x1:Float, y1:Float, rc:Float):State { })
	@:overload(function(x0:Float, y0:Float, x1:Float, y1:Float, wc:Float, hc:Float):State { })
	function drawRectangle(x0:Float, y0:Float, x1:Float, y1:Float):State;
	@:overload(function(x:Float, y:Float, text:String, gravity:North):State { })
	@:overload(function(x:Float, y:Float, text:String, gravity:NorthEast):State { })
	@:overload(function(x:Float, y:Float, text:String, gravity:West):State { })
	@:overload(function(x:Float, y:Float, text:String, gravity:Center):State { })
	@:overload(function(x:Float, y:Float, text:String, gravity:East):State { })
	@:overload(function(x:Float, y:Float, text:String, gravity:SouthWest):State { })
	@:overload(function(x:Float, y:Float, text:String, gravity:South):State { })
	@:overload(function(x:Float, y:Float, text:String, gravity:SouthEast):State { })
	@:overload(function(x:Float, y:Float, text:String, ?gravity:String):State { })
	function drawText(x:Float, y:Float, text:String, gravity:NorthWest):State;
	function fill(color:String):State;
	function font(name:String, ?size:Float):State;
	function fontSize(size:Float):State;
	function stroke(color:String, ?width:Float):State;
	function strokeWidth(width:Float):State;
	@:overload(function(property:Color, x:Float, y:Float, method:Replace):State { })
	@:overload(function(property:Color, x:Float, y:Float, method:Floodfill):State { })
	@:overload(function(property:Color, x:Float, y:Float, method:Filltoborder):State { })
	@:overload(function(property:Color, x:Float, y:Float, method:Reset):State { })
	@:overload(function(property:Matte, x:Float, y:Float, method:Point):State { })
	@:overload(function(property:Matte, x:Float, y:Float, method:Replace):State { })
	@:overload(function(property:Matte, x:Float, y:Float, method:Floodfill):State { })
	@:overload(function(property:Matte, x:Float, y:Float, method:Filltoborder):State { })
	@:overload(function(property:Matte, x:Float, y:Float, method:Reset):State { })
	@:overload(function(property:String, x:Float, y:Float, method:String):State { })
	function setDraw(property:Color, x:Float, y:Float, method:Point):State;
	@:overload(function(format:String, ?callback:WriteCallback):stream.PassThrough { })
	function stream(?callback:WriteCallback):stream.PassThrough;
	@:overload(function(format:String, callback:Error -> Buffer -> Dynamic):stream.PassThrough { })
	function toBuffer(callback:Error -> Buffer -> Dynamic):stream.PassThrough;
	function write(filename:String, callback:WriteCallback):Void;
};
typedef SubClass = { };
extern class MTopLevel {
	static function compare(filename1:String, filename2:String, callback:CompareCallback):Void;
	static function compare(filename1:String, filename2:String, tolerance:Float, callback:CompareCallback):Void;
	static function compare(filename1:String, filename2:String, options:CompareOptions, callback:CompareCallback):Void;
	static function subClass(options:ClassOptions):SubClass;
}
