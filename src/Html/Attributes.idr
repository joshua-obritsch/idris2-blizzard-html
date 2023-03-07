module Html.Attributes


export
data Attribute
    = BoolAttr String Bool
    | TextAttr String String


export
Interpolation Attribute where
    interpolate (BoolAttr _   False) = ""
    interpolate (BoolAttr key True ) = " \{key}"
    interpolate (TextAttr _   ""   ) = ""
    interpolate (TextAttr key value) = " \{key}=\"\{value}\""


export
Interpolation (List Attribute) where
    interpolate = concat . map interpolate


export
abbr : String -> Attribute
abbr = TextAttr "abbr"


export
accept : String -> Attribute
accept = TextAttr "accept"


export
acceptCharset : String -> Attribute
acceptCharset = TextAttr "accept-charset"


export
accesskey : String -> Attribute
accesskey = TextAttr "accesskey"


export
action : String -> Attribute
action = TextAttr "action"


export
allow : String -> Attribute
allow = TextAttr "allow"


export
allowfullscreen : Bool -> Attribute
allowfullscreen = BoolAttr "allowfullscreen"


export
alt : String -> Attribute
alt = TextAttr "alt"


export
as : String -> Attribute
as = TextAttr "as"


export
async : Bool -> Attribute
async = BoolAttr "async"


export
autocapitalize : String -> Attribute
autocapitalize = TextAttr "autocapitalize"


export
autocomplete : String -> Attribute
autocomplete = TextAttr "autocomplete"


export
autofocus : Bool -> Attribute
autofocus = BoolAttr "autofocus"


export
autoplay : Bool -> Attribute
autoplay = BoolAttr "autoplay"


export
blocking : String -> Attribute
blocking = TextAttr "blocking"


export
charset : String -> Attribute
charset = TextAttr "charset"


export
checked : Bool -> Attribute
checked = BoolAttr "checked"


export
cite : String -> Attribute
cite = TextAttr "cite"


export
class_ : String -> Attribute
class_ = TextAttr "class"


export
color : String -> Attribute
color = TextAttr "color"


export
cols : String -> Attribute
cols = TextAttr "cols"


export
colspan : String -> Attribute
colspan = TextAttr "colspan"


export
content : String -> Attribute
content = TextAttr "content"


export
contenteditable : String -> Attribute
contenteditable = TextAttr "contenteditable"


export
controls : Bool -> Attribute
controls = BoolAttr "controls"


export
coords : String -> Attribute
coords = TextAttr "coords"


export
crossorigin : String -> Attribute
crossorigin = TextAttr "crossorigin"


export
data_ : String -> Attribute
data_ = TextAttr "data"


export
datetime : String -> Attribute
datetime = TextAttr "datetime"


export
decoding : String -> Attribute
decoding = TextAttr "decoding"


export
default_ : Bool -> Attribute
default_ = BoolAttr "default"


export
defer : Bool -> Attribute
defer = BoolAttr "defer"


export
dir : String -> Attribute
dir = TextAttr "dir"


export
disabled : Bool -> Attribute
disabled = BoolAttr "disabled"


export
download : String -> Attribute
download = TextAttr "download"


export
draggable : String -> Attribute
draggable = TextAttr "draggable"


export
enctype : String -> Attribute
enctype = TextAttr "enctype"


export
enterkeyhint : String -> Attribute
enterkeyhint = TextAttr "enterkeyhint"


export
for : String -> Attribute
for = TextAttr "for"


export
form : String -> Attribute
form = TextAttr "form"


export
formaction : String -> Attribute
formaction = TextAttr "formaction"


export
formenctype : String -> Attribute
formenctype = TextAttr "formenctype"


export
formmethod : String -> Attribute
formmethod = TextAttr "formmethod"


export
formnovalidate : Bool -> Attribute
formnovalidate = BoolAttr "formnovalidate"


export
formtarget : String -> Attribute
formtarget = TextAttr "formtarget"


export
headers : String -> Attribute
headers = TextAttr "headers"


export
height : String -> Attribute
height = TextAttr "height"


export
hidden : Bool -> Attribute
hidden = BoolAttr "hidden"


export
high : String -> Attribute
high = TextAttr "high"


