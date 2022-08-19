module Html


import Html.Attributes


export
data Html
    = Text   String
    | Leaf   String (List Attribute)
    | Parent String (List Attribute) (List Html)
    | Root                           (List Html)


mutual
    export
    ToString Html where
        toString (Text   val               ) = val
        toString (Leaf   tag []            ) = "<\{tag}>"
        toString (Leaf   tag attrs         ) = "<\{tag}\{toString attrs}>"
        toString (Parent tag []    []      ) = "<\{tag}></\{tag}>"
        toString (Parent tag attrs []      ) = "<\{tag}\{toString attrs}></\{tag}>"
        toString (Parent tag []    children) = "<\{tag}>\{toString children}</\{tag}>"
        toString (Parent tag attrs children) = "<\{tag}\{toString attrs}>\{toString children}</\{tag}>"
        toString (Root             []      ) = "<!DOCTYPE html>"
        toString (Root             children) = "<!DOCTYPE html>\{toString children}"


    export
    ToString (List Html) where
        toString = concat . map toString


export
doctype : List Html -> Html
doctype = Root


export
a : List Attribute -> List Html -> Html
a = Parent "a"


export
abbr : List Attribute -> List Html -> Html
abbr = Parent "abbr"


export
address : List Attribute -> List Html -> Html
address = Parent "address"


export
area : List Attribute -> Html
area = Leaf "area"


export
article : List Attribute -> List Html -> Html
article = Parent "article"


export
aside : List Attribute -> List Html -> Html
aside = Parent "aside"


export
audio : List Attribute -> List Html -> Html
audio = Parent "audio"


export
b : List Attribute -> List Html -> Html
b = Parent "b"


export
base : List Attribute -> Html
base = Leaf "base"


export
bdi : List Attribute -> List Html -> Html
bdi = Parent "bdi"


export
bdo : List Attribute -> List Html -> Html
bdo = Parent "bdo"


export
blockquote : List Attribute -> List Html -> Html
blockquote = Parent "blockquote"


export
body : List Attribute -> List Html -> Html
body = Parent "body"


export
br : List Attribute -> Html
br = Leaf "br"


export
button : List Attribute -> List Html -> Html
button = Parent "button"


export
canvas : List Attribute -> List Html -> Html
canvas = Parent "canvas"


export
caption : List Attribute -> List Html -> Html
caption = Parent "caption"


export
cite : List Attribute -> List Html -> Html
cite = Parent "cite"


export
code : List Attribute -> List Html -> Html
code = Parent "code"


export
col : List Attribute -> Html
col = Leaf "col"


export
colgroup : List Attribute -> List Html -> Html
colgroup = Parent "colgroup"


export
data_ : List Attribute -> List Html -> Html
data_ = Parent "data_"


export
datalist : List Attribute -> List Html -> Html
datalist = Parent "datalist"


export
dd : List Attribute -> List Html -> Html
dd = Parent "dd"


export
del : List Attribute -> List Html -> Html
del = Parent "del"


export
details : List Attribute -> List Html -> Html
details = Parent "details"


export
dfn : List Attribute -> List Html -> Html
dfn = Parent "dfn"


export
dialog : List Attribute -> List Html -> Html
dialog = Parent "dialog"


export
div : List Attribute -> List Html -> Html
div = Parent "div"


export
dl : List Attribute -> List Html -> Html
dl = Parent "dl"


export
dt : List Attribute -> List Html -> Html
dt = Parent "dt"


export
em : List Attribute -> List Html -> Html
em = Parent "em"


export
embed : List Attribute -> Html
embed = Leaf "embed"


export
fieldset : List Attribute -> List Html -> Html
fieldset = Parent "fieldset"


export
figcaption : List Attribute -> List Html -> Html
figcaption = Parent "figcaption"


export
figure : List Attribute -> List Html -> Html
figure = Parent "figure"


export
footer : List Attribute -> List Html -> Html
footer = Parent "footer"


export
form : List Attribute -> List Html -> Html
form = Parent "form"


export
h1 : List Attribute -> List Html -> Html
h1 = Parent "h1"


export
h2 : List Attribute -> List Html -> Html
h2 = Parent "h2"


export
h3 : List Attribute -> List Html -> Html
h3 = Parent "h3"


export
h4 : List Attribute -> List Html -> Html
h4 = Parent "h4"


export
h5 : List Attribute -> List Html -> Html
h5 = Parent "h5"


export
h6 : List Attribute -> List Html -> Html
h6 = Parent "h6"


export
head : List Attribute -> List Html -> Html
head = Parent "head"


export
header : List Attribute -> List Html -> Html
header = Parent "header"


export
hgroup : List Attribute -> List Html -> Html
hgroup = Parent "hgroup"


