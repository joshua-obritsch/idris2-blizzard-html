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
||| This will generate an HTML `article` element with a `class` attribute set to `"main"`, containing an `h1` element
||| with the text `"My Heading"`, and a `p` element with the text `"Lorem ipsum dolor sit amet."`.

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


mutual
    export
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


    export
    Interpolation (List Html) where
        interpolate = concat . map interpolate


export
text : String -> Html
text = TextNode


export
leaf : String -> List Attribute -> Html
leaf = LeafNode


export
parent : String -> List Attribute -> List Html -> Html
parent = ParentNode


export
root : String -> List Html -> Html
root = RootNode


export
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
export
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
export
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
export
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
export
area : List Attribute -> Html
area = LeafNode "area"


export
article : List Attribute -> List Html -> Html
article = ParentNode "article"


export
aside : List Attribute -> List Html -> Html
aside = ParentNode "aside"


export
audio : List Attribute -> List Html -> Html
audio = ParentNode "audio"


export
b : List Attribute -> List Html -> Html
b = ParentNode "b"


export
base : List Attribute -> Html
base = LeafNode "base"


export
bdi : List Attribute -> List Html -> Html
bdi = ParentNode "bdi"


export
bdo : List Attribute -> List Html -> Html
bdo = ParentNode "bdo"


export
blockquote : List Attribute -> List Html -> Html
blockquote = ParentNode "blockquote"


export
body : List Attribute -> List Html -> Html
body = ParentNode "body"


export
br : List Attribute -> Html
br = LeafNode "br"


export
button : List Attribute -> List Html -> Html
button = ParentNode "button"


export
canvas : List Attribute -> List Html -> Html
canvas = ParentNode "canvas"


export
caption : List Attribute -> List Html -> Html
caption = ParentNode "caption"


export
cite : List Attribute -> List Html -> Html
cite = ParentNode "cite"


export
code : List Attribute -> List Html -> Html
code = ParentNode "code"


export
col : List Attribute -> Html
col = LeafNode "col"


export
colgroup : List Attribute -> List Html -> Html
colgroup = ParentNode "colgroup"


export
data_ : List Attribute -> List Html -> Html
data_ = ParentNode "data_"


export
datalist : List Attribute -> List Html -> Html
datalist = ParentNode "datalist"


export
dd : List Attribute -> List Html -> Html
dd = ParentNode "dd"


export
del : List Attribute -> List Html -> Html
del = ParentNode "del"


export
details : List Attribute -> List Html -> Html
details = ParentNode "details"


export
dfn : List Attribute -> List Html -> Html
dfn = ParentNode "dfn"


export
dialog : List Attribute -> List Html -> Html
dialog = ParentNode "dialog"


export
div : List Attribute -> List Html -> Html
div = ParentNode "div"


export
dl : List Attribute -> List Html -> Html
dl = ParentNode "dl"


export
dt : List Attribute -> List Html -> Html
dt = ParentNode "dt"


export
em : List Attribute -> List Html -> Html
em = ParentNode "em"


export
embed : List Attribute -> Html
embed = LeafNode "embed"


export
fieldset : List Attribute -> List Html -> Html
fieldset = ParentNode "fieldset"


export
figcaption : List Attribute -> List Html -> Html
figcaption = ParentNode "figcaption"


export
figure : List Attribute -> List Html -> Html
figure = ParentNode "figure"


export
footer : List Attribute -> List Html -> Html
footer = ParentNode "footer"


export
form : List Attribute -> List Html -> Html
form = ParentNode "form"


export
h1 : List Attribute -> List Html -> Html
h1 = ParentNode "h1"


export
h2 : List Attribute -> List Html -> Html
h2 = ParentNode "h2"


export
h3 : List Attribute -> List Html -> Html
h3 = ParentNode "h3"


export
h4 : List Attribute -> List Html -> Html
h4 = ParentNode "h4"


export
h5 : List Attribute -> List Html -> Html
h5 = ParentNode "h5"


export
h6 : List Attribute -> List Html -> Html
h6 = ParentNode "h6"


export
head : List Attribute -> List Html -> Html
head = ParentNode "head"


export
header : List Attribute -> List Html -> Html
header = ParentNode "header"


export
hgroup : List Attribute -> List Html -> Html
hgroup = ParentNode "hgroup"


export
hr : List Attribute -> Html
hr = LeafNode "hr"


export
html : List Attribute -> List Html -> Html
html = ParentNode "html"


export
i : List Attribute -> List Html -> Html
i = ParentNode "i"


export
iframe : List Attribute -> List Html -> Html
iframe = ParentNode "iframe"


export
img : List Attribute -> Html
img = LeafNode "img"