export
href : String -> Attribute
href = TextAttr "href"


export
hreflang : String -> Attribute
hreflang = TextAttr "hreflang"


export
httpEquiv : String -> Attribute
httpEquiv = TextAttr "http-equiv"


export
id : String -> Attribute
id = TextAttr "id"


export
imagesizes : String -> Attribute
imagesizes = TextAttr "imagesizes"


export
imagesrcset : String -> Attribute
imagesrcset = TextAttr "imagesrcset"


export
inert : Bool -> Attribute
inert = BoolAttr "inert"


export
inputmode : String -> Attribute
inputmode = TextAttr "inputmode"


export
integrity : String -> Attribute
integrity = TextAttr "integrity"


export
is : String -> Attribute
is = TextAttr "is"


export
ismap : Bool -> Attribute
ismap = BoolAttr "ismap"


export
itemid : String -> Attribute
itemid = TextAttr "itemid"


export
itemprop : String -> Attribute
itemprop = TextAttr "itemprop"


export
itemref : String -> Attribute
itemref = TextAttr "itemref"


export
itemscope : Bool -> Attribute
itemscope = BoolAttr "itemscope"


export
itemtype : String -> Attribute
itemtype = TextAttr "itemtype"


export
kind : String -> Attribute
kind = TextAttr "kind"


export
label : String -> Attribute
label = TextAttr "label"


export
lang : String -> Attribute
lang = TextAttr "lang"


export
list : String -> Attribute
list = TextAttr "list"


export
loading : String -> Attribute
loading = TextAttr "loading"


export
loop : Bool -> Attribute
loop = BoolAttr "loop"


export
low : String -> Attribute
low = TextAttr "low"


export
max : String -> Attribute
max = TextAttr "max"


export
maxlength : String -> Attribute
maxlength = TextAttr "maxlength"


export
media : String -> Attribute
media = TextAttr "media"


export
method : String -> Attribute
method = TextAttr "method"


export
min : String -> Attribute
min = TextAttr "min"


export
minlength : String -> Attribute
minlength = TextAttr "minlength"


export
multiple : Bool -> Attribute
multiple = BoolAttr "multiple"


export
muted : Bool -> Attribute
muted = BoolAttr "muted"


export
name : String -> Attribute
name = TextAttr "name"


export
nomodule : Bool -> Attribute
nomodule = BoolAttr "nomodule"


export
nonce : String -> Attribute
nonce = TextAttr "nonce"


export
novalidate : Bool -> Attribute
novalidate = BoolAttr "novalidate"


export
open_ : Bool -> Attribute
open_ = BoolAttr "open"


export
optimum : String -> Attribute
optimum = TextAttr "optimum"


export
pattern : String -> Attribute
pattern = TextAttr "pattern"


export
ping : String -> Attribute
ping = TextAttr "ping"


export
placeholder : String -> Attribute
placeholder = TextAttr "placeholder"


export
playsinline : Bool -> Attribute
playsinline = BoolAttr "playsinline"


export
poster : String -> Attribute
poster = TextAttr "poster"


export
preload : String -> Attribute
preload = TextAttr "preload"


export
readonly : Bool -> Attribute
readonly = BoolAttr "readonly"


export
referrerpolicy : String -> Attribute
referrerpolicy = TextAttr "referrerpolicy"


export
rel : String -> Attribute
rel = TextAttr "rel"


export
required : Bool -> Attribute
required = BoolAttr "required"


export
reversed : Bool -> Attribute
reversed = BoolAttr "reversed"


export
rows : String -> Attribute
rows = TextAttr "rows"


export
rowspan : String -> Attribute
rowspan = TextAttr "rowspan"


export
sandbox : String -> Attribute
sandbox = TextAttr "sandbox"


export
scope : String -> Attribute
scope = TextAttr "scope"


export
selected : Bool -> Attribute
selected = BoolAttr "selected"


export
shape : String -> Attribute
shape = TextAttr "shape"


export
size : String -> Attribute
size = TextAttr "size"


export
sizes : String -> Attribute
sizes = TextAttr "sizes"


export
slot : String -> Attribute
slot = TextAttr "slot"


export
span : String -> Attribute
span = TextAttr "span"


