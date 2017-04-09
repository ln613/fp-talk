module HtmlHelper exposing (..)

import Json.Decode as Json
import Html exposing (Attribute)
import Html.Events exposing (on, keyCode)

onC : msg -> Attribute msg
onC m =
  on "click" (Json.succeed m)