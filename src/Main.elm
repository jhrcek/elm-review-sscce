module Main exposing (main)

import A as X
import B as X
import Html exposing (Html)


main : Html msg
main =
    Html.text (X.a ++ X.b)
