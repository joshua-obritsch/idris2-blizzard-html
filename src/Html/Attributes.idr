module Html.Attributes


public export
interface ToString a where
    toString : a -> String


export
data Attribute
    = BoolAttr String Bool
    | TextAttr String String


export
ToString Attribute where
    toString (BoolAttr key False) = ""
    toString (BoolAttr key True ) = " \{key}"
    toString (TextAttr key ""   ) = ""
    toString (TextAttr key value) = " \{key}=\"\{value}\""


export
ToString (List Attribute) where
    toString = concat . map toString


export
fullscreen : Bool -> Attribute
fullscreen = BoolAttr "fullscreen"