export
hr : List Attribute -> Html
hr = Leaf "hr"


export
html : List Attribute -> List Html -> Html
html = Parent "html"


export
i : List Attribute -> List Html -> Html
i = Parent "i"


export
iframe : List Attribute -> List Html -> Html
iframe = Parent "iframe"


export
img : List Attribute -> Html
img = Leaf "img"


export
input : List Attribute -> Html
input = Leaf "input"


export
ins : List Attribute -> List Html -> Html
ins = Parent "ins"


export
kbd : List Attribute -> List Html -> Html
kbd = Parent "kbd"


export
label : List Attribute -> List Html -> Html
label = Parent "label"


export
legend : List Attribute -> List Html -> Html
legend = Parent "legend"


export
li : List Attribute -> List Html -> Html
li = Parent "li"


export
link : List Attribute -> Html
link = Leaf "link"


export
main : List Attribute -> List Html -> Html
main = Parent "main"


export
map : List Attribute -> List Html -> Html
map = Parent "map"


export
mark : List Attribute -> List Html -> Html
mark = Parent "mark"


export
menu : List Attribute -> List Html -> Html
menu = Parent "menu"


export
meta : List Attribute -> Html
meta = Leaf "meta"


export
meter : List Attribute -> List Html -> Html
meter = Parent "meter"


export
nav : List Attribute -> List Html -> Html
nav = Parent "nav"


export
noscript : List Attribute -> List Html -> Html
noscript = Parent "noscript"


export
object : List Attribute -> List Html -> Html
object = Parent "object"


export
ol : List Attribute -> List Html -> Html
ol = Parent "ol"


export
optgroup : List Attribute -> List Html -> Html
optgroup = Parent "optgroup"


export
option : List Attribute -> List Html -> Html
option = Parent "option"


export
output : List Attribute -> List Html -> Html
output = Parent "output"


export
p : List Attribute -> List Html -> Html
p = Parent "p"


export
picture : List Attribute -> List Html -> Html
picture = Parent "picture"


export
pre : List Attribute -> List Html -> Html
pre = Parent "pre"


export
progress : List Attribute -> List Html -> Html
progress = Parent "progress"


export
q : List Attribute -> List Html -> Html
q = Parent "q"


export
rp : List Attribute -> List Html -> Html
rp = Parent "rp"


export
rt : List Attribute -> List Html -> Html
rt = Parent "rt"


export
ruby : List Attribute -> List Html -> Html
ruby = Parent "ruby"


export
s : List Attribute -> List Html -> Html
s = Parent "s"


export
samp : List Attribute -> List Html -> Html
samp = Parent "samp"


export
script : List Attribute -> List Html -> Html
script = Parent "script"


export
section : List Attribute -> List Html -> Html
section = Parent "section"


export
select : List Attribute -> List Html -> Html
select = Parent "select"


export
slot : List Attribute -> List Html -> Html
slot = Parent "slot"


export
small : List Attribute -> List Html -> Html
small = Parent "small"


export
source : List Attribute -> Html
source = Leaf "source"


export
span : List Attribute -> List Html -> Html
span = Parent "span"


export
strong : List Attribute -> List Html -> Html
strong = Parent "strong"


export
style : List Attribute -> List Html -> Html
style = Parent "style"


export
sub : List Attribute -> List Html -> Html
sub = Parent "sub"


export
summary : List Attribute -> List Html -> Html
summary = Parent "summary"


export
sup : List Attribute -> List Html -> Html
sup = Parent "sup"


export
table : List Attribute -> List Html -> Html
table = Parent "table"


export
tbody : List Attribute -> List Html -> Html
tbody = Parent "tbody"


export
td : List Attribute -> List Html -> Html
td = Parent "td"


export
template : List Attribute -> List Html -> Html
template = Parent "template"


export
textarea : List Attribute -> List Html -> Html
textarea = Parent "textarea"


export
tfoot : List Attribute -> List Html -> Html
tfoot = Parent "tfoot"


export
th : List Attribute -> List Html -> Html
th = Parent "th"


export
thead : List Attribute -> List Html -> Html
thead = Parent "thead"


export
time : List Attribute -> List Html -> Html
time = Parent "time"


export
title : List Attribute -> List Html -> Html
title = Parent "title"


export
tr : List Attribute -> List Html -> Html
tr = Parent "tr"


export
track : List Attribute -> Html
track = Leaf "track"


export
u : List Attribute -> List Html -> Html
u = Parent "u"


export
ul : List Attribute -> List Html -> Html
ul = Parent "ul"


export
var : List Attribute -> List Html -> Html
var = Parent "var"


export
video : List Attribute -> List Html -> Html
video = Parent "video"


export
wbr : List Attribute -> Html
wbr = Leaf "wbr"


export
text : String -> Html
text = Text
