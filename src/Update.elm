module Update exposing (update)

import Msgs exposing (Msg(..))
import Models exposing (Model)
import Util exposing (..)

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    Key k ->
      case k of
        37 ->
          ( { model | idx = (model.idx - 1) . inRange model.pages }, Cmd.none )
        39 ->
          ( { model | idx = (model.idx + 1) . inRange model.pages }, Cmd.none )
        _ ->
          ( model, Cmd.none )

inRange l i =
  if i >= 0 then clamp 1 (List.length l) i else clamp -(List.length l) -1 i