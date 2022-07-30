module Main


import Html.Internal


public export
doctype : List Html -> Html
doctype = Root


public export
a : List Attribute -> List Html -> Html
a = Parent "a"


public export
abbr : List Attribute -> List Html -> Html
abbr = Parent "abbr"


public export
address : List Attribute -> List Html -> Html
address = Parent "address"


public export
area : List Attribute -> Html
area = Leaf "area"


public export
article : List Attribute -> List Html -> Html
article = Parent "article"


public export
aside : List Attribute -> List Html -> Html
aside = Parent "aside"


public export
audio : List Attribute -> List Html -> Html
audio = Parent "audio"


public export
b : List Attribute -> List Html -> Html
b = Parent "b"


public export
base : List Attribute -> Html
base = Leaf "base"


public export
bdi : List Attribute -> List Html -> Html
bdi = Parent "bdi"


public export
bdo : List Attribute -> List Html -> Html
bdo = Parent "bdo"


public export
blockquote : List Attribute -> List Html -> Html
blockquote = Parent "blockquote"


public export
body : List Attribute -> List Html -> Html
body = Parent "body"


public export
br : List Attribute -> Html
br = Leaf "br"


public export
button : List Attribute -> List Html -> Html
button = Parent "button"


public export
canvas : List Attribute -> List Html -> Html
canvas = Parent "canvas"


public export
caption : List Attribute -> List Html -> Html
caption = Parent "caption"


public export
cite : List Attribute -> List Html -> Html
cite = Parent "cite"


public export
code : List Attribute -> List Html -> Html
code = Parent "code"


public export
col : List Attribute -> Html
col = Leaf "col"


public export
colgroup : List Attribute -> List Html -> Html
colgroup = Parent "colgroup"


public export
data_ : List Attribute -> List Html -> Html
data_ = Parent "data_"


public export
datalist : List Attribute -> List Html -> Html
datalist = Parent "datalist"


public export
dd : List Attribute -> List Html -> Html
dd = Parent "dd"


public export
del : List Attribute -> List Html -> Html
del = Parent "del"


public export
details : List Attribute -> List Html -> Html
details = Parent "details"


public export
dfn : List Attribute -> List Html -> Html
dfn = Parent "dfn"


public export
dialog : List Attribute -> List Html -> Html
dialog = Parent "dialog"


public export
div : List Attribute -> List Html -> Html
div = Parent "div"


public export
dl : List Attribute -> List Html -> Html
dl = Parent "dl"


public export
dt : List Attribute -> List Html -> Html
dt = Parent "dt"


public export
em : List Attribute -> List Html -> Html
em = Parent "em"


public export
embed : List Attribute -> Html
embed = Leaf "embed"


public export
fieldset : List Attribute -> List Html -> Html
fieldset = Parent "fieldset"


public export
figcaption : List Attribute -> List Html -> Html
figcaption = Parent "figcaption"


public export
figure : List Attribute -> List Html -> Html
figure = Parent "figure"


public export
footer : List Attribute -> List Html -> Html
footer = Parent "footer"


public export
form : List Attribute -> List Html -> Html
form = Parent "form"


public export
h1 : List Attribute -> List Html -> Html
h1 = Parent "h1"


public export
h2 : List Attribute -> List Html -> Html
h2 = Parent "h2"


public export
h3 : List Attribute -> List Html -> Html
h3 = Parent "h3"


public export
h4 : List Attribute -> List Html -> Html
h4 = Parent "h4"


public export
h5 : List Attribute -> List Html -> Html
h5 = Parent "h5"


public export
h6 : List Attribute -> List Html -> Html
h6 = Parent "h6"


public export
head : List Attribute -> List Html -> Html
head = Parent "head"


public export
header : List Attribute -> List Html -> Html
header = Parent "header"


public export
hgroup : List Attribute -> List Html -> Html
hgroup = Parent "hgroup"


public export
hr : List Attribute -> Html
hr = Leaf "hr"


public export
html : List Attribute -> List Html -> Html
html = Parent "html"


public export
i : List Attribute -> List Html -> Html
i = Parent "i"


public export
iframe : List Attribute -> List Html -> Html
iframe = Parent "iframe"


public export
img : List Attribute -> Html
img = Leaf "img"


public export
input : List Attribute -> Html
input = Leaf "input"


public export
ins : List Attribute -> List Html -> Html
ins = Parent "ins"


