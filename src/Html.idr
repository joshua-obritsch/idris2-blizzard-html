||| The `Html` module provides a set of data types and functions for generating HTML elements.
|||
||| These elements can be used to generate HTML documents programmatically, without relying on string concatenation or
||| other techniques that can be error-prone and difficult to maintain.
|||
||| Each function in this module returns an `Html` value that represents an HTML element. `Html` values can be composed
||| using other `Html` values to create complex HTML documents.
|||
||| Example:
|||
||| ```idris example
||| import Html
||| import Html.Attributes as Attr
|||
||| myPage : Html
||| myPage =
|||     Html.article [ Attr.class "main" ]
|||         [ Html.h1 []
|||             [ Html.text "My Heading" ]
|||         , Html.p []
|||             [ Html.text "Lorem ipsum dolor sit amet." ]
|||         ]
||| ```
|||
||| This example generates an HTML `article` element with a `class` attribute set to `"main"`, containing an `h1`
||| element with the text `"My Heading"`, and a `p` element with the text `"Lorem ipsum dolor sit amet."`.

module Html


import Html.Attributes


||| Represents an HTML element.
|||
||| This data type can be used to generate HTML elements programmatically using the functions provided by the `Html`
||| module.
export
data Html
    = ||| Represents a text node in an HTML element.
      TextNode   String

    | ||| Represents an HTML element with no child nodes.
      LeafNode   String (List Attribute)

    | ||| Represents an HTML element with child nodes.
      ParentNode String (List Attribute) (List Html)

    | ||| Represents an HTML document root node.
      RootNode   String                  (List Html)


Interpolation Html
Interpolation (List Html)


public export
Interpolation Html where
    interpolate (TextNode   text                    ) = text
    interpolate (LeafNode   name []                 ) = "<\{name}>"
    interpolate (LeafNode   name attributes         ) = "<\{name}\{attributes}>"
    interpolate (ParentNode name []         []      ) = "<\{name}></\{name}>"
    interpolate (ParentNode name attributes []      ) = "<\{name}\{attributes}></\{name}>"
    interpolate (ParentNode name []         children) = "<\{name}>\{children}</\{name}>"
    interpolate (ParentNode name attributes children) = "<\{name}\{attributes}>\{children}</\{name}>"
    interpolate (RootNode   root            []      ) = "<!\{root}>"
    interpolate (RootNode   root            children) = "<!\{root}>\{children}"


public export
Interpolation (List Html) where
    interpolate = concat . map interpolate


FromString Html where
    fromString = TextNode


||| Creates a custom leaf node with the given tag name and attribute list.
|||
||| Example:
|||
||| ```idris example
||| import Html
||| import Html.Attributes
|||
||| myCustomElement : List Attribute -> Html
||| myCustomElement =
|||     Html.customLeafNode "my-custom-element"
||| ```
|||
||| This will generate a `LeafNode` value representing a custom HTML element with the tag name `"my-custom-element"`.
public export
customLeafNode : String -> List Attribute -> Html
customLeafNode = LeafNode


||| Creates a custom parent node with the given tag name, attribute list, and child nodes.
|||
||| Example:
|||
||| ```idris example
||| import Html
||| import Html.Attributes
|||
||| myCustomElement : List Attribute -> List Html -> Html
||| myCustomElement =
|||     Html.customParentNode "my-custom-element"
||| ```
|||
||| This will generate a `ParentNode` value representing a custom HTML element with the tag name `"my-custom-element"`.
public export
customParentNode : String -> List Attribute -> List Html -> Html
customParentNode = ParentNode


||| Creates a custom root node with the given root element tag name and child nodes.
|||
||| Example:
|||
||| ```idris example
||| import Html
|||
||| myCustomElement : List Html -> Html
||| myCustomElement =
|||     Html.customRootNode "my-custom-element"
||| ```
|||
||| This will generate a `RootNode` value representing the root element of an HTML document with the tag name
||| `"my-custom-element"`.
public export
customRootNode : String -> List Html -> Html
customRootNode = RootNode