export
spellcheck : String -> Attribute
spellcheck = TextAttr "spellcheck"


export
src : String -> Attribute
src = TextAttr "src"


export
srcdoc : String -> Attribute
srcdoc = TextAttr "srcdoc"


export
srclang : String -> Attribute
srclang = TextAttr "srclang"


export
srcset : String -> Attribute
srcset = TextAttr "srcset"


export
start : String -> Attribute
start = TextAttr "start"


export
step : String -> Attribute
step = TextAttr "step"


export
style : String -> Attribute
style = TextAttr "style"


export
tabindex : String -> Attribute
tabindex = TextAttr "tabindex"


export
target : String -> Attribute
target = TextAttr "target"


export
title : String -> Attribute
title = TextAttr "title"


export
translate : String -> Attribute
translate = TextAttr "translate"


export
type_ : String -> Attribute
type_ = TextAttr "type"


export
usemap : String -> Attribute
usemap = TextAttr "usemap"


export
value : String -> Attribute
value = TextAttr "value"


export
width : String -> Attribute
width = TextAttr "width"


export
wrap : String -> Attribute
wrap = TextAttr "wrap"


export
onauxclick : String -> Attribute
onauxclick = TextAttr "onauxclick"


export
onafterprint : String -> Attribute
onafterprint = TextAttr "onafterprint"


export
onbeforematch : String -> Attribute
onbeforematch = TextAttr "onbeforematch"


export
onbeforeprint : String -> Attribute
onbeforeprint = TextAttr "onbeforeprint"


export
onbeforeunload : String -> Attribute
onbeforeunload = TextAttr "onbeforeunload"


export
onblur : String -> Attribute
onblur = TextAttr "onblur"


export
oncancel : String -> Attribute
oncancel = TextAttr "oncancel"


export
oncanplay : String -> Attribute
oncanplay = TextAttr "oncanplay"


export
oncanplaythrough : String -> Attribute
oncanplaythrough = TextAttr "oncanplaythrough"


export
onchange : String -> Attribute
onchange = TextAttr "onchange"


export
onclick : String -> Attribute
onclick = TextAttr "onclick"


export
onclose : String -> Attribute
onclose = TextAttr "onclose"


export
oncontextlost : String -> Attribute
oncontextlost = TextAttr "oncontextlost"


export
oncontextmenu : String -> Attribute
oncontextmenu = TextAttr "oncontextmenu"


export
oncontextrestored : String -> Attribute
oncontextrestored = TextAttr "oncontextrestored"


export
oncopy : String -> Attribute
oncopy = TextAttr "oncopy"


export
oncuechange : String -> Attribute
oncuechange = TextAttr "oncuechange"


export
oncut : String -> Attribute
oncut = TextAttr "oncut"


export
ondblclick : String -> Attribute
ondblclick = TextAttr "ondblclick"


export
ondrag : String -> Attribute
ondrag = TextAttr "ondrag"


export
ondragend : String -> Attribute
ondragend = TextAttr "ondragend"


export
ondragenter : String -> Attribute
ondragenter = TextAttr "ondragenter"


export
ondragleave : String -> Attribute
ondragleave = TextAttr "ondragleave"


export
ondragover : String -> Attribute
ondragover = TextAttr "ondragover"


export
ondragstart : String -> Attribute
ondragstart = TextAttr "ondragstart"


export
ondrop : String -> Attribute
ondrop = TextAttr "ondrop"


export
ondurationchange : String -> Attribute
ondurationchange = TextAttr "ondurationchange"


export
onemptied : String -> Attribute
onemptied = TextAttr "onemptied"


export
onended : String -> Attribute
onended = TextAttr "onended"


export
onerror : String -> Attribute
onerror = TextAttr "onerror"


export
onfocus : String -> Attribute
onfocus = TextAttr "onfocus"


export
onformdata : String -> Attribute
onformdata = TextAttr "onformdata"


export
onhashchange : String -> Attribute
onhashchange = TextAttr "onhashchange"


export
oninput : String -> Attribute
oninput = TextAttr "oninput"


export
oninvalid : String -> Attribute
oninvalid = TextAttr "oninvalid"