public export
kbd : List Attribute -> List Html -> Html
kbd = Parent "kbd"


public export
label : List Attribute -> List Html -> Html
label = Parent "label"


public export
legend : List Attribute -> List Html -> Html
legend = Parent "legend"


public export
li : List Attribute -> List Html -> Html
li = Parent "li"


public export
link : List Attribute -> Html
link = Leaf "link"


public export
main : List Attribute -> List Html -> Html
main = Parent "main"


public export
map : List Attribute -> List Html -> Html
map = Parent "map"


public export
mark : List Attribute -> List Html -> Html
mark = Parent "mark"


public export
menu : List Attribute -> List Html -> Html
menu = Parent "menu"


public export
meta : List Attribute -> Html
meta = Leaf "meta"


public export
meter : List Attribute -> List Html -> Html
meter = Parent "meter"


public export
nav : List Attribute -> List Html -> Html
nav = Parent "nav"


public export
noscript : List Attribute -> List Html -> Html
noscript = Parent "noscript"


public export
object : List Attribute -> List Html -> Html
object = Parent "object"


public export
ol : List Attribute -> List Html -> Html
ol = Parent "ol"


public export
optgroup : List Attribute -> List Html -> Html
optgroup = Parent "optgroup"


public export
option : List Attribute -> List Html -> Html
option = Parent "option"


public export
output : List Attribute -> List Html -> Html
output = Parent "output"


public export
p : List Attribute -> List Html -> Html
p = Parent "p"


public export
picture : List Attribute -> List Html -> Html
picture = Parent "picture"


public export
pre : List Attribute -> List Html -> Html
pre = Parent "pre"


public export
progress : List Attribute -> List Html -> Html
progress = Parent "progress"


public export
q : List Attribute -> List Html -> Html
q = Parent "q"


public export
rp : List Attribute -> List Html -> Html
rp = Parent "rp"


public export
rt : List Attribute -> List Html -> Html
rt = Parent "rt"


public export
ruby : List Attribute -> List Html -> Html
ruby = Parent "ruby"


public export
s : List Attribute -> List Html -> Html
s = Parent "s"


public export
samp : List Attribute -> List Html -> Html
samp = Parent "samp"


public export
script : List Attribute -> List Html -> Html
script = Parent "script"


public export
section : List Attribute -> List Html -> Html
section = Parent "section"


public export
select : List Attribute -> List Html -> Html
select = Parent "select"


public export
slot : List Attribute -> List Html -> Html
slot = Parent "slot"


public export
small : List Attribute -> List Html -> Html
small = Parent "small"


public export
source : List Attribute -> Html
source = Leaf "source"


public export
span : List Attribute -> List Html -> Html
span = Parent "span"


public export
strong : List Attribute -> List Html -> Html
strong = Parent "strong"


public export
style : List Attribute -> List Html -> Html
style = Parent "style"


public export
sub : List Attribute -> List Html -> Html
sub = Parent "sub"


public export
summary : List Attribute -> List Html -> Html
summary = Parent "summary"


public export
sup : List Attribute -> List Html -> Html
sup = Parent "sup"


public export
table : List Attribute -> List Html -> Html
table = Parent "table"


public export
tbody : List Attribute -> List Html -> Html
tbody = Parent "tbody"


public export
td : List Attribute -> List Html -> Html
td = Parent "td"


public export
template : List Attribute -> List Html -> Html
template = Parent "template"


public export
textarea : List Attribute -> List Html -> Html
textarea = Parent "textarea"


public export
tfoot : List Attribute -> List Html -> Html
tfoot = Parent "tfoot"


public export
th : List Attribute -> List Html -> Html
th = Parent "th"


public export
thead : List Attribute -> List Html -> Html
thead = Parent "thead"


public export
time : List Attribute -> List Html -> Html
time = Parent "time"


public export
title : List Attribute -> List Html -> Html
title = Parent "title"


public export
tr : List Attribute -> List Html -> Html
tr = Parent "tr"


public export
track : List Attribute -> Html
track = Leaf "track"


public export
u : List Attribute -> List Html -> Html
u = Parent "u"


public export
ul : List Attribute -> List Html -> Html
ul = Parent "ul"


public export
var : List Attribute -> List Html -> Html
var = Parent "var"


public export
video : List Attribute -> List Html -> Html
video = Parent "f"


public export
wbr : List Attribute -> Html
wbr = Leaf "wbr"


public export
text : String -> Html
text = Text
