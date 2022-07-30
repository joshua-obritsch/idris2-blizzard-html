module Html.Internal


export
interface ToString a where
    toString : a -> String


public export
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


public export
data Html
    = Leaf   String (List Attribute)
    | Parent String (List Attribute) (List Html)
    | Root                           (List Html)
    | Text   String


mutual
    export
    ToString Html where
        toString (Leaf   tag []            ) = "<\{tag}>"
        toString (Leaf   tag attrs         ) = "<\{tag}\{toString attrs}>"
        toString (Parent tag []    []      ) = "<\{tag}></\{tag}>"
        toString (Parent tag attrs []      ) = "<\{tag}\{toString attrs}></\{tag}>"
        toString (Parent tag []    children) = "<\{tag}>\{toString children}</\{tag}>"
        toString (Parent tag attrs children) = "<\{tag}\{toString attrs}>\{toString children}</\{tag}>"
        toString (Root             []      ) = "<!DOCTYPE html>"
        toString (Root             children) = "<!DOCTYPE html>\{toString children}"
        toString (Text   txt               ) = txt


    export
    ToString (List Html) where
        toString = concat . map toString