export
onkeydown : String -> Attribute
onkeydown = TextAttr "onkeydown"


export
onkeypress : String -> Attribute
onkeypress = TextAttr "onkeypress"


export
onkeyup : String -> Attribute
onkeyup = TextAttr "onkeyup"


export
onlanguagechange : String -> Attribute
onlanguagechange = TextAttr "onlanguagechange"


export
onload : String -> Attribute
onload = TextAttr "onload"


export
onloadeddata : String -> Attribute
onloadeddata = TextAttr "onloadeddata"


export
onloadedmetadata : String -> Attribute
onloadedmetadata = TextAttr "onloadedmetadata"


export
onloadstart : String -> Attribute
onloadstart = TextAttr "onloadstart"


export
onmessage : String -> Attribute
onmessage = TextAttr "onmessage"


export
onmessageerror : String -> Attribute
onmessageerror = TextAttr "onmessageerror"


export
onmousedown : String -> Attribute
onmousedown = TextAttr "onmousedown"


export
onmouseenter : String -> Attribute
onmouseenter = TextAttr "onmouseenter"


export
onmouseleave : String -> Attribute
onmouseleave = TextAttr "onmouseleave"


export
onmousemove : String -> Attribute
onmousemove = TextAttr "onmousemove"


export
onmouseout : String -> Attribute
onmouseout = TextAttr "onmouseout"


export
onmouseover : String -> Attribute
onmouseover = TextAttr "onmouseover"


export
onmouseup : String -> Attribute
onmouseup = TextAttr "onmouseup"


export
onoffline : String -> Attribute
onoffline = TextAttr "onoffline"


export
ononline : String -> Attribute
ononline = TextAttr "ononline"


export
onpagehide : String -> Attribute
onpagehide = TextAttr "onpagehide"


export
onpageshow : String -> Attribute
onpageshow = TextAttr "onpageshow"


export
onpaste : String -> Attribute
onpaste = TextAttr "onpaste"


export
onpause : String -> Attribute
onpause = TextAttr "onpause"


export
onplay : String -> Attribute
onplay = TextAttr "onplay"


export
onplaying : String -> Attribute
onplaying = TextAttr "onplaying"


export
onpopstate : String -> Attribute
onpopstate = TextAttr "onpopstate"


export
onprogress : String -> Attribute
onprogress = TextAttr "onprogress"


export
onratechange : String -> Attribute
onratechange = TextAttr "onratechange"


export
onreset : String -> Attribute
onreset = TextAttr "onreset"


export
onresize : String -> Attribute
onresize = TextAttr "onresize"


export
onrejectionhandled : String -> Attribute
onrejectionhandled = TextAttr "onrejectionhandled"


export
onscroll : String -> Attribute
onscroll = TextAttr "onscroll"


export
onsecuritypolicyviolation : String -> Attribute
onsecuritypolicyviolation = TextAttr "onsecuritypolicyviolation"


export
onseeked : String -> Attribute
onseeked = TextAttr "onseeked"


export
onseeking : String -> Attribute
onseeking = TextAttr "onseeking"


export
onselect : String -> Attribute
onselect = TextAttr "onselect"


export
onslotchange : String -> Attribute
onslotchange = TextAttr "onslotchange"


export
onstalled : String -> Attribute
onstalled = TextAttr "onstalled"


export
onstorage : String -> Attribute
onstorage = TextAttr "onstorage"


export
onsubmit : String -> Attribute
onsubmit = TextAttr "onsubmit"


export
onsuspend : String -> Attribute
onsuspend = TextAttr "onsuspend"


export
ontimeupdate : String -> Attribute
ontimeupdate = TextAttr "ontimeupdate"


export
ontoggle : String -> Attribute
ontoggle = TextAttr "ontoggle"


export
onunhandledrejection : String -> Attribute
onunhandledrejection = TextAttr "onunhandledrejection"


export
onunload : String -> Attribute
onunload = TextAttr "onunload"


export
onvolumechange : String -> Attribute
onvolumechange = TextAttr "onvolumechange"


export
onwaiting : String -> Attribute
onwaiting = TextAttr "onwaiting"


export
onwheel : String -> Attribute
onwheel = TextAttr "onwheel"