||| Creates an `Html` DOCTYPE element with the value "html".
|||
public export
doctype : List Html -> Html
doctype = RootNode "DOCTYPE html"


||| Generates an HTML anchor element with the given attributes and contents.
|||
||| Example:
||| ```
||| import Html
||| import Html.Attributes as Attr
|||
||| -- Generate a link to a website
||| myLink : Html
||| myLink =
|||     Html.a
|||         [ Attr.href "https://example.com" ]
|||         [ Html.text "Link to example.com" ]
||| ```
|||
||| This example generates an anchor element with an `href` attribute pointing to `https://example.com/` and containing
||| the text "Link to example.com".
public export
a : List Attribute -> List Html -> Html
a = ParentNode "a"


||| Generates an HTML abbreviation element with the given attributes and contents.
|||
||| Example:
||| ```
||| import Html
||| import Html.Attributes as Attr
|||
||| -- Generate an abbreviation for Random-Access Memory
||| myAbbr : Html
||| myAbbr =
|||     Html.abbr
|||         [ Attr.title "Random-Access Memory" ]
|||         [ Html.text "RAM" ]
||| ```
|||
||| This example generates an abbreviation element with a `title` attribute set to "Random-Access Memory" and
||| containing the text "RAM".
public export
abbr : List Attribute -> List Html -> Html
abbr = ParentNode "abbr"


||| Generates an HTML address element with the given attributes and contents.
|||
||| Example:
||| ```
||| import Html
|||
||| -- Generate an address element containing contact information
||| myAddress : Html
||| myAddress =
|||     Html.address []
|||         [ Html.text "John Smith"
|||         , Html.br
|||         , Html.text "123 Main St."
|||         , Html.br
|||         , Html.text "Anytown, USA 12345"
|||         ]
||| ```
|||
||| This example generates an address element with no attributes and containing contact information for "John Smith" at
||| "123 Main St., Anytown, USA 12345".
public export
address : List Attribute -> List Html -> Html
address = ParentNode "address"


||| Generates an HTML area element with the given attributes.
|||
||| Example:
||| ```
||| import Html
||| import Html.Attributes as Attr
|||
||| -- Generate an area element for a clickable image map
||| myArea : Html
||| myArea =
|||     Html.area
|||         [ Attr.href "#north-america"
|||         , Attr.alt "North America"
|||         , Attr.coords [ 0, 0, 100, 100 ]
|||         ]
||| ```
|||
||| This example generates an area element with `href`, `alt`, and `coords` attributes, which can be used to define a
||| clickable region within an image map. The `href` attribute specifies the URL or location to which the user should
||| be taken when the area is clicked, while the `alt` attribute provides alternative text for the area in case the
||| image cannot be displayed. The `coords` attribute defines the shape and size of the area, in terms of pixel
||| coordinates relative to the top-left corner of the image.
public export
area : List Attribute -> Html
area = LeafNode "area"


public export
article : List Attribute -> List Html -> Html
article = ParentNode "article"


public export
aside : List Attribute -> List Html -> Html
aside = ParentNode "aside"


public export
audio : List Attribute -> List Html -> Html
audio = ParentNode "audio"


public export
b : List Attribute -> List Html -> Html
b = ParentNode "b"


public export
base : List Attribute -> Html
base = LeafNode "base"


public export
bdi : List Attribute -> List Html -> Html
bdi = ParentNode "bdi"


public export
bdo : List Attribute -> List Html -> Html
bdo = ParentNode "bdo"


public export
blockquote : List Attribute -> List Html -> Html
blockquote = ParentNode "blockquote"


public export
body : List Attribute -> List Html -> Html
body = ParentNode "body"


public export
br : List Attribute -> Html
br = LeafNode "br"


public export
button : List Attribute -> List Html -> Html
button = ParentNode "button"


public export
canvas : List Attribute -> List Html -> Html
canvas = ParentNode "canvas"


