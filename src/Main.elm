module Main exposing (main)

import B
    exposing
        ( One
        , Two(..)
        )
import Html exposing (Html)


main : Html msg
main =
    case B.Two of
        B.Two ->
            Html.text "Two is used, yet it's underlined in the error report"