export
input : List Attribute -> Html
input = LeafNode "input"


export
ins : List Attribute -> List Html -> Html
ins = ParentNode "ins"


export
kbd : List Attribute -> List Html -> Html
kbd = ParentNode "kbd"


export
label : List Attribute -> List Html -> Html
label = ParentNode "label"


export
legend : List Attribute -> List Html -> Html
legend = ParentNode "legend"


export
li : List Attribute -> List Html -> Html
li = ParentNode "li"


export
link : List Attribute -> Html
link = LeafNode "link"


export
main : List Attribute -> List Html -> Html
main = ParentNode "main"


export
map : List Attribute -> List Html -> Html
map = ParentNode "map"


export
mark : List Attribute -> List Html -> Html
mark = ParentNode "mark"


export
menu : List Attribute -> List Html -> Html
menu = ParentNode "menu"


export
meta : List Attribute -> Html
meta = LeafNode "meta"


export
meter : List Attribute -> List Html -> Html
meter = ParentNode "meter"


export
nav : List Attribute -> List Html -> Html
nav = ParentNode "nav"


export
noscript : List Attribute -> List Html -> Html
noscript = ParentNode "noscript"


export
object : List Attribute -> List Html -> Html
object = ParentNode "object"


export
ol : List Attribute -> List Html -> Html
ol = ParentNode "ol"


export
optgroup : List Attribute -> List Html -> Html
optgroup = ParentNode "optgroup"


export
option : List Attribute -> List Html -> Html
option = ParentNode "option"


export
output : List Attribute -> List Html -> Html
output = ParentNode "output"


export
p : List Attribute -> List Html -> Html
p = ParentNode "p"


export
picture : List Attribute -> List Html -> Html
picture = ParentNode "picture"


export
pre : List Attribute -> List Html -> Html
pre = ParentNode "pre"


export
progress : List Attribute -> List Html -> Html
progress = ParentNode "progress"


export
q : List Attribute -> List Html -> Html
q = ParentNode "q"


export
rp : List Attribute -> List Html -> Html
rp = ParentNode "rp"


export
rt : List Attribute -> List Html -> Html
rt = ParentNode "rt"


export
ruby : List Attribute -> List Html -> Html
ruby = ParentNode "ruby"


export
s : List Attribute -> List Html -> Html
s = ParentNode "s"


export
samp : List Attribute -> List Html -> Html
samp = ParentNode "samp"


export
script : List Attribute -> List Html -> Html
script = ParentNode "script"


export
section : List Attribute -> List Html -> Html
section = ParentNode "section"


export
select : List Attribute -> List Html -> Html
select = ParentNode "select"


export
slot : List Attribute -> List Html -> Html
slot = ParentNode "slot"


export
small : List Attribute -> List Html -> Html
small = ParentNode "small"


export
source : List Attribute -> Html
source = LeafNode "source"


export
span : List Attribute -> List Html -> Html
span = ParentNode "span"


export
strong : List Attribute -> List Html -> Html
strong = ParentNode "strong"


export
style : List Attribute -> List Html -> Html
style = ParentNode "style"


export
sub : List Attribute -> List Html -> Html
sub = ParentNode "sub"


export
summary : List Attribute -> List Html -> Html
summary = ParentNode "summary"


export
sup : List Attribute -> List Html -> Html
sup = ParentNode "sup"


export
table : List Attribute -> List Html -> Html
table = ParentNode "table"


export
tbody : List Attribute -> List Html -> Html
tbody = ParentNode "tbody"


export
td : List Attribute -> List Html -> Html
td = ParentNode "td"


export
template : List Attribute -> List Html -> Html
template = ParentNode "template"


export
textarea : List Attribute -> List Html -> Html
textarea = ParentNode "textarea"


export
tfoot : List Attribute -> List Html -> Html
tfoot = ParentNode "tfoot"


export
th : List Attribute -> List Html -> Html
th = ParentNode "th"


export
thead : List Attribute -> List Html -> Html
thead = ParentNode "thead"


export
time : List Attribute -> List Html -> Html
time = ParentNode "time"


export
title : List Attribute -> List Html -> Html
title = ParentNode "title"


export
tr : List Attribute -> List Html -> Html
tr = ParentNode "tr"


export
track : List Attribute -> Html
track = LeafNode "track"


export
u : List Attribute -> List Html -> Html
u = ParentNode "u"


export
ul : List Attribute -> List Html -> Html
ul = ParentNode "ul"


export
var : List Attribute -> List Html -> Html
var = ParentNode "var"


export
video : List Attribute -> List Html -> Html
video = ParentNode "video"


export
wbr : List Attribute -> Html
wbr = LeafNode "wbr"
