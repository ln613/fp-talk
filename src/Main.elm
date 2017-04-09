module Main exposing (..)

import Html exposing (Html, div, text, program)
import Msgs exposing (..)
import Models exposing (Model, initialModel)
import Update exposing (update)
import View exposing (view)
import Keyboard exposing (..)

init : ( Model, Cmd Msg )
init =
  ( initialModel, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
  ups Key


main : Program Never Model Msg
main =
  program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }