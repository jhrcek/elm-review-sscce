module Main exposing (main)

import Browser
import Html
import Other exposing (Msg(..))
import Task


main : Program () Model Msg
main =
    Browser.element
        { init = \_ -> ( (), Cmd.none )
        , view = \_ -> Html.text ""
        , update = update
        , subscriptions = \_ -> Sub.none
        }


type
    Msg
    -- ISSUE : This one is being reported as unused
    -- The trouble maker is the NoOp constructor we're getting from "import Other exposing (Msg(..))"
    = NoOp


type alias Config =
    { doIt : Msg
    }


type alias Model =
    ()


update : Msg -> Model -> ( Model, Cmd Msg )
update _ model =
    ( model
      -- Although it is used here
    , Task.succeed NoOp
        |> Task.perform identity
    )