public export
caption : List Attribute -> List Html -> Html
caption = ParentNode "caption"


public export
cite : List Attribute -> List Html -> Html
cite = ParentNode "cite"


public export
code : List Attribute -> List Html -> Html
code = ParentNode "code"


public export
col : List Attribute -> Html
col = LeafNode "col"


public export
colgroup : List Attribute -> List Html -> Html
colgroup = ParentNode "colgroup"


public export
data_ : List Attribute -> List Html -> Html
data_ = ParentNode "data_"


public export
datalist : List Attribute -> List Html -> Html
datalist = ParentNode "datalist"


public export
dd : List Attribute -> List Html -> Html
dd = ParentNode "dd"


public export
del : List Attribute -> List Html -> Html
del = ParentNode "del"


public export
details : List Attribute -> List Html -> Html
details = ParentNode "details"


public export
dfn : List Attribute -> List Html -> Html
dfn = ParentNode "dfn"


public export
dialog : List Attribute -> List Html -> Html
dialog = ParentNode "dialog"


public export
div : List Attribute -> List Html -> Html
div = ParentNode "div"


public export
dl : List Attribute -> List Html -> Html
dl = ParentNode "dl"


public export
dt : List Attribute -> List Html -> Html
dt = ParentNode "dt"


public export
em : List Attribute -> List Html -> Html
em = ParentNode "em"


public export
embed : List Attribute -> Html
embed = LeafNode "embed"


public export
fieldset : List Attribute -> List Html -> Html
fieldset = ParentNode "fieldset"


public export
figcaption : List Attribute -> List Html -> Html
figcaption = ParentNode "figcaption"


public export
figure : List Attribute -> List Html -> Html
figure = ParentNode "figure"


public export
footer : List Attribute -> List Html -> Html
footer = ParentNode "footer"


public export
form : List Attribute -> List Html -> Html
form = ParentNode "form"


public export
h1 : List Attribute -> List Html -> Html
h1 = ParentNode "h1"


public export
h2 : List Attribute -> List Html -> Html
h2 = ParentNode "h2"


public export
h3 : List Attribute -> List Html -> Html
h3 = ParentNode "h3"


public export
h4 : List Attribute -> List Html -> Html
h4 = ParentNode "h4"


public export
h5 : List Attribute -> List Html -> Html
h5 = ParentNode "h5"


public export
h6 : List Attribute -> List Html -> Html
h6 = ParentNode "h6"


public export
head : List Attribute -> List Html -> Html
head = ParentNode "head"


public export
header : List Attribute -> List Html -> Html
header = ParentNode "header"


public export
hgroup : List Attribute -> List Html -> Html
hgroup = ParentNode "hgroup"


public export
hr : List Attribute -> Html
hr = LeafNode "hr"


public export
html : List Attribute -> List Html -> Html
html = ParentNode "html"


public export
i : List Attribute -> List Html -> Html
i = ParentNode "i"


public export
iframe : List Attribute -> List Html -> Html
iframe = ParentNode "iframe"


public export
img : List Attribute -> Html
img = LeafNode "img"


public export
input : List Attribute -> Html
input = LeafNode "input"


public export
ins : List Attribute -> List Html -> Html
ins = ParentNode "ins"


public export
kbd : List Attribute -> List Html -> Html
kbd = ParentNode "kbd"


public export
label : List Attribute -> List Html -> Html
label = ParentNode "label"


public export
legend : List Attribute -> List Html -> Html
legend = ParentNode "legend"


public export
li : List Attribute -> List Html -> Html
li = ParentNode "li"


public export
link : List Attribute -> Html
link = LeafNode "link"


public export
main : List Attribute -> List Html -> Html
main = ParentNode "main"


public export
map : List Attribute -> List Html -> Html
map = ParentNode "map"


public export
mark : List Attribute -> List Html -> Html
mark = ParentNode "mark"


public export
menu : List Attribute -> List Html -> Html
menu = ParentNode "menu"


