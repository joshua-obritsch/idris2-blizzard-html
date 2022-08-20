Blizzard Html
=============

Blizzard Html is a library for Idris2 that defines a set of types and functions responsible for generating and using HTML elements; and aims to be compliant with the HTML living standard.

Structure
---------

The library consists of two modules:
1. `Html`
2. `Html.Attributes`.

Html
----

The `Html` module contains a set of functions that generate the `Html` data type and a method `toString` that converts the `Html` to a minified, textual representation of HTML markup.

Example using `aside`:

```idris
import Html


example : Html
example =
    aside []
        [ h4 []
            [ text "House of the Dragon" ]
        , p []
            [ text "House of the Dragon is a prequal to Game of Thrones." ]
        ]
```

```
> toString example
"<aside><h4>House of the Dragon</h4><p>House of the Dragon is a prequal to Game of Thrones.</p></aside>"
```

Example using `body`:

```idris
import Html


example : Html
example =
    body []
        [ h1 []
            [ text "An Introduction to Idris2" ]
        , p []
            [ text "Idris2 is a type-driven functional programming language." ]
        ]
```

```
> toString example
"<body><h1>An Introduction to Idris2</h1><p>Idris2 is a type-driven functional programming language.</p></body>"
```

Html.Attributes
---------------

The `Html.Attributes` module contains a set of functions that generate the `Attribute` data type and a method `toString` that converts the `Attribute` to a minified, textual representation of an HTML attribute.

Example using `type_`:

```idris
import Html
import Html.Attributes


example : Html
example =
    button
        [ type_ "submit" ]
        [ text  "Log in" ]
```

```
> toString example
"<button type="submit">Log in</button>"
```

Example using `height` and `width`:

```idris
import Html
import Html.Attributes


example : Html
example =
    canvas
        [ height "500"
        , width  "500"
        ]
        [ text "The canvas tag is not supported by your browser." ]
```

```
> toString example
"<canvas height="500" width="500">The canvas tag is not supported by your browser.</canvas>"
```