public export
meta : List Attribute -> Html
meta = LeafNode "meta"


public export
meter : List Attribute -> List Html -> Html
meter = ParentNode "meter"


public export
nav : List Attribute -> List Html -> Html
nav = ParentNode "nav"


public export
noscript : List Attribute -> List Html -> Html
noscript = ParentNode "noscript"


public export
object : List Attribute -> List Html -> Html
object = ParentNode "object"


public export
ol : List Attribute -> List Html -> Html
ol = ParentNode "ol"


public export
optgroup : List Attribute -> List Html -> Html
optgroup = ParentNode "optgroup"


public export
option : List Attribute -> List Html -> Html
option = ParentNode "option"


public export
output : List Attribute -> List Html -> Html
output = ParentNode "output"


public export
p : List Attribute -> List Html -> Html
p = ParentNode "p"


public export
picture : List Attribute -> List Html -> Html
picture = ParentNode "picture"


public export
pre : List Attribute -> List Html -> Html
pre = ParentNode "pre"


public export
progress : List Attribute -> List Html -> Html
progress = ParentNode "progress"


public export
q : List Attribute -> List Html -> Html
q = ParentNode "q"


public export
rp : List Attribute -> List Html -> Html
rp = ParentNode "rp"


public export
rt : List Attribute -> List Html -> Html
rt = ParentNode "rt"


public export
ruby : List Attribute -> List Html -> Html
ruby = ParentNode "ruby"


public export
s : List Attribute -> List Html -> Html
s = ParentNode "s"


public export
samp : List Attribute -> List Html -> Html
samp = ParentNode "samp"


public export
script : List Attribute -> List Html -> Html
script = ParentNode "script"


public export
section : List Attribute -> List Html -> Html
section = ParentNode "section"


public export
select : List Attribute -> List Html -> Html
select = ParentNode "select"


public export
slot : List Attribute -> List Html -> Html
slot = ParentNode "slot"


public export
small : List Attribute -> List Html -> Html
small = ParentNode "small"


public export
source : List Attribute -> Html
source = LeafNode "source"


public export
span : List Attribute -> List Html -> Html
span = ParentNode "span"


public export
strong : List Attribute -> List Html -> Html
strong = ParentNode "strong"


public export
style : List Attribute -> List Html -> Html
style = ParentNode "style"


public export
sub : List Attribute -> List Html -> Html
sub = ParentNode "sub"


public export
summary : List Attribute -> List Html -> Html
summary = ParentNode "summary"


public export
sup : List Attribute -> List Html -> Html
sup = ParentNode "sup"


public export
table : List Attribute -> List Html -> Html
table = ParentNode "table"


public export
tbody : List Attribute -> List Html -> Html
tbody = ParentNode "tbody"


public export
td : List Attribute -> List Html -> Html
td = ParentNode "td"


public export
template : List Attribute -> List Html -> Html
template = ParentNode "template"


public export
textarea : List Attribute -> List Html -> Html
textarea = ParentNode "textarea"


public export
tfoot : List Attribute -> List Html -> Html
tfoot = ParentNode "tfoot"


public export
th : List Attribute -> List Html -> Html
th = ParentNode "th"


public export
thead : List Attribute -> List Html -> Html
thead = ParentNode "thead"


public export
time : List Attribute -> List Html -> Html
time = ParentNode "time"


public export
title : List Attribute -> List Html -> Html
title = ParentNode "title"


public export
tr : List Attribute -> List Html -> Html
tr = ParentNode "tr"


public export
track : List Attribute -> Html
track = LeafNode "track"


public export
u : List Attribute -> List Html -> Html
u = ParentNode "u"


public export
ul : List Attribute -> List Html -> Html
ul = ParentNode "ul"


public export
var : List Attribute -> List Html -> Html
var = ParentNode "var"


public export
video : List Attribute -> List Html -> Html
video = ParentNode "video"


public export
wbr : List Attribute -> Html
wbr = LeafNode "wbr"
